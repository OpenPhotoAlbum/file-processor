import type {SidebarsConfig} from '@docusaurus/plugin-content-docs';

/**
 * Sidebar configuration for Media Processing Pipeline Documentation
 * 
 * Generated from migrated content structure with 15 categories
 * Auto-generated during Phase 2: Content Migration & Structure
 */
const sidebars: SidebarsConfig = {
  // Main documentation sidebar - auto-generated from REGISTRY.md structure
  docs: [
    "intro",
    {
        "type": "category",
        "label": "Quick Start & User Onboarding",
        "collapsed": false,
        "items": [
            "quick-start/first-photos",
            "quick-start/installation",
            "quick-start/overview",
            "quick-start/workflow"
        ]
    },
    {
        "type": "category",
        "label": "Data Layer Architecture",
        "collapsed": false,
        "items": [
            "data-layer/etl/recreation-gov",
            "data-layer/etl/recreation-gov-legacy",
            "data-layer/schema/design",
            "data-layer/schema/legacy-design",
            "data-layer/schema/location-normalization",
            "data-layer/schema/metadata-storage",
            "data-layer/schema/normalized-location",
            "data-layer/schema/storage-architecture",
            "data-layer/setup/installation",
            "data-layer/setup/legacy-setup"
        ]
    },
    {
        "type": "category",
        "label": "Tutorial - Basics",
        "collapsed": false,
        "items": [
            "tutorial-basics/congratulations",
            "tutorial-basics/create-a-blog-post",
            "tutorial-basics/create-a-document",
            "tutorial-basics/create-a-page",
            "tutorial-basics/deploy-your-site"
        ]
    },
    {
        "type": "category",
        "label": "Claude Orchestration System",
        "collapsed": false,
        "items": [
            "claude-orchestration/development/centralized-configuration",
            "claude-orchestration/overview",
            "claude-orchestration/protocols/slash-commands"
        ]
    },
    {
        "type": "category",
        "label": "Tutorial - Extras",
        "collapsed": false,
        "items": [
            "tutorial-extras/manage-docs-versions",
            "tutorial-extras/translate-your-site"
        ]
    },
    {
        "type": "category",
        "label": "Project Accomplishments",
        "collapsed": false,
        "items": [
            "accomplishments/accomplishments/enrichment-results-final",
            "accomplishments/accomplishments/google-takeout-completion-summary",
            "accomplishments/accomplishments/json-deduplication-complete",
            "accomplishments/accomplishments/phase-completion-overview"
        ]
    },
    {
        "type": "category",
        "label": "Architecture & Design Decisions",
        "collapsed": false,
        "items": [
            "architecture/error-system",
            "architecture/file-structure-analysis",
            "architecture/filesystem-service",
            "architecture/logging-system",
            "architecture/path-system",
            "architecture/recreation-integration",
            "architecture/timezone-handling"
        ]
    },
    {
        "type": "category",
        "label": "Workflows & Procedures",
        "collapsed": false,
        "items": [
            "workflows/scrapbook-treatment"
        ]
    },
    {
        "type": "category",
        "label": "CLI & User Interface",
        "collapsed": false,
        "items": [
            "cli/media-file-inspector",
            "cli/mmp-overview",
            "cli/overview",
            "cli/photo-browser-api",
            "cli/pipeline-cli"
        ]
    },
    {
        "type": "category",
        "label": "Heritage & Historical Processing",
        "collapsed": false,
        "items": [
            "heritage/architecture/archive-logger-system-design",
            "heritage/heritage-photos-overview",
            "heritage/heritage-processing",
            "heritage/live-photo-detection"
        ]
    },
    {
        "type": "category",
        "label": "Geographic & Location Services",
        "collapsed": false,
        "items": [
            "geographic/geolocation-system",
            "geographic/gps-coordinate-corruption-fix"
        ]
    },
    {
        "type": "category",
        "label": "Photo Organization & Management",
        "collapsed": false,
        "items": [
            "photo-management/large-collection-strategy",
            "photo-management/organization-overview",
            "photo-management/organization-workflow"
        ]
    },
    {
        "type": "category",
        "label": "Scanning & Digitization",
        "collapsed": false,
        "items": [
            "scanning/duplicate-detection-system",
            "scanning/scanning-overview",
            "scanning/scanning-workflow"
        ]
    },
    {
        "type": "category",
        "label": "Processing Pipeline",
        "collapsed": false,
        "items": [
            "processing/enrichment-flow",
            "processing/metadata-merge-strategy"
        ]
    },
    {
        "type": "category",
        "label": "Development & Testing",
        "collapsed": false,
        "items": [
            "development/architecture/database-migration-strategy",
            "development/auto-cascade-test-documentation",
            "development/data-layer/setup/migration",
            "development/deployment/README",
            "development/deployment/getting-started",
            "development/deployment/hardware-specs",
            "development/deployment/linting",
            "development/deployment/nas-migration-plan",
            "development/migration/mail-to-chain-status-migration",
            "development/testing-overview",
            "development/testing/reports/auto-cascade-safety-validation-2025-07-24",
            "development/testing/reports/centralized-role-config-validation-2025-07-24",
            "development/testing/sample-coverage-report"
        ]
    }
],
  
  // You can create additional sidebars for different sections if needed
  // For example: 
  // api: ['api/overview', 'api/endpoints'],
  // tutorials: ['tutorials/basic', 'tutorials/advanced'],
};

export default sidebars;
