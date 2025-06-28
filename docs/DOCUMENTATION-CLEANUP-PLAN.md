# Documentation Cleanup Plan

## Current State Analysis

The `/docs` folder contains 35 markdown files totaling ~300KB of documentation. After careful analysis, I've identified several categories of documents that need attention.

## Issues Found

### 1. References to Deleted Features
- **photo-metadata-browser-phase0.md** - References `src/photo-browser/PhotoBrowserGenerator.ts` which no longer exists
- **photo-metadata-browser-plan.md** - Detailed plan for deleted photo browser feature
- **phase-completion-overview.md** - Claims Phase 6 (Photo Browser) is complete, but code was removed

### 2. Completed Planning Documents
These documents describe work that has been successfully completed:
- initial-organization-plan.md
- post-deduplication-plan.md
- google-takeout-stragglers-completion.md
- provider-investigation-plan.md
- contextual-provider-strategy.md
- sidecar-deduplication-strategy.md

### 3. Redundant/Overlapping Documents
Multiple documents covering similar topics:
- **Organization strategies** (4 files): initial-organization-plan, quick-start-organization, photo-organization-strategy, large-collection-strategy
- **Google Takeout completion** (2 files): google-takeout-completion-summary, google-takeout-stragglers-completion

## Proposed Reorganization

### 1. Create New Structure
```
docs/
├── README.md (main entry point)
├── ACCOMPLISHMENTS.md (new - comprehensive achievement record)
├── active/
│   ├── technical/
│   │   ├── architecture/
│   │   │   ├── error-system.md
│   │   │   ├── logging-system.md
│   │   │   ├── filesystem-service.md
│   │   │   ├── path-system.md
│   │   │   └── enrichment-flow.md
│   │   ├── features/
│   │   │   ├── cli.md
│   │   │   ├── geolocation-system.md
│   │   │   ├── mcp-semantic-search.md
│   │   │   └── recreation-gov-etl.md
│   │   └── development/
│   │       ├── getting-started.md
│   │       ├── linting.md
│   │       └── testing/
│   ├── planning/
│   │   ├── future-vision-and-opportunities.md
│   │   ├── heritage-photo-enrichment.md
│   │   ├── nas-migration-plan.md
│   │   └── mcp-dual-context-plan.md
│   └── results/
│       ├── phase-completion-overview.md (updated)
│       ├── enrichment-results-final.md
│       ├── deduplication-report.md
│       └── hardware-specs.md
└── archive/
    ├── completed-plans/
    │   ├── initial-organization-plan.md
    │   ├── post-deduplication-plan.md
    │   ├── google-takeout-completion.md (merged)
    │   ├── provider-investigation-plan.md
    │   ├── contextual-provider-strategy.md
    │   └── sidecar-deduplication-strategy.md
    ├── deprecated/
    │   ├── photo-metadata-browser-phase0.md
    │   └── photo-metadata-browser-plan.md
    └── historical/
        └── file-structure-analysis.md
```

### 2. Create ACCOMPLISHMENTS.md
Consolidate all achievements into a single, comprehensive document that includes:
- Complete timeline of phases
- Technical achievements
- Performance metrics
- Storage optimization results
- Processing statistics
- Lessons learned

### 3. Update Existing Documents

#### Fix References to Deleted Features
- **phase-completion-overview.md**: Update Phase 6 to reflect that photo browser was moved to separate project
- Remove references to deleted PhotoBrowserGenerator files

#### Merge Redundant Documents
- Combine Google Takeout completion docs into single comprehensive summary
- Create unified "Photo Organization Strategy" from the 4 overlapping docs

#### Add Status Headers
Add clear status headers to all documents:
```markdown
**Status:** ✅ COMPLETE | 🔄 IN PROGRESS | 📋 PLANNING | ⚠️ DEPRECATED
**Last Updated:** YYYY-MM-DD
**Applies To:** Version/Phase
```

### 4. Create Index Files

#### docs/README.md
Main documentation index with:
- Project overview
- Quick links to key documents
- Status of each major component
- Getting started guide

#### docs/active/README.md
Index of all active documentation organized by category

#### docs/archive/README.md
Index of archived documents with completion dates and brief descriptions

## Implementation Steps

### Phase 1: Immediate Fixes (High Priority)
1. Update phase-completion-overview.md to correct photo browser status
2. Create ACCOMPLISHMENTS.md from existing achievement data
3. Mark deprecated photo browser docs with clear warnings

### Phase 2: Reorganization (Medium Priority)
1. Create new directory structure
2. Move documents to appropriate locations
3. Add status headers to all documents
4. Create index files

### Phase 3: Content Consolidation (Lower Priority)
1. Merge redundant Google Takeout docs
2. Consolidate organization strategy documents
3. Update cross-references between documents

## Benefits of This Approach

1. **Clear separation** between active docs and historical records
2. **Easy navigation** with logical categorization
3. **Preserved history** without cluttering active documentation
4. **Single source of truth** for achievements (ACCOMPLISHMENTS.md)
5. **Better discoverability** with comprehensive indexes
6. **Reduced redundancy** through document consolidation

## Next Steps

1. Review and approve this plan
2. Create ACCOMPLISHMENTS.md as the first step
3. Fix critical issues (photo browser references)
4. Proceed with reorganization in phases

This approach maintains all valuable documentation while making it much easier to find relevant, current information.