import type {SidebarsConfig} from '@docusaurus/plugin-content-docs';

// This runs in Node.js - Don't use client-side code here (browser APIs, JSX...)

/**
 * Creating a sidebar enables you to:
 - create an ordered group of docs
 - render a sidebar for each doc of that group
 - provide next/previous navigation

 The sidebars can be generated from the filesystem, or explicitly defined here.

 Create as many sidebars as you want.
 */
const sidebars: SidebarsConfig = {
  // Main documentation sidebar - structured for Media Processing Pipeline
  // Phase 1: Basic structure with existing content, prepared for Phase 2 migration
  docs: [
    'intro',
    {
      type: 'category',
      label: '📚 Documentation Examples',
      items: [
        'tutorial-basics/create-a-document',
        'tutorial-basics/create-a-page',
        'tutorial-basics/markdown-features',
        'tutorial-basics/congratulations',
      ],
    },
    {
      type: 'category',
      label: '⚙️ Advanced Features',
      items: [
        'tutorial-extras/manage-docs-versions',
        'tutorial-extras/translate-your-site',
      ],
    },
  ],

  // PHASE 2 PREPARATION: Future sidebar structure for content migration
  // The following structure will be activated when content is migrated from /docs/
  /*
  docs: [
    'intro',
    {
      type: 'category',
      label: '🚀 Quick Start',
      items: [
        'quick-start/installation',
        'quick-start/first-photos',
      ],
    },
    {
      type: 'category',
      label: '🏗️ Architecture',
      items: [
        'architecture/overview',
        'architecture/enrichment-flow',
        'architecture/error-system',
        'architecture/logging-system',
      ],
    },
    {
      type: 'category',
      label: '💾 Data Layer',
      items: [
        'data-layer/schema/design',
        'data-layer/setup/installation',
        'data-layer/etl/recreation-gov',
      ],
    },
    {
      type: 'category',
      label: '🔧 Processors',
      items: [
        'processors/image-processing',
        'processors/video-processing',
        'processors/heritage-photos',
      ],
    },
    {
      type: 'category',
      label: '📋 Workflows',
      items: [
        'workflows/photo-organization',
        'workflows/heritage-processing',
        'workflows/scanning-workflow',
      ],
    },
    {
      type: 'category',
      label: '🛠️ CLI',
      items: [
        'cli/pipeline-cli',
        'cli/mmp-commands',
        'cli/media-file-inspector',
      ],
    },
    {
      type: 'category',
      label: '📖 API Reference',
      items: [
        'api/photo-browser',
        'api/endpoints',
      ],
    },
    {
      type: 'category',
      label: '🧪 Testing',
      items: [
        'testing/overview',
        'testing/coverage',
      ],
    },
  ],
  */
};

export default sidebars;
