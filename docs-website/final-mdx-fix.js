#!/usr/bin/env node

/**
 * Final MDX Fix Script
 * 
 * Systematically fixes all remaining MDX compilation errors
 * by escaping problematic angle bracket patterns
 */

import fs from 'fs';
import path from 'path';

const docsDir = './docs';

function fixAllMdxIssues(content) {
  let fixed = content;
  
  // Fix ALL angle bracket patterns that might be interpreted as JSX
  // This includes <number patterns, <word patterns, etc.
  
  // 1. Fix <digit patterns (performance metrics, etc.)
  fixed = fixed.replace(/([^\\`])<(\d+(?:\.\d+)?(?:ms|s|m|h|%))/g, '$1\\<$2');
  fixed = fixed.replace(/([^\\`])<(\d+)/g, '$1\\<$2');
  
  // 2. Fix <word patterns that look like HTML tags
  fixed = fixed.replace(/([^\\`])<([a-zA-Z][a-zA-Z0-9_]*(?:\d+)?)/g, '$1\\<$2');
  
  // 3. Fix percentage/comparison patterns
  fixed = fixed.replace(/([^\\`])<(\d+(?:\.\d+)?%)/g, '$1\\<$2');
  
  // 4. Fix inequalities in text
  fixed = fixed.replace(/([^\\`])<([=!])/g, '$1\\<$2');
  
  // 5. Don't escape URLs, emails, or actual HTML in code blocks
  fixed = fixed.replace(/\\<(https?:\/\/[^>]+)/g, '<$1');
  fixed = fixed.replace(/\\<([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})/g, '<$1');
  
  // 6. Don't escape code blocks (between triple backticks)
  fixed = fixed.replace(/```[\s\S]*?```/g, (match) => {
    return match.replace(/\\</g, '<');
  });
  
  // 7. Don't escape inline code (between single backticks)
  fixed = fixed.replace(/`[^`]*`/g, (match) => {
    return match.replace(/\\</g, '<');
  });
  
  return fixed;
}

function fixFileSystematically(filePath) {
  try {
    const content = fs.readFileSync(filePath, 'utf8');
    const fixed = fixAllMdxIssues(content);
    
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
      if (fixFileSystematically(fullPath)) {
        fixedCount++;
      }
    }
  }
  
  return fixedCount;
}

async function main() {
  console.log('🔧 Final MDX fix - systematically escaping all problematic patterns...');
  
  const fixedCount = fixAllMarkdownFiles(docsDir);
  
  console.log(`\n✅ Applied systematic fixes to ${fixedCount} files`);
  console.log('\nNext steps:');
  console.log('- Run: npm run build (final test)');
  console.log('- If still failing, check specific error lines manually');
}

main().catch(console.error);