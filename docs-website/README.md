# Media Processing Pipeline Documentation Website

## Overview

This is the official documentation website for the Media Processing Pipeline project, built with [Docusaurus 3.8.1](https://docusaurus.io/). The website provides comprehensive documentation for all aspects of the media processing system, including setup guides, API references, and technical architecture details.

## Quick Start

### Prerequisites

- **Node.js:** Version 18.0 or higher
- **npm:** Version 8.0 or higher
- **Git:** For version control and deployment

### Development Setup

1. **Navigate to documentation directory:**
   ```bash
   cd docs-website
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Start development server:**
   ```bash
   npm start
   ```
   
   The site will be available at http://localhost:3000 with hot reloading enabled.

## Available Scripts

### Development Commands

- **`npm start`** - Start development server on port 3000
- **`npm run build`** - Build static site for production
- **`npm run serve`** - Serve built site locally for testing
- **`npm run clear`** - Clear Docusaurus cache

### Quality Assurance

- **`npm run lint`** - Run ESLint checks
- **`npm run lint:fix`** - Auto-fix ESLint issues
- **`npm run typecheck`** - Run TypeScript type checking

### Deployment

- **`npm run deploy`** - Deploy to GitHub Pages (requires GitHub setup)

## Project Structure

```
docs-website/
├── docs/                    # Main documentation content
│   ├── intro.md            # Homepage introduction
│   ├── getting-started/    # Setup and installation guides
│   ├── cli/               # Command-line interface docs
│   ├── processing/        # Photo and video processing
│   ├── geographic/        # GPS and location features
│   ├── database/          # Database architecture
│   ├── development/       # Developer guides
│   ├── photo-management/  # Organization and deduplication
│   ├── scanning/         # Physical photo digitization
│   ├── testing/          # Testing strategies
│   └── miscellaneous/    # API references and utilities
├── blog/                  # Project updates and announcements
├── src/                   # Custom React components and CSS
├── static/               # Static assets (images, files)
├── docusaurus.config.ts  # Main configuration
├── sidebars.ts          # Navigation structure
└── package.json         # Dependencies and scripts
```

## Content Management

### Adding Documentation

1. **Create markdown files** in the appropriate `docs/` subdirectory
2. **Update sidebars.ts** to include new documents in navigation
3. **Follow naming conventions:**
   - Use kebab-case for filenames: `error-handling-guide.md`
   - Start with descriptive frontmatter:
     ```yaml
     ---
     title: Error Handling Guide
     description: Comprehensive error handling patterns
     ---
     ```

### Documentation Categories

The documentation is organized into logical categories:

- **Getting Started:** Installation, quick start, basic usage
- **CLI Reference:** Command-line interface documentation
- **Processing:** Photo and video analysis features
- **Geographic:** GPS enrichment and location services
- **Database:** Schema, migrations, and data management
- **Development:** Architecture, testing, and contribution guides
- **Photo Management:** Organization, deduplication, and workflows
- **Scanning:** Physical photo digitization and processing
- **Testing:** Test strategies and coverage reports
- **Miscellaneous:** API references, utilities, and advanced topics

### Blog Posts

Add project updates to the `blog/` directory with frontmatter:

```yaml
---
title: Feature Release v2.1
authors: [stephen]
tags: [release, features]
date: 2025-01-15
---
```

## Configuration

### Site Configuration

Edit `docusaurus.config.ts` for:

- **Site metadata:** Title, tagline, description
- **Deployment settings:** GitHub Pages configuration
- **Navigation:** Header and footer links
- **Search integration:** Algolia configuration (when enabled)
- **Theming:** Color schemes and custom CSS

### Navigation Structure

Modify `sidebars.ts` to control:

- **Document hierarchy:** Category organization
- **Menu structure:** Navigation flow
- **Link relationships:** Cross-references and related docs

## Deployment

### GitHub Pages Setup

The site is configured for GitHub Pages deployment:

1. **Repository settings:**
   - Organization: `stephen`
   - Project: `media-processing-pipeline`
   - Base URL: `/media-processing-pipeline/`

2. **Deployment process:**
   ```bash
   npm run build
   npm run deploy
   ```

3. **Automatic deployment:**
   - Builds static files to `build/` directory
   - Pushes to `gh-pages` branch
   - GitHub Pages serves from that branch

### Custom Domain (Optional)

To use a custom domain:

1. **Add CNAME file** to `static/` directory
2. **Update `docusaurus.config.ts`:**
   ```typescript
   url: 'https://yourdomain.com',
   baseUrl: '/',
   ```

## Development Workflow

### Content Development

1. **Start development server:**
   ```bash
   npm start
   ```

2. **Edit documentation** in `docs/` directory
3. **Preview changes** at http://localhost:3000
4. **Commit and push** changes to main branch

### Quality Checks

Before publishing, run quality checks:

```bash
# Type checking
npm run typecheck

# Linting
npm run lint

# Build verification
npm run build

# Local testing
npm run serve
```

### Integration with Main Project

The documentation website integrates with the main project through:

- **npm scripts** in main `package.json` for unified workflow
- **Automated content** from main project `/docs/` directory
- **Version synchronization** with project releases

## Search Functionality

### Local Search

Docusaurus provides built-in local search for development and smaller sites.

### Algolia Integration (Optional)

For production sites, integrate Algolia search:

1. **Create Algolia account** and index
2. **Update configuration** in `docusaurus.config.ts`:
   ```typescript
   algolia: {
     appId: 'YOUR_APP_ID',
     apiKey: 'YOUR_API_KEY',
     indexName: 'media_processing_pipeline',
   }
   ```

## Performance Optimization

### Build Optimization

- **Static site generation:** Pre-rendered HTML for fast loading
- **Code splitting:** Automatic JavaScript bundling
- **Asset optimization:** Compressed images and CSS
- **SEO optimization:** Meta tags and structured data

### Content Guidelines

- **Optimize images:** Use WebP format when possible
- **Minimize bundle size:** Avoid large embedded assets
- **Structure content:** Use clear headings and navigation
- **Cross-link documents:** Improve discoverability

## Troubleshooting

### Common Issues

1. **Port conflicts:**
   ```bash
   # Use different port
   npm start -- --port 3001
   ```

2. **Cache issues:**
   ```bash
   npm run clear
   npm start
   ```

3. **Build failures:**
   ```bash
   # Check TypeScript errors
   npm run typecheck
   
   # Check linting issues
   npm run lint
   ```

4. **Deployment failures:**
   - Verify GitHub repository settings
   - Check deployment branch configuration
   - Ensure proper permissions for GitHub Pages

### Getting Help

- **Docusaurus Documentation:** https://docusaurus.io/docs
- **Project Issues:** GitHub repository issues
- **Build Logs:** Check console output for specific errors

## Maintenance

### Regular Tasks

1. **Update dependencies:**
   ```bash
   npm update
   npm audit fix
   ```

2. **Review content accuracy:**
   - Verify code examples work with current version
   - Update screenshots and UI references
   - Check external links for validity

3. **Monitor performance:**
   - Build time optimization
   - Bundle size analysis
   - Search functionality testing

### Version Management

- **Docusaurus updates:** Follow upgrade guides carefully
- **Content versioning:** Tag major documentation releases
- **Backup strategy:** Regular repository backups

## Architecture Notes

### Technology Stack

- **Framework:** Docusaurus 3.8.1 (React-based)
- **Language:** TypeScript for configuration
- **Styling:** CSS modules with custom themes
- **Deployment:** GitHub Pages with automated builds
- **Search:** Local search with optional Algolia integration

### Design Principles

- **Content-first:** Focus on clear, accurate documentation
- **Responsive design:** Mobile-friendly interface
- **Fast loading:** Optimized static site generation
- **Accessible:** WCAG compliance for screen readers
- **SEO-optimized:** Structured data and meta tags

This documentation website serves as the central hub for all Media Processing Pipeline documentation, providing both users and developers with comprehensive, searchable, and up-to-date information about the system.
