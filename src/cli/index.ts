/**
 * Main CLI entry point using commander.js
 */

import { program } from 'commander';
import { CLIHandler } from './handlers.js';
import { CLIOptions } from './types.js';

const cliHandler = new CLIHandler();

/**
 * Setup and run CLI with commander.js
 */
export async function runCLI(): Promise<void> {
  program
    .name('media-processor')
    .description('Process media files with metadata extraction, GPS parsing, and timestamp analysis')
    .version('1.0.0')
    .helpOption('-h, --help', 'display help for command');

  // Directory scanning options
  program
    .option('-D, --directory <path>', 'scan directory (non-recursive)')
    .option('-R, --recursive <path>', 'scan directory recursively');

  // File specification options  
  program
    .option('-f, --files <files...>', 'process specific files (space-separated)');

  // Filtering options
  program
    .option('--mime <types>', 'filter by MIME types (comma-separated, overrides env var)');

  // Output options
  program
    .option('-o, --output <file>', 'output results to file (auto-adds .json extension)')
    .option('--overwrite', 'overwrite existing output file (default: auto-number)')
    .option('--json', 'output in JSON format')
    .option('--quiet', 'minimal console output')
    .option('--timestamp-only', 'extract timestamp only (skip all processing)');

  // Database options
  program
    .option('--output-db', 'store results in database (requires MySQL connection)')
    .option('--db-collection <name>', 'database collection name (default: archive)')
    .option('--colors', 'extract colors during database storage (default: true)')
    .option('--no-colors', 'skip color extraction during database storage')
    .option('--db-history', 'preserve existing database records (default: true)')
    .option('--no-db-history', 'overwrite existing database records instead of preserving history');

  // Merge options
  program
    .option('--merge', 'merge with existing metadata instead of overwriting')
    .option('--merge-sections <sections>', 
      'specific sections to merge (comma-separated: location,timestamps,camera,settings,technical,media)')
    .option('--preserve-enrichment', 'preserve expensive enrichment operations during merge (default: true)')
    .option('--backup', 'create backup before overwriting/merging')
    .option('--dry-run', 'show what would be changed without writing files');

  // Help examples
  program.addHelpText('after', `
Examples:
  # Scan sample directory recursively for all media files
  $ media-processor -R sample:

  # Process specific files with JSON output
  $ media-processor -f sample:image1.jpg /absolute/path/image2.png --json

  # Scan directory with MIME filtering and save to file
  $ media-processor -D /photos --mime jpeg,png,heic -o results

  # Recursive scan with quiet output and overwrite existing file
  $ media-processor -R media:photos --quiet -o summary.json --overwrite

  # Add Live Photo detection while preserving existing landmarks
  $ media-processor -f video.mov -o video.json --merge

  # Update only media section with backup
  $ media-processor -f video.mov -o video.json --merge-sections=media --backup

  # Preview what would be merged without making changes
  $ media-processor -f photo.jpg -o photo.json --merge --dry-run

  # Store results in database only
  $ media-processor -f photo.jpg --output-db

  # Store in both file and database with custom collection
  $ media-processor -f photo.jpg -o output.json --output-db --db-collection staging

  # Batch process with database storage (skip color extraction for speed)
  $ media-processor -R /photos --output-db --no-colors --quiet

Path Formats:
  sample:path/file.jpg    # Uses SAMPLE_BASE_PATH environment variable
  media:path/file.jpg     # Uses MEDIA_BASE_PATH environment variable  
  relative:path/file.jpg  # Relative to current working directory
  /absolute/path/file.jpg # Absolute path (logged as external: for security)

Supported MIME Types:
  Images: image/jpeg, image/png, image/gif, image/webp, image/heic, image/heif
  Videos: video/mp4, video/quicktime, video/x-msvideo
  Audio:  audio/mpeg, audio/wav, audio/flac, audio/aac
`);

  // Main action handler
  program.action(async (options: CLIOptions) => {
    try {
      await cliHandler.handleCommand(options);
    } catch (error) {
      console.error(`\n❌ Fatal error: ${(error as Error).message}`);
      process.exit(1);
    }
  });

  // Handle no arguments - show help
  if (process.argv.length <= 2) {
    program.help();
  }

  // Parse command line arguments
  await program.parseAsync(process.argv);
}

/**
 * Handle uncaught errors gracefully
 */
process.on('uncaughtException', (error) => {
  console.error('\n💥 Uncaught Exception:', error.message);
  console.error('Stack:', error.stack);
  process.exit(1);
});

process.on('unhandledRejection', (reason, promise) => {
  console.error('\n💥 Unhandled Rejection at:', promise, 'reason:', reason);
  process.exit(1);
});

// Export for testing
export { CLIHandler } from './handlers.js';
export * from './types.js';