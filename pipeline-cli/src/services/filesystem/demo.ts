/**
 * Demo script to test FileSystemService functionality
 * This shows how the service would replace scattered filesystem operations
 */

import { FileSystemService } from './index.js';

async function demonstrateFileSystemService() {
  const fs = new FileSystemService();
  
  console.log('=== FileSystem Service Demo ===\n');
  
  // 1. Validate paths (replaces manual path checking)
  console.log('1. Path Validation:');
  const pathResult = await fs.validatePath('sample:');
  console.log(`Sample path valid: ${pathResult.isValid}`);
  console.log(`Has known prefix: ${pathResult.hasKnownPrefix}`);
  console.log(`Safe path: ${pathResult.safePath}\n`);
  
  // 2. Discover media files (replaces hardcoded test files)
  console.log('2. Media Discovery:');
  const discovery = await fs.discoverMediaFiles('sample:', true, {
    includeSidecars: true,
    skipInvalid: false
  });
  console.log(`Found ${discovery.mediaFiles.length} media files`);
  console.log(`Found ${discovery.sidecarFiles.length} sidecar files`);
  console.log(`Scan took: ${discovery.scanDuration}ms\n`);
  
  // 3. File metadata (replaces individual stat() calls)
  if (discovery.mediaFiles.length > 0) {
    console.log('3. File Metadata:');
    const firstFile = discovery.mediaFiles[0];
    const metadata = await fs.getFileMetadata(firstFile);
    
    if (metadata) {
      console.log(`File: ${metadata.safePath}`);
      console.log(`Size: ${fs.formatFileSize(metadata.size)}`);
      console.log(`Modified: ${fs.formatTimestamp(metadata.mtime)}`);
      console.log(`Age: ${fs.getFileAge(metadata)}\n`);
    }
  }
  
  // 4. Sidecar discovery (replaces custom sidecar logic)
  if (discovery.mediaFiles.length > 0) {
    console.log('4. Sidecar Discovery:');
    const firstFile = discovery.mediaFiles[0];
    const sidecars = await fs.findSidecarFiles(firstFile);
    console.log(`Found ${sidecars.length} sidecar files for first media file\n`);
  }
  
  // 5. Batch operations (efficient processing)
  console.log('5. Batch Operations:');
  const validationResults = await fs.batchValidateFiles(discovery.mediaFiles.slice(0, 3));
  const validCount = Array.from(validationResults.values()).filter(r => r.isValid).length;
  console.log(`Batch validated ${validCount}/${validationResults.size} files\n`);
  
  console.log('=== Demo Complete ===');
}

// Export for potential testing
export { demonstrateFileSystemService };