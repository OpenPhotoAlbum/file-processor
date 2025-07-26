#!/usr/bin/env node

/**
 * MDX Issues Fix Script
 * 
 * Fixes common MDX compilation errors in migrated markdown files
 * - Escapes JSX-like syntax
 * - Fixes HTML elements that conflict with MDX
 * - Preserves content while making it MDX-compatible
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const docsDir = './docs';

function fixMdxContent(content) {
  let fixed = content;
  
  // Fix JSX-like syntax with numbers - escape angle brackets
  fixed = fixed.replace(/<(\d[^>]*?)>/g, '\\<$1\\>');
  
  // Fix HTML comments that might conflict with JSX
  fixed = fixed.replace(/<!--\s*([^-]+?)\s*-->/g, '{/* $1 */}');
  
  // Fix unescaped angle brackets in text (common issue)
  fixed = fixed.replace(/([^\\])<([a-zA-Z0-9_-]+?)>/g, '$1\\<$2\\>');
  
  // Fix backtick code blocks with JSX content
  fixed = fixed.replace(/```([a-z]*)\n([\s\S]*?)```/g, (match, lang, code) => {
    // Don't modify code blocks - they should be safe
    return match;
  });
  
  // Fix inline code with angle brackets
  fixed = fixed.replace(/`([^`]*<[^`]*>)`/g, (match, code) => {
    // Don't modify inline code - they should be safe
    return match;
  });
  
  // Fix specific patterns that are causing issues:
  // Pattern like <component5> becomes \<component5\>
  fixed = fixed.replace(/([^`])<([a-zA-Z][a-zA-Z0-9]*\d+[^>]*?)>/g, '$1\\<$2\\>');
  
  // Fix URLs or email-like patterns that might get caught
  fixed = fixed.replace(/\\<(https?:\/\/[^>]+?)\\>/g, '<$1>');
  fixed = fixed.replace(/\\<([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})\\>/g, '<$1>');
  
  return fixed;
}

function fixFile(filePath) {
  try {
    const content = fs.readFileSync(filePath, 'utf8');
    const fixed = fixMdxContent(content);
    
    if (content !== fixed) {
      fs.writeFileSync(filePath, fixed);
      console.log(`✅ Fixed: ${path.relative(docsDir, filePath)}`);
      return true;
    }
    return false;
  } catch (error) {
    console.error(`❌ Error fixing ${filePath}:`, error.message);
    return false;
  }
}

function fixAllMarkdownFiles(dir) {
  let fixedCount = 0;
  const entries = fs.readdirSync(dir, { withFileTypes: true });
  
  for (const entry of entries) {
    const fullPath = path.join(dir, entry.name);
    
    if (entry.isDirectory() && !entry.name.startsWith('_')) {
      fixedCount += fixAllMarkdownFiles(fullPath);
    } else if (entry.isFile() && entry.name.endsWith('.md')) {
      if (fixFile(fullPath)) {
        fixedCount++;
      }
    }
  }
  
  return fixedCount;
}

async function main() {
  console.log('🔧 Fixing MDX compilation issues...');
  
  const fixedCount = fixAllMarkdownFiles(docsDir);
  
  console.log(`\n✅ Fixed ${fixedCount} files with MDX issues`);
  console.log('\nNext steps:');
  console.log('- Run: npm run build (test compilation again)');
  console.log('- Check for any remaining MDX errors');
}

main().catch(console.error);