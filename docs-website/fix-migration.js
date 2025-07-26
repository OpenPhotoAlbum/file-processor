#!/usr/bin/env node

/**
 * Migration Fix Script - Properly categorize files from miscellaneous
 * 
 * Moves files from miscellaneous category to proper categories based on REGISTRY.md analysis
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const docsDir = './docs';

// Proper file mappings based on REGISTRY.md analysis
const fileReorganization = {
  // Quick Start files
  'miscellaneous/quick-start/installation.md': 'quick-start/installation.md',
  'miscellaneous/quick-start/first-photos.md': 'quick-start/first-photos.md',
  'miscellaneous/workflows/quick-start.md': 'quick-start/workflow.md',
  
  // Data Layer Architecture
  'miscellaneous/data-layer/schema/design.md': 'data-layer/schema/design.md',
  'miscellaneous/data-layer/schema/location-normalization.md': 'data-layer/schema/location-normalization.md',
  'miscellaneous/data-layer/schema/storage-architecture.md': 'data-layer/schema/storage-architecture.md',
  'miscellaneous/data-layer/etl/recreation-gov.md': 'data-layer/etl/recreation-gov.md',
  'miscellaneous/data-layer/setup/installation.md': 'data-layer/setup/installation.md',
  'miscellaneous/data-layer/setup/migration.md': 'data-layer/setup/migration.md',
  'miscellaneous/architecture/database-schema-design.md': 'data-layer/schema/legacy-design.md',
  'miscellaneous/architecture/database-setup.md': 'data-layer/setup/legacy-setup.md',
  'miscellaneous/architecture/metadata-storage-architecture.md': 'data-layer/schema/metadata-storage.md',
  'miscellaneous/architecture/normalized-location-architecture.md': 'data-layer/schema/normalized-location.md',
  'miscellaneous/architecture/recreation-gov-etl.md': 'data-layer/etl/recreation-gov-legacy.md',

  // Architecture & Core Systems
  'miscellaneous/architecture/error-system.md': 'architecture/error-system.md',
  'miscellaneous/architecture/logging-system.md': 'architecture/logging-system.md',
  'miscellaneous/architecture/path-system.md': 'architecture/path-system.md',
  'miscellaneous/architecture/filesystem-service.md': 'architecture/filesystem-service.md',
  'miscellaneous/architecture/enrichment-flow.md': 'architecture/enrichment-flow.md',
  'miscellaneous/architecture/metadata-merge-strategy.md': 'architecture/metadata-merge-strategy.md',
  'miscellaneous/architecture/phase3b-recreation-integration.md': 'architecture/recreation-integration.md',
  'miscellaneous/architecture/timezone-handling.md': 'architecture/timezone-handling.md',

  // CLI & User Interface
  'miscellaneous/cli/media-file-inspector.md': 'cli/media-file-inspector.md',
  'miscellaneous/mmp/README.md': 'cli/mmp-overview.md',
  'miscellaneous/pipeline-cli/README.md': 'cli/pipeline-cli.md',
  'miscellaneous/api/photo-browser.md': 'cli/photo-browser-api.md',

  // Geographic & Location Services
  'miscellaneous/architecture/geolocation-system.md': 'geographic/geolocation-system.md',
  'miscellaneous/architecture/gps-coordinate-corruption-fix.md': 'geographic/gps-coordinate-corruption-fix.md',

  // Photo Management & Organization
  'miscellaneous/workflows/photo-organization.md': 'photo-management/organization-workflow.md',
  'miscellaneous/workflows/large-collection-strategy.md': 'photo-management/large-collection-strategy.md',
  'miscellaneous/workflows/organization/README.md': 'photo-management/organization-overview.md',

  // Heritage & Historical Processing
  'miscellaneous/workflows/heritage-processing.md': 'heritage/heritage-processing.md',
  'miscellaneous/workflows/heritage-photos/README.md': 'heritage/heritage-photos-overview.md',
  'miscellaneous/architecture/live-photo-detection.md': 'heritage/live-photo-detection.md',

  // Scanning & Digitization
  'miscellaneous/workflows/scanning/README.md': 'scanning/scanning-overview.md',
  'miscellaneous/workflows/scanning-workflow.md': 'scanning/scanning-workflow.md',
  'miscellaneous/architecture/duplicate-detection-system.md': 'scanning/duplicate-detection-system.md',

  // Processing Pipeline
  'miscellaneous/architecture/enrichment-flow.md': 'processing/enrichment-flow.md',
  'miscellaneous/architecture/metadata-merge-strategy.md': 'processing/metadata-merge-strategy.md',

  // Future Planning
  'miscellaneous/deployment/nas-migration-plan.md': 'future/nas-migration-plan.md',

  // Video Processing
  // (no specific video files found in miscellaneous)

  // Leave in miscellaneous (registry, readme, etc)
  'miscellaneous/README.md': 'miscellaneous/README.md',
  'miscellaneous/REGISTRY.md': 'miscellaneous/REGISTRY.md',
  'miscellaneous/DOCUMENTATION-UPDATE-PROTOCOL.md': 'miscellaneous/DOCUMENTATION-UPDATE-PROTOCOL.md',
  'miscellaneous/MMP-DOCUMENTATION-PRODUCTION-READINESS.md': 'miscellaneous/MMP-DOCUMENTATION-PRODUCTION-READINESS.md',
  'miscellaneous/MMP-DOCUMENTATION-VERIFICATION-COMPLETE-2025-07-23.md': 'miscellaneous/MMP-DOCUMENTATION-VERIFICATION-COMPLETE-2025-07-23.md'
};

function moveFile(sourcePath, targetPath) {
  const fullSourcePath = path.join(docsDir, sourcePath);
  const fullTargetPath = path.join(docsDir, targetPath);
  
  if (!fs.existsSync(fullSourcePath)) {
    console.log(`⚠️  Source not found: ${sourcePath}`);
    return false;
  }
  
  // Create target directory
  const targetDir = path.dirname(fullTargetPath);
  if (!fs.existsSync(targetDir)) {
    fs.mkdirSync(targetDir, { recursive: true });
  }
  
  // Move file
  fs.renameSync(fullSourcePath, fullTargetPath);
  console.log(`✅ Moved: ${sourcePath} → ${targetPath}`);
  return true;
}

function cleanupEmptyDirectories(dirPath) {
  if (!fs.existsSync(dirPath)) return;
  
  const entries = fs.readdirSync(dirPath);
  
  // Recursively clean subdirectories first
  for (const entry of entries) {
    const fullPath = path.join(dirPath, entry);
    if (fs.statSync(fullPath).isDirectory()) {
      cleanupEmptyDirectories(fullPath);
    }
  }
  
  // Check if directory is empty now
  const remaining = fs.readdirSync(dirPath);
  if (remaining.length === 0) {
    fs.rmdirSync(dirPath);
    console.log(`🗑️  Removed empty directory: ${path.relative(docsDir, dirPath)}`);
  }
}

function ensureCategoriesExist() {
  const categories = [
    'data-layer/schema',
    'data-layer/setup', 
    'data-layer/etl',
    'geographic',
    'photo-management',
    'processing',
    'future',
    'video'
  ];
  
  for (const category of categories) {
    const categoryPath = path.join(docsDir, category);
    if (!fs.existsSync(categoryPath)) {
      fs.mkdirSync(categoryPath, { recursive: true });
      
      // Create category JSON based on category name
      const categoryInfo = getCategoryInfo(category);
      fs.writeFileSync(
        path.join(categoryPath, '_category_.json'),
        JSON.stringify(categoryInfo, null, 2)
      );
      console.log(`📁 Created category: ${category}`);
    }
  }
}

function getCategoryInfo(categoryPath) {
  const categoryMap = {
    'data-layer': { label: 'Data Layer Architecture', position: 2 },
    'geographic': { label: 'Geographic & Location Services', position: 9 },
    'photo-management': { label: 'Photo Organization & Management', position: 10 },
    'processing': { label: 'Processing Pipeline', position: 12 },
    'future': { label: 'Future Planning & Vision', position: 14 },
    'video': { label: 'Video Processing', position: 15 }
  };
  
  const rootCategory = categoryPath.split('/')[0];
  return categoryMap[rootCategory] || { label: rootCategory, position: 99 };
}

async function main() {
  console.log('🔧 Fixing migration - reorganizing files properly...');
  
  // Ensure all necessary categories exist
  ensureCategoriesExist();
  
  // Move files to proper categories
  let movedCount = 0;
  
  for (const [sourcePath, targetPath] of Object.entries(fileReorganization)) {
    if (moveFile(sourcePath, targetPath)) {
      movedCount++;
    }
  }
  
  // Clean up empty directories
  console.log('\n🧹 Cleaning up empty directories...');
  cleanupEmptyDirectories(path.join(docsDir, 'miscellaneous'));
  
  console.log(`\n✅ Reorganization complete: ${movedCount} files moved`);
  console.log('\nNext steps:');
  console.log('- Run: node generate-sidebar.js (regenerate sidebar)');
  console.log('- Run: npm run build (test compilation)');
}

main().catch(console.error);