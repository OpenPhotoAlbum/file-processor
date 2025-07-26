#!/usr/bin/env node

/**
 * Content Migration Script for Phase 2: Content Migration & Structure
 * 
 * Migrates all 88 markdown files from /docs/ to /docs-website/docs/
 * Preserves content, adds minimal frontmatter, creates category structure
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Project paths
const sourceDocsDir = '../docs';
const targetDocsDir = './docs';
const registryPath = '../docs/REGISTRY.md';

// Category structure based on REGISTRY.md analysis
const categoryStructure = {
  'quick-start': {
    label: 'Quick Start & User Onboarding',
    position: 1,
    description: 'Get started quickly with installation and first photos'
  },
  'data-layer': {
    label: 'Data Layer Architecture', 
    position: 2,
    description: 'Database design, schema, and ETL pipelines'
  },
  'claude-orchestration': {
    label: 'Claude Orchestration System',
    position: 3,
    description: 'Multi-Claude team coordination and roles'
  },
  'accomplishments': {
    label: 'Project Accomplishments',
    position: 4,
    description: 'Major achievements and milestones'
  },
  'architecture': {
    label: 'Architecture & Design Decisions',
    position: 5,
    description: 'Core system architecture and design patterns'
  },
  'workflows': {
    label: 'Workflows & Procedures',
    position: 6,
    description: 'Operational workflows and procedures'
  },
  'cli': {
    label: 'CLI & User Interface',
    position: 7,
    description: 'Command-line tools and interfaces'
  },
  'heritage': {
    label: 'Heritage & Historical Processing',
    position: 8,
    description: 'Heritage photo processing and historical workflows'
  },
  'geographic': {
    label: 'Geographic & Location Services',
    position: 9,
    description: 'GPS, geolocation, and landmark systems'
  },
  'photo-management': {
    label: 'Photo Organization & Management',
    position: 10,
    description: 'Photo organization strategies and tools'
  },
  'scanning': {
    label: 'Scanning & Digitization',
    position: 11,
    description: 'Photo scanning and digitization workflows'
  },
  'processing': {
    label: 'Processing Pipeline',
    position: 12,
    description: 'Core processing and enrichment pipeline'
  },
  'development': {
    label: 'Development & Testing',
    position: 13,
    description: 'Development tools, testing, and quality gates'
  },
  'future': {
    label: 'Future Planning & Vision',
    position: 14,
    description: 'Future plans, roadmap, and opportunities'
  },
  'video': {
    label: 'Video Processing',
    position: 15,
    description: 'Video analysis and metadata processing'
  }
};

// File mapping based on REGISTRY.md analysis and logical categorization
const fileMapping = {
  // Quick Start & User Onboarding
  'quick-start/README.md': 'quick-start/overview.md',
  'getting-started.md': 'quick-start/getting-started.md',
  'quick-start-organization.md': 'quick-start/organization.md',

  // Data Layer Architecture
  'normalized-location-architecture.md': 'data-layer/schema/location-normalization.md',
  'metadata-storage-architecture.md': 'data-layer/schema/storage-architecture.md',
  'recreation-gov-etl.md': 'data-layer/etl/recreation-gov.md',

  // Claude Orchestration System (path corrected to match actual structure)
  'architecture/claude-orchestration.md': 'claude-orchestration/overview.md',
  'architecture/centralized-role-configuration.md': 'claude-orchestration/development/centralized-configuration.md',
  'cli/slash-commands.md': 'claude-orchestration/protocols/slash-commands.md',

  // Architecture & Design Decisions
  'error-system.md': 'architecture/error-system.md',
  'logging-system.md': 'architecture/logging-system.md',
  'path-system.md': 'architecture/path-system.md',
  'filesystem-service.md': 'architecture/filesystem-service.md',
  'architecture/file-structure-analysis.md': 'architecture/file-structure-analysis.md',

  // Workflows & Procedures
  'workflows/scrapbook-treatment.md': 'workflows/scrapbook-treatment.md',

  // CLI & User Interface
  'cli/README.md': 'cli/overview.md',
  'photo-browser-api.md': 'cli/photo-browser-api.md',

  // Heritage & Historical Processing
  'heritage-photo-enrichment.md': 'heritage/heritage-photo-enrichment.md',
  'live-photo-detection.md': 'heritage/live-photo-detection.md',

  // Geographic & Location Services
  'geolocation-system.md': 'geographic/geolocation-system.md',
  'gps-coordinate-corruption-fix.md': 'geographic/gps-coordinate-corruption-fix.md',

  // Photo Organization & Management
  'photo-organization-strategy.md': 'photo-management/organization-strategy.md',
  'deduplication-report.md': 'photo-management/deduplication-report.md',
  'large-collection-strategy.md': 'photo-management/large-collection-strategy.md',
  'google-takeout-complete-processing.md': 'photo-management/google-takeout-processing.md',

  // Scanning & Digitization
  'multicrop-scanning-workflow.md': 'scanning/multicrop-scanning-workflow.md',
  'duplicate-detection-system.md': 'scanning/duplicate-detection-system.md',

  // Processing Pipeline
  'enrichment-flow.md': 'processing/enrichment-flow.md',
  'metadata-merge-strategy.md': 'processing/metadata-merge-strategy.md',

  // Development & Testing
  'testing/README.md': 'development/testing-overview.md',
  'linting.md': 'development/linting.md',

  // Future Planning & Vision
  'future-vision-and-opportunities.md': 'future/vision-and-opportunities.md',
  'nas-migration-plan.md': 'future/nas-migration-plan.md',
  'phase-completion-overview.md': 'future/phase-completion-overview.md'
};

function createCategoryFile(categoryKey, categoryInfo) {
  const categoryPath = path.join(targetDocsDir, categoryKey);
  if (!fs.existsSync(categoryPath)) {
    fs.mkdirSync(categoryPath, { recursive: true });
  }

  const categoryJson = {
    label: categoryInfo.label,
    position: categoryInfo.position,
    description: categoryInfo.description
  };

  fs.writeFileSync(
    path.join(categoryPath, '_category_.json'),
    JSON.stringify(categoryJson, null, 2)
  );
}

function generateFrontmatter(filename, content, targetPath) {
  const title = extractTitle(content) || path.basename(filename, '.md');
  const category = path.dirname(targetPath);
  
  return `---
title: ${JSON.stringify(title)}
description: Auto-generated from ${filename}
---

`;
}

function extractTitle(content) {
  const lines = content.split('\n');
  for (const line of lines) {
    if (line.startsWith('# ')) {
      return line.substring(2).trim();
    }
  }
  return null;
}

function migrateFile(sourcePath, targetPath) {
  console.log(`Migrating: ${sourcePath} → ${targetPath}`);
  
  // Read source content
  const content = fs.readFileSync(sourcePath, 'utf8');
  
  // Generate frontmatter
  const frontmatter = generateFrontmatter(path.basename(sourcePath), content, targetPath);
  
  // Write to target with frontmatter
  const targetFullPath = path.join(targetDocsDir, targetPath);
  const targetDir = path.dirname(targetFullPath);
  
  if (!fs.existsSync(targetDir)) {
    fs.mkdirSync(targetDir, { recursive: true });
  }
  
  fs.writeFileSync(targetFullPath, frontmatter + content);
  return targetFullPath;
}

function getAllMarkdownFiles(dir, basePath = '') {
  const files = [];
  const entries = fs.readdirSync(dir, { withFileTypes: true });
  
  for (const entry of entries) {
    const fullPath = path.join(dir, entry.name);
    const relativePath = path.join(basePath, entry.name);
    
    if (entry.isDirectory()) {
      files.push(...getAllMarkdownFiles(fullPath, relativePath));
    } else if (entry.isFile() && entry.name.endsWith('.md')) {
      files.push(relativePath);
    }
  }
  
  return files;
}

function categorizeUnmappedFiles(unmappedFiles) {
  const categorized = {};
  
  for (const file of unmappedFiles) {
    let category = 'miscellaneous';
    
    if (file.includes('test') || file.includes('validation')) {
      category = 'development';
    } else if (file.includes('accomplishment') || file.includes('completion')) {
      category = 'accomplishments';
    } else if (file.includes('archive') || file.includes('historical')) {
      category = 'heritage';
    } else if (file.includes('migration') || file.includes('transform')) {
      category = 'development';
    } else if (file.includes('video')) {
      category = 'video';
    } else if (file.includes('deployment')) {
      category = 'development';
    }
    
    if (!categorized[category]) {
      categorized[category] = [];
    }
    categorized[category].push(file);
  }
  
  return categorized;
}

async function main() {
  console.log('🚀 Starting Phase 2: Content Migration & Structure');
  console.log('================================================');
  
  // Create category directories and files
  console.log('\n1. Creating category structure...');
  for (const [categoryKey, categoryInfo] of Object.entries(categoryStructure)) {
    createCategoryFile(categoryKey, categoryInfo);
    console.log(`✅ Created category: ${categoryInfo.label}`);
  }
  
  // Get all markdown files from source
  console.log('\n2. Discovering all markdown files...');
  const allFiles = getAllMarkdownFiles(sourceDocsDir);
  console.log(`📋 Found ${allFiles.length} markdown files to migrate`);
  
  // Migrate mapped files
  console.log('\n3. Migrating mapped files...');
  let migratedCount = 0;
  const migratedFiles = new Set();
  
  for (const [sourceFile, targetFile] of Object.entries(fileMapping)) {
    const sourcePath = path.join(sourceDocsDir, sourceFile);
    if (fs.existsSync(sourcePath)) {
      migrateFile(sourcePath, targetFile);
      migratedFiles.add(sourceFile);
      migratedCount++;
    } else {
      console.log(`⚠️  Source file not found: ${sourceFile}`);
    }
  }
  
  // Handle unmapped files
  console.log('\n4. Handling unmapped files...');
  const unmappedFiles = allFiles.filter(file => !migratedFiles.has(file));
  const categorizedUnmapped = categorizeUnmappedFiles(unmappedFiles);
  
  for (const [category, files] of Object.entries(categorizedUnmapped)) {
    console.log(`\n📁 ${category} (${files.length} files):`);
    for (const file of files) {
      const targetFile = path.join(category, file);
      migrateFile(path.join(sourceDocsDir, file), targetFile);
      migratedCount++;
      console.log(`   ✅ ${file} → ${targetFile}`);
    }
  }
  
  console.log('\n5. Migration Summary');
  console.log('===================');
  console.log(`✅ Total files migrated: ${migratedCount}`);
  console.log(`✅ Categories created: ${Object.keys(categoryStructure).length}`);
  console.log(`✅ Target directory: ${targetDocsDir}`);
  
  if (migratedCount === 88) {
    console.log('\n🎉 SUCCESS: All 88 files migrated successfully!');
  } else {
    console.log(`\n⚠️  Expected 88 files, migrated ${migratedCount}`);
  }
  
  console.log('\nNext steps:');
  console.log('- Run: npm run build (to test Docusaurus compilation)');
  console.log('- Run: npm run start (to test local development server)');
  console.log('- Update sidebars.ts with generated structure');
}

main().catch(console.error);

export { categoryStructure, fileMapping };