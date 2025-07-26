# Documentation Registry - SINGLE SOURCE OF TRUTH

**Purpose:** Prevent duplicate documentation creation  
**Rule:** Check this registry BEFORE creating ANY new documentation  
**Last Updated:** 2025-07-23

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

### 📊 Data & Processing
- **Topic:** Database Schema Design
  - **Primary Doc:** `/docs/database-schema-design.md`
  - **Status:** Complete - Normalized relational design with foreign keys
  - **Keywords:** database, schema, MySQL, normalized, relational
  - **Owner:** Stable - schema frozen
  - **Last Updated:** 2024-12-28

- **Topic:** Database Setup & Migration
  - **Primary Doc:** `/docs/database-setup.md`
  - **Status:** Complete - Installation and migration procedures
  - **Keywords:** database setup, migration, MySQL, installation
  - **Owner:** Stable - no regular updates needed
  - **Last Updated:** 2024-12-28

- **Topic:** Metadata Storage Architecture
  - **Primary Doc:** `/docs/metadata-storage-architecture.md`
  - **Status:** Complete - JSON sidecar files vs database storage analysis
  - **Keywords:** metadata storage, JSON sidecars, database storage, architecture
  - **Owner:** Stable - architecture decisions finalized
  - **Last Updated:** 2024-12-24

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
  - **Primary Doc:** `/docs/normalized-location-architecture.md`
  - **Status:** Complete - Foreign key relationships for geographic data
  - **Keywords:** location normalization, geographic database, foreign keys
  - **Owner:** Stable - architecture finalized
  - **Last Updated:** 2024-12-24

- **Topic:** Recreation.gov Data Integration
  - **Primary Doc:** `/docs/recreation-gov-etl.md`
  - **Status:** Complete - Facility data extraction and loading
  - **Keywords:** Recreation.gov, ETL, facility data, landmarks, camping
  - **Owner:** Stable - data loaded
  - **Last Updated:** 2024-12-24

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

### 🤖 Claude Orchestration System
- **Topic:** Multi-Claude Team Coordination
  - **Primary Doc:** `/docs/architecture/claude-orchestration.md`
  - **Status:** Complete - Phase 3 operational with full documentation
  - **Keywords:** Claude orchestration, multi-agent, team coordination, role specialization, personality system
  - **Owner:** Claude 1 (Architect)
  - **Last Updated:** 2025-07-23

- **Topic:** Centralized Role Configuration Architecture
  - **Primary Doc:** `/docs/architecture/centralized-role-configuration.md`
  - **Status:** Complete - Phase 4 centralized configuration operational
  - **Keywords:** role configuration, centralized config, YAML configuration, orchestration architecture, config-driven system
  - **Owner:** Claude 4 (Chronicler)
  - **Last Updated:** 2025-07-24

- **Topic:** Auto-Cascade Task Chain System
  - **Primary Doc:** `/claude-orchestration/auto-cascade-templates/README.md`
  - **Supporting Docs:** 
    - `/claude-orchestration/auto-cascade-architecture-spec.md` (Architecture specification)
    - `/claude-orchestration/auto-cascade-templates/USAGE-GUIDE.md` (Implementation guide)
    - `/claude-orchestration/auto-cascade-templates/SAFETY-GUIDELINES.md` (Safety procedures)
  - **Template Library:** `/claude-orchestration/auto-cascade-templates/` (3 template files)
  - **Status:** Complete - Phase 4 template library and documentation complete, ready for Phase 5 pilot testing
  - **Keywords:** auto-cascade, controlled identity switching, workflow automation, template library, safety mechanisms, Stephen approval gates
  - **Owner:** Claude 4 (Chronicler) - Phase 4 template creation and documentation
  - **Last Updated:** 2025-07-24

- **Topic:** Claude Role Templates
  - **Primary Doc:** `claude-orchestration/role-templates/` (6 files)
  - **Supporting Config:** `claude-orchestration/role-config.yaml` (centralized role definitions)
  - **Status:** Active - Updated for centralized configuration architecture
  - **Keywords:** Claude roles, templates, specialization, centralized config, role definitions
  - **Owner:** Claude 4 (Chronicler) - updated for Phase 4
  - **Last Updated:** 2025-07-24

- **Topic:** Claude Slash Commands
  - **Primary Doc:** `/docs/cli/slash-commands.md`
  - **Supporting Migration:** `/docs/migration/mail-to-chain-status-migration.md`
  - **Status:** Updated - /mail deprecated, chain-status.sh documented
  - **Keywords:** slash commands, mail deprecation, chain-status, task management, communication migration
  - **Owner:** Claude 4 (Chronicler) - updated for communication system changes
  - **Last Updated:** 2025-07-24

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

- ❌ **CLI Tool Documentation** → Use `/docs/cli/README.md`
- ❌ **Error Handling** → Use `/docs/error-system.md`
- ❌ **Database Documentation** → Use existing database-*.md files
- ❌ **Photo Processing** → Use `/docs/photo-organization-strategy.md`
- ❌ **Heritage Photos** → Use `/docs/heritage-photo-enrichment.md`
- ❌ **GPS/Location** → Use `/docs/geolocation-system.md`
- ❌ **Testing** → Use `/docs/testing/README.md`
- ❌ **Scanning** → Use `/docs/multicrop-scanning-workflow.md`

## Documentation Search Commands

### Check for Existing Documentation
```bash
# Search for topic keywords
grep -r "heritage\|historical" /docs/ --include="*.md"
grep -r "CLI\|command.*line" /docs/ --include="*.md"
grep -r "database\|schema" /docs/ --include="*.md"

# Find all documentation files
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