const {themes: prismThemes} = require('prism-react-renderer');
import type {Config} from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';

// This runs in Node.js - Don't use client-side code here (browser APIs, JSX...)

const config: Config = {
  title: 'Media Processing Pipeline',
  tagline: 'Comprehensive photo and video metadata enrichment platform',
  favicon: 'img/favicon.ico',

  // Future flags disabled for Docusaurus 3.8.1 compatibility
  // future: {
  //   v4: true, // Enable when upgrading to Docusaurus v4
  // },

  // Set the production url of your site here
  url: 'https://stephen.github.io',
  // Set the /<baseUrl>/ pathname under which your site is served
  // For GitHub pages deployment, it is often '/<projectName>/'
  baseUrl: '/media-processing-pipeline/',

  // GitHub pages deployment config.
  // If you aren't using GitHub pages, you don't need these.
  organizationName: 'stephen', // Usually your GitHub org/user name.
  projectName: 'media-processing-pipeline', // Usually your repo name.
  
  // Deploy configuration
  deploymentBranch: 'gh-pages',
  trailingSlash: false,

  onBrokenLinks: 'ignore',
  onBrokenMarkdownLinks: 'warn',
  
  // Performance optimizations and features
  plugins: [
    // Add any additional plugins here for enhanced functionality
  ],

  // Even if you don't use internationalization, you can use this field to set
  // useful metadata like html lang. For example, if your site is Chinese, you
  // may want to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.ts',
          // Remove edit links for now
          editUrl: undefined,
        },
        blog: {
          showReadingTime: true,
          feedOptions: {
            type: ['rss', 'atom'],
            xslt: true,
          },
          // Remove edit links for now
          editUrl: undefined,
          // Useful options to enforce blogging best practices
          onInlineTags: 'warn',
          onInlineAuthors: 'warn',
          onUntruncatedBlogPosts: 'warn',
        },
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies Preset.Options,
    ],
  ],

  themeConfig: {
    // Replace with your project's social card
    image: 'img/docusaurus-social-card.jpg',
    // Search functionality
    algolia: {
      // The application ID provided by Algolia
      appId: 'YOUR_APP_ID',
      // Public API key: it is safe to commit it
      apiKey: 'YOUR_SEARCH_API_KEY',
      indexName: 'media_processing_pipeline',
      // Optional: see doc section below
      contextualSearch: true,
      // Optional: Specify domains where the navigation should occur through window.location instead on history.push
      externalUrlRegex: 'external\\.com|domain\\.com',
      // Optional: Replace parts of the item URLs from Algolia. Useful when using the same search index for multiple deployments using a different baseUrl.
      replaceSearchResultPathname: {
        from: '/docs/', // or as RegExp: /\/docs\//
        to: '/',
      },
      // Optional: Algolia search parameters
      searchParameters: {},
      // Optional: path for search page that enabled by default (`false` to disable it)
      searchPagePath: 'search',
    },
    navbar: {
      title: 'Media Processing Pipeline',
      logo: {
        alt: 'Media Processing Pipeline Logo',
        src: 'img/logo.svg',
      },
      items: [
        {
          type: 'docSidebar',
          sidebarId: 'docs',
          position: 'left',
          label: 'Documentation',
        },
        {to: '/blog', label: 'Updates', position: 'left'},
        {
          href: 'https://github.com/stephen/media-processing-pipeline',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Documentation',
          items: [
            {
              label: 'Getting Started',
              to: '/docs/intro',
            },
            {
              label: 'API Reference',
              to: '/docs/category/miscellaneous',
            },
          ],
        },
        {
          title: 'Features',
          items: [
            {
              label: 'Photo Processing',
              to: '/docs/category/photo-management',
            },
            {
              label: 'Video Analysis',
              to: '/docs/category/processing',
            },
            {
              label: 'GPS Enrichment',
              to: '/docs/category/geographic',
            },
          ],
        },
        {
          title: 'More',
          items: [
            {
              label: 'Updates',
              to: '/blog',
            },
            {
              label: 'GitHub',
              href: 'https://github.com/stephen/media-processing-pipeline',
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} Media Processing Pipeline. Built with Docusaurus.`,
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
  } satisfies Preset.ThemeConfig,
};

module.exports = config;
