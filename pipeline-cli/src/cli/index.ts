/**
 * Main CLI entry point using commander.js
 */

import { program } from 'commander';
import chalk from 'chalk';
import { CLIHandler } from './handlers.js';
import { CLIOptions } from './types.js';

const cliHandler = new CLIHandler();

/**
 * Setup and run CLI with commander.js
 */
export async function runCLI(): Promise<void> {
  // Enable colors for Commander.js
  process.env.FORCE_COLOR = '1';

  // Colors configured manually in option descriptions

  program
    .name('mpp')
    .description(chalk.blue('Process media files with metadata extraction, GPS parsing, and timestamp analysis'))
    .helpOption('-h, --help', `${chalk.gray('display help for command')}`);

  // Custom version option with gray description
  program
    .option('-V, --version', `${chalk.gray('output the version number')}\\n`, () => {
      console.log('1.0.0');
      process.exit(0);
    });

  // Directory scanning options
  program
    .option('-D, --directory <path>', `${chalk.gray('scan directory (non-recursive)')}\n`)
    .option('-R, --recursive <path>', `${chalk.gray('scan directory recursively')}\n`);

  // File specification options  
  program
    .option('-f, --files <files...>', `${chalk.gray('process specific files (space-separated)')}\n`);

  // Filtering options
  program
    .option('--mime <types>', `${chalk.gray('filter by MIME types (comma-separated, overrides env var)')}\n`);

  // Output options
  program
    .option('-o, --output <file>', `${chalk.gray('output results to file (auto-adds .json extension)')}\n`)
    .option('--overwrite', 
      `${chalk.yellow.dim('[default: auto-number]')} ${chalk.gray('overwrite existing output file')}\n`)
    .option('--json', `${chalk.gray('output in JSON format')}\n`)
    .option('--quiet', `${chalk.gray('minimal console output')}\n`)
    .option('--timestamp-only', `${chalk.gray('extract timestamp only (skip all processing)')}\n`)
    .option('--validate', `${chalk.gray('run photo validation (checks quality and completeness)')}\n`)
    .option('--auto-fix', `${chalk.gray('automatically fix validation issues (requires --validate)')}\n`)
    .option('--auto-fix-types <types>', 
      `${chalk.yellow.dim('[default: all]')} ` +
      `${chalk.gray('comma-separated fix types: metadata,filename,gps,colors')}\n`);

  // Database options
  program
    .option('--output-db', `${chalk.gray('store results in database (requires MySQL connection)')}\n`)
    .option('--db-collection <name>', 
      `${chalk.yellow.dim('[default: archive]')} ${chalk.gray('database collection name')}\n`)
    .option('--colors', 
      `${chalk.yellow.dim('[default: true]')} ${chalk.gray('extract colors during database storage')}\n`)
    .option('--no-colors', `${chalk.gray('skip color extraction during database storage')}\n`)
    .option('--db-history', 
      `${chalk.yellow.dim('[default: true]')} ${chalk.gray('preserve existing database records')}\n`)
    .option('--no-db-history', `${chalk.gray('overwrite existing database records instead of preserving history')}\n`);

  // Merge options
  program
    .option('--merge', `${chalk.gray('merge with existing metadata instead of overwriting')}\n`)
    .option('--merge-sections <sections>', 
      `${chalk.gray('specific sections to merge ')}` +
      `${chalk.gray('(comma-separated: location,timestamps,camera,settings,technical,media)')}\n`)
    .option('--preserve-enrichment', 
      `${chalk.yellow.dim('[default: true]')} ${chalk.gray('preserve expensive enrichment operations during merge')}\n`)
    .option('--backup', `${chalk.gray('create backup before overwriting/merging/auto-fixing')}\n`)
    .option('--dry-run', `${chalk.gray('show what would be changed without writing files')}\n`);

  // Help examples
  program.addHelpText('after', `
Examples:
  # ${chalk.magenta('Scan')} sample directory recursively for all media files
  $ mpp -R sample:

  # ${chalk.magenta('Process')} specific files with JSON output
  $ mpp -f sample:image1.jpg /absolute/path/image2.png --json

  # ${chalk.magenta('Scan')} directory with MIME filtering and save to file
  $ mpp -D /photos --mime jpeg,png,heic -o results

  # ${chalk.magenta('Recursive')} scan with quiet output and overwrite existing file
  $ mpp -R media:photos --quiet -o summary.json --overwrite

  # ${chalk.magenta('Add')} Live Photo detection while preserving existing landmarks
  $ mpp -f video.mov -o video.json --merge

  # ${chalk.magenta('Update')} only media section with backup
  $ mpp -f video.mov -o video.json --merge-sections=media --backup

  # ${chalk.magenta('Preview')} what would be merged without making changes
  $ mpp -f photo.jpg -o photo.json --merge --dry-run

  # ${chalk.magenta('Store')} results in database only
  $ mpp -f photo.jpg --output-db

  # ${chalk.magenta('Store')} in both file and database with custom collection
  $ mpp -f photo.jpg -o output.json --output-db --db-collection staging

  # ${chalk.magenta('Batch')} process with database storage (skip color extraction for speed)
  $ mpp -R /photos --output-db --no-colors --quiet

  # ${chalk.magenta('Validate')} photo quality and completeness
  $ mpp -f sample:image.jpg --validate
  
  # ${chalk.magenta('Validate')} multiple files with JSON output  
  $ mpp -f *.jpg --validate --json
  
  # ${chalk.magenta('Validate')} and auto-fix issues with backup
  $ mpp -f photo.jpg --validate --auto-fix
  
  # ${chalk.magenta('Auto-fix')} specific issues only
  $ mmp -f photo.jpg --validate --auto-fix --auto-fix-types=metadata,filename

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