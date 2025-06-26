#!/usr/bin/env node

/**
 * Google Takeout Stragglers Processing Worker
 * 
 * Processes files from the timestamp extraction results using a job queue
 * with file locking for parallel-safe execution.
 * 
 * Usage:
 *   node scripts/process-stragglers-worker.js [--test-single]
 *   
 *   --test-single: Process only one file and exit (for testing)
 * 
 * Parallel execution:
 *   parallel -j 20 node scripts/process-stragglers-worker.js ::: {1..20}
 */

import { promises as fs } from 'fs';
import { dirname, basename, extname, join } from 'path';
import { fileURLToPath } from 'url';
import { exec } from 'child_process';
import { promisify } from 'util';

const execAsync = promisify(exec);
const __dirname = dirname(fileURLToPath(import.meta.url));

// Configuration
const WORK_DIR = '/tmp/google_takeout_processing_additional';
const ARCHIVE_DIR = '/photos/archive';
const COLLECTIONS_DIR = '/photos/collections';
const UNKNOWN_DIR = `${ARCHIVE_DIR}/unknown`;
const LOCK_FILE = `${WORK_DIR}/worker.lock`;

// Parse command line arguments
const args = process.argv.slice(2);
const testSingleFile = args.includes('--test-single');
const workerId = process.env.PARALLEL_SEQ || '1';

// Logging with worker ID
function log(message) {
  console.log(`[Worker ${workerId}] ${new Date().toISOString()} - ${message}`);
}

function error(message) {
  console.error(`[Worker ${workerId}] ERROR: ${message}`);
}

/**
 * Improved file-based lock with random backoff
 */
async function acquireFileLock() {
  const maxRetries = 200;
  let retries = 0;
  
  while (retries < maxRetries) {
    try {
      // Try to create lock file exclusively
      await fs.writeFile(LOCK_FILE, String(process.pid), { flag: 'wx' });
      return true;
    } catch (err) {
      if (err.code === 'EEXIST') {
        // Lock file exists, wait with random backoff
        const waitTime = 10 + Math.random() * 40; // 10-50ms random wait
        await new Promise(resolve => setTimeout(resolve, waitTime));
        retries++;
      } else {
        error(`Failed to acquire lock: ${err.message}`);
        return false;
      }
    }
  }
  
  error('Failed to acquire lock after maximum retries');
  return false;
}

/**
 * Release the file lock
 */
async function releaseLock() {
  try {
    await fs.unlink(LOCK_FILE);
  } catch (err) {
    // Lock file might already be deleted
  }
}

/**
 * Remove and return the first line from a file (atomic operation)
 */
async function removeFirstLine(filename) {
  const filePath = join(WORK_DIR, filename);
  
  try {
    // Read the entire file
    const content = await fs.readFile(filePath, 'utf8');
    const lines = content.split('\n');
    
    if (lines.length === 0 || (lines.length === 1 && lines[0] === '')) {
      return null; // File is empty
    }
    
    // Get first line and remaining content
    const firstLine = lines[0];
    const remaining = lines.slice(1).join('\n');
    
    // Write back the remaining content
    await fs.writeFile(filePath, remaining);
    
    return firstLine;
  } catch (err) {
    error(`Failed to process file ${filename}: ${err.message}`);
    return null;
  }
}

/**
 * Parse timestamp to extract year and month
 */
function parseTimestamp(timestamp) {
  if (!timestamp || timestamp === 'null') {
    return null;
  }
  
  // Format: YYYY-MM-DD_HH-MM-SS
  const match = timestamp.match(/^(\d{4})-(\d{2})-\d{2}_\d{2}-\d{2}-\d{2}$/);
  if (!match) {
    return null;
  }
  
  return {
    year: match[1],
    month: match[2],
    fullTimestamp: timestamp
  };
}

/**
 * Generate a unique filename by adding incrementing suffix
 */
async function generateUniqueFilename(directory, baseFilename, extension) {
  let counter = 1;
  let filename = `${baseFilename}_001${extension}`;
  let fullPath = join(directory, filename);
  
  while (await fileExists(fullPath)) {
    counter++;
    filename = `${baseFilename}_${String(counter).padStart(3, '0')}${extension}`;
    fullPath = join(directory, filename);
  }
  
  return { filename, fullPath };
}

/**
 * Check if a file exists
 */
async function fileExists(path) {
  try {
    await fs.access(path);
    return true;
  } catch {
    return false;
  }
}

/**
 * Read Google sidecar file and extract album information
 */
async function readGoogleSidecar(mediaPath) {
  const sidecarPath = `${mediaPath}.json`;
  
  try {
    if (!await fileExists(sidecarPath)) {
      return { albums: [] };
    }
    
    const content = await fs.readFile(sidecarPath, 'utf8');
    const data = JSON.parse(content);
    
    // Extract album names from various possible locations in Google's JSON
    const albums = [];
    
    // Check for albumData
    if (data.albumData && data.albumData.length > 0) {
      data.albumData.forEach(album => {
        if (album.title) {
          albums.push(album.title);
        }
      });
    }
    
    // Check for googlePhotosOrigin
    if (data.googlePhotosOrigin && data.googlePhotosOrigin.albumData) {
      data.googlePhotosOrigin.albumData.forEach(album => {
        if (album.title && !albums.includes(album.title)) {
          albums.push(album.title);
        }
      });
    }
    
    return { albums, sidecarPath };
  } catch (err) {
    error(`Failed to read sidecar ${sidecarPath}: ${err.message}`);
    return { albums: [] };
  }
}

/**
 * Create collection symlinks for a photo
 */
async function createCollectionSymlinks(targetPath, albums) {
  const filename = basename(targetPath);
  
  for (const album of albums) {
    try {
      // Sanitize album name for filesystem
      const safeAlbumName = album.replace(/[\/\\:*?"<>|]/g, '_');
      const collectionDir = join(COLLECTIONS_DIR, safeAlbumName);
      
      // Ensure collection directory exists
      await fs.mkdir(collectionDir, { recursive: true });
      
      // Create symlink
      const symlinkPath = join(collectionDir, filename);
      const relativePath = `../../archive/${targetPath.substring(ARCHIVE_DIR.length + 1)}`;
      
      // Remove existing symlink if it exists
      try {
        await fs.unlink(symlinkPath);
      } catch {
        // Ignore if doesn't exist
      }
      
      await fs.symlink(relativePath, symlinkPath);
      log(`Created symlink: ${symlinkPath} -> ${relativePath}`);
    } catch (err) {
      error(`Failed to create symlink for album "${album}": ${err.message}`);
    }
  }
}

/**
 * Update the completed files counter
 */
async function incrementCompletedCount() {
  const counterPath = join(WORK_DIR, 'completed_files.txt');
  
  try {
    const current = parseInt(await fs.readFile(counterPath, 'utf8')) || 0;
    await fs.writeFile(counterPath, String(current + 1));
  } catch (err) {
    error(`Failed to update counter: ${err.message}`);
  }
}

/**
 * Process a single file pair (media file + timestamp)
 */
async function processFilePair(filePath, timestamp) {
  try {
    // Validate inputs
    if (!filePath || !await fileExists(filePath)) {
      error(`File not found: ${filePath}`);
      return false;
    }
    
    // Parse timestamp
    const parsed = parseTimestamp(timestamp);
    const targetDir = parsed 
      ? join(ARCHIVE_DIR, parsed.year, parsed.month)
      : UNKNOWN_DIR;
    
    // Ensure target directory exists
    await fs.mkdir(targetDir, { recursive: true });
    
    // Generate unique filename
    const extension = extname(filePath);
    const baseFilename = parsed ? parsed.fullTimestamp : `unknown_${Date.now()}`;
    const { filename, fullPath: targetPath } = await generateUniqueFilename(
      targetDir, 
      baseFilename, 
      extension
    );
    
    // Read Google sidecar for album data
    const { albums, sidecarPath } = await readGoogleSidecar(filePath);
    
    // Move the media file
    await fs.rename(filePath, targetPath);
    log(`Moved: ${basename(filePath)} -> ${targetPath}`);
    
    // Create collection symlinks if albums exist
    if (albums.length > 0) {
      await createCollectionSymlinks(targetPath, albums);
    }
    
    // Delete Google sidecar if it exists
    if (sidecarPath && await fileExists(sidecarPath)) {
      await fs.unlink(sidecarPath);
      log(`Deleted sidecar: ${basename(sidecarPath)}`);
    }
    
    // Update progress counter
    await incrementCompletedCount();
    
    return true;
  } catch (err) {
    error(`Failed to process ${filePath}: ${err.message}`);
    return false;
  }
}

/**
 * Main worker loop
 */
async function main() {
  log('Starting worker...');
  
  let filesProcessed = 0;
  
  while (true) {
    // Acquire lock for atomic file operations
    const locked = await acquireFileLock();
    if (!locked) {
      await new Promise(resolve => setTimeout(resolve, 100)); // Wait and retry
      continue;
    }
    
    try {
      // Read and remove first lines from both files
      const filePath = await removeFirstLine('all_media.txt');
      const timestamp = await removeFirstLine('all_timestamps.json');
      
      // Release lock immediately after reading
      await releaseLock();
      
      // Check if we've reached the end
      if (!filePath) {
        log('No more files to process. Exiting.');
        break;
      }
      
      // Process this file pair
      const success = await processFilePair(filePath, timestamp);
      filesProcessed++;
      
      if (success) {
        log(`Successfully processed file ${filesProcessed}`);
      }
      
      // Exit after one file if in test mode
      if (testSingleFile) {
        log('Test mode: Exiting after one file.');
        break;
      }
      
    } catch (err) {
      error(`Worker error: ${err.message}`);
      await releaseLock(); // Ensure lock is released on error
      
      // Small delay before retrying
      await new Promise(resolve => setTimeout(resolve, 1000));
    }
  }
  
  log(`Worker finished. Total files processed: ${filesProcessed}`);
}

// Run the worker
main().catch(err => {
  error(`Fatal error: ${err.message}`);
  process.exit(1);
});