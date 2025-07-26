#!/usr/bin/env node

/**
 * Fix performance metrics that cause MDX compilation errors
 * Specifically targets patterns like <500ms, <2s, etc.
 */

import fs from 'fs';
import path from 'path';

const files = [
  'docs/development/architecture/database-migration-strategy.md',
  'docs/development/data-layer/setup/migration.md',
  'docs/development/testing/reports/auto-cascade-safety-validation-2025-07-24.md',
  'docs/development/testing/sample-coverage-report.md'
];

function fixPerformanceMetrics(content) {
  // Fix patterns like <200ms, <2s, <500ms, <50ms
  return content.replace(/([^\\])<(\d+(?:\.\d+)?(?:ms|s|m|h))/g, '$1\\<$2');
}

for (const file of files) {
  try {
    const content = fs.readFileSync(file, 'utf8');
    const fixed = fixPerformanceMetrics(content);
    
    if (content !== fixed) {
      fs.writeFileSync(file, fixed);
      console.log(`✅ Fixed performance metrics in: ${file}`);
    }
  } catch (error) {
    console.log(`⚠️  Could not fix ${file}: ${error.message}`);
  }
}

console.log('Done fixing performance metrics.');