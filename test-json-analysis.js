#!/usr/bin/env node

// Quick test script to verify JSON analysis works on a small sample
import { exec } from 'child_process';
import { promisify } from 'util';

const execAsync = promisify(exec);

async function testAnalysis() {
  console.log('Testing JSON analysis on small sample...');
  
  // Create a test directory with just a few JSON files
  const testDir = '/tmp/json-test';
  await execAsync(`mkdir -p ${testDir}`);
  
  // Copy a few JSON files for testing
  try {
    await execAsync(`find /photos/archive -name "*.json" | head -10 | xargs -I {} cp {} ${testDir}/`);
    console.log('Copied 10 sample JSON files to test directory');
    
    // Modify the analysis script to use the test directory
    const analysisScript = `
import fs from 'fs/promises';
const testAnalysis = await import('./dist/scripts/analyze-json-metadata.js');
// Override the main function to use test directory
`;
    
    console.log('Test setup complete. Files in test directory:');
    const { stdout } = await execAsync(`ls -la ${testDir}`);
    console.log(stdout);
    
  } catch (error) {
    console.error('Test setup failed:', error);
  }
}

testAnalysis();