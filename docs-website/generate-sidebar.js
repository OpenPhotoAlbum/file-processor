#!/usr/bin/env node

/**
 * Sidebar Generation Script for Phase 2
 * 
 * Generates Docusaurus sidebar configuration from migrated content structure
 * Based on the category structure created during migration
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const docsDir = './docs';

function getAllMarkdownFiles(dir, prefix = '') {
  const files = [];
  const entries = fs.readdirSync(dir, { withFileTypes: true });
  
  for (const entry of entries) {
    if (entry.name.startsWith('_') || entry.name.startsWith('.')) {
      continue; // Skip category files and hidden files
    }
    
    const fullPath = path.join(dir, entry.name);
    const docPath = prefix ? `${prefix}/${entry.name}` : entry.name;
    
    if (entry.isDirectory()) {
      files.push(...getAllMarkdownFiles(fullPath, docPath));
    } else if (entry.isFile() && entry.name.endsWith('.md')) {
      // Remove .md extension for Docusaurus
      files.push(docPath.replace(/\.md$/, ''));
    }
  }
  
  return files.sort();
}

function getCategoryInfo(categoryPath) {
  const categoryJsonPath = path.join(categoryPath, '_category_.json');
  if (fs.existsSync(categoryJsonPath)) {
    return JSON.parse(fs.readFileSync(categoryJsonPath, 'utf8'));
  }
  return null;
}

function generateSidebarStructure() {
  const structure = [];
  
  // Add intro page
  structure.push('intro');
  
  // Get all top-level categories
  const entries = fs.readdirSync(docsDir, { withFileTypes: true });
  const categories = entries
    .filter(entry => entry.isDirectory() && !entry.name.startsWith('_'))
    .map(entry => ({
      name: entry.name,
      info: getCategoryInfo(path.join(docsDir, entry.name)),
      files: getAllMarkdownFiles(path.join(docsDir, entry.name), entry.name)
    }))
    .filter(cat => cat.info) // Only include categories with _category_.json
    .sort((a, b) => (a.info.position || 999) - (b.info.position || 999));
  
  // Add each category
  for (const category of categories) {
    if (category.files.length > 0) {
      structure.push({
        type: 'category',
        label: category.info.label,
        collapsed: false, // Keep categories expanded by default
        items: category.files
      });
    }
  }
  
  return structure;
}

function generateSidebarConfig() {
  const sidebarStructure = generateSidebarStructure();
  
  const config = `import type {SidebarsConfig} from '@docusaurus/plugin-content-docs';

/**
 * Sidebar configuration for Media Processing Pipeline Documentation
 * 
 * Generated from migrated content structure with ${sidebarStructure.length - 1} categories
 * Auto-generated during Phase 2: Content Migration & Structure
 */
const sidebars: SidebarsConfig = {
  // Main documentation sidebar - auto-generated from REGISTRY.md structure
  docs: ${JSON.stringify(sidebarStructure, null, 4)},
  
  // You can create additional sidebars for different sections if needed
  // For example: 
  // api: ['api/overview', 'api/endpoints'],
  // tutorials: ['tutorials/basic', 'tutorials/advanced'],
};

export default sidebars;
`;

  return config;
}

async function main() {
  console.log('🔧 Generating sidebar configuration...');
  
  // Generate sidebar structure
  const sidebarConfig = generateSidebarConfig();
  
  // Write to sidebars.ts
  fs.writeFileSync('./sidebars.ts', sidebarConfig);
  
  console.log('✅ Sidebar configuration generated successfully');
  console.log('📁 Categories and structure:');
  
  // Show structure summary
  const structure = generateSidebarStructure();
  let totalFiles = 0;
  
  for (const item of structure) {
    if (typeof item === 'string') {
      console.log(`📄 ${item}`);
      totalFiles++;
    } else if (item.type === 'category') {
      console.log(`📁 ${item.label} (${item.items.length} files)`);
      totalFiles += item.items.length;
    }
  }
  
  console.log(`\n📊 Total: ${totalFiles} documents organized in ${structure.length - 1} categories`);
  console.log('\nNext steps:');
  console.log('- Run: npm run build (test compilation)');
  console.log('- Run: npm run start (test local server)');
}

main().catch(console.error);