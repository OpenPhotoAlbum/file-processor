#!/usr/bin/env node

/**
 * MMP (Media Processing Pipeline) - Unified CLI
 * 
 * A single, consistent interface for all media processing operations.
 * Replaces 50+ fragmented tools with direct commands per plan specification.
 */

import { Command } from 'commander';
import chalk from 'chalk';

const program = new Command();

// Enable colors for Commander.js
process.env.FORCE_COLOR = '1';

program
  .name('mmp')
  .description(chalk.blue('Media Processing Pipeline - Unified CLI for photo and video operations'))
  .version('1.0.0');

// SCAN command - Hardware scanning operations
program
  .command('scan')
  .description('Hardware scanning operations')
  .option('--flatbed', 'Scan from flatbed scanner')
  .option('--adf', 'Scan from automatic document feeder')
  .option('--duplex', 'Scan both sides (ADF only)')
  .option('-d, --date <date>', 'Set capture date (YYYY-MM-DD) ' + chalk.gray('[optional]'))
  .option('-l, --location <location>', 'Set GPS location (name or coordinates) ' + chalk.gray('[optional]'))
  .option('--desc <description>', 'Description for filename ' + chalk.gray('[optional]'))
  .option('--device <device>', 'Scanner device', 'airscan:e0:HP')
  .option('--format <format>', 'Output format', 'jpeg')
  .option('--resolution <dpi>', 'Scan resolution in DPI', '300')
  .option('--output <dir>', 'Output directory', '/photos/staging/')
  .action(async (options) => {
    console.error(chalk.green('📸 Starting scan operation...'));
    console.error('Options:', options);
    
    // Validate scan type
    if (!options.flatbed && !options.adf) {
      console.error(chalk.red('❌ Must specify --flatbed or --adf'));
      process.exit(1);
    }
    
    if (options.flatbed && options.adf) {
      console.error(chalk.red('❌ Cannot use both --flatbed and --adf'));
      process.exit(1);
    }
    
    try {
      // Generate filename with timestamp
      const timestamp = new Date().toISOString().slice(0, 19).replace(/[:-]/g, '').replace('T', '_');
      const desc = options.desc ? `${options.desc}_` : '';
      const scanType = options.flatbed ? 'flatbed' : 'adf';
      const filename = `${timestamp}_${desc}${scanType}.${options.format}`;
      const outputPath = `${options.output}/${filename}`;
      
      console.error(chalk.blue(`📄 Scanning to: ${filename}`));
      
      // Build scanimage command
      const { spawn } = await import('child_process');
      const scanArgs = [
        `--device=${options.device}`,
        `--mode=Color`,
        `--resolution=${options.resolution}`,
        `--format=${options.format}`
      ];
      
      // Add duplex for ADF
      if (options.adf && options.duplex) {
        scanArgs.push('--duplex=yes');
      }
      
      console.error(chalk.gray(`Running: scanimage ${scanArgs.join(' ')} > ${outputPath}`));
      
      // Execute scan
      const scanProcess = spawn('scanimage', scanArgs);
      const fs = await import('fs');
      const outputStream = fs.createWriteStream(outputPath);
      
      scanProcess.stdout.pipe(outputStream);
      
      scanProcess.on('error', (error: Error) => {
        console.error(chalk.red('❌ Scanner error:'), error.message);
        process.exit(1);
      });
      
      scanProcess.on('close', (code: number) => {
        if (code === 0) {
          console.error(chalk.green(`✅ Scan complete: ${filename}`));
          
          // Apply metadata if provided
          if (options.date || options.location) {
            console.error(chalk.blue('📝 Applying metadata...'));
            // TODO: Apply EXIF metadata with date/location
            console.error(chalk.gray('Metadata application not yet implemented'));
          }
          
          console.error(chalk.green('🎉 Scan finished successfully!'));
          
          // Output file path to stdout for piping
          console.log(outputPath);
        } else {
          console.error(chalk.red(`❌ Scanner failed with exit code ${code}`));
          process.exit(1);
        }
      });
      
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : String(error);
      console.error(chalk.red('❌ Scan failed:'), errorMessage);
      process.exit(1);
    }
  });

// CROP command - Photo separation from scans
program
  .command('crop')
  .argument('[scan-file]', 'Scan file containing multiple photos (optional if piped)')
  .description('Separate multiple photos from single scan')
  .option('-b, --background <color>', 'Background color/reference', 'white')
  .option('-r, --reference <file>', 'Reference background image ' + chalk.gray('[optional]'))
  .option('--keep-original', 'Keep original scan file')
  .option('--output <dir>', 'Output directory', './separated/')
  .option('--min-area <pixels>', 'Minimum photo size in pixels', '500')
  .action(async (scanFile, options) => {
    console.error(chalk.green('✂️  Starting photo separation...'));
    
    try {
      // Get input file - from argument or stdin
      let inputFile = scanFile;
      
      if (!inputFile) {
        // Read from stdin
        const stdin = process.stdin;
        stdin.setEncoding('utf8');
        
        let stdinData = '';
        for await (const chunk of stdin) {
          stdinData += chunk;
        }
        
        inputFile = stdinData.trim();
        
        if (!inputFile) {
          console.error(chalk.red('❌ No input file provided via argument or stdin'));
          process.exit(1);
        }
      }
      
      console.error(`Processing file: ${inputFile}`);
      console.error('Options:', options);
      
      // Validate input file exists
      const fs = await import('fs');
      if (!fs.existsSync(inputFile)) {
        console.error(chalk.red(`❌ Input file not found: ${inputFile}`));
        process.exit(1);
      }
      
      // Create output directory
      if (!fs.existsSync(options.output)) {
        fs.mkdirSync(options.output, { recursive: true });
        console.error(chalk.blue(`📁 Created output directory: ${options.output}`));
      }
      
      // Use native MPP photo separation service (no dependency on old fragmented tools!)
      const { PhotoSeparationService } = await import('./services/PhotoSeparationService.js');
      const separationService = new PhotoSeparationService();
      
      console.error(chalk.blue('🔍 Running native MPP photo separation...'));
      
      try {
        const result = await separationService.separatePhotos(inputFile, {
          background: options.background || 'white',
          output: options.output,
          keepOriginal: options.keepOriginal,
          minimumArea: parseInt(options.minArea) || 500 // Minimum photo size in pixels
        });
        
        if (result.success) {
          console.error(chalk.green('✅ Photo separation complete!'));
          console.error(chalk.blue(`📸 ${result.processingDetails}`));
          
          if (result.separatedFiles.length > 0) {
            console.error(chalk.blue('Separated photos:'));
            result.separatedFiles.forEach(f => console.error(chalk.gray(`  • ${f}`)));
            
            // Output separated file paths to stdout for piping
            result.separatedFiles.forEach(f => {
              console.log(`${options.output}/${f}`);
            });
          } else {
            console.error(chalk.yellow('⚠️  No separate photos detected - may be single image or needs different background settings'));
            // Still output something for piping compatibility
            console.log(inputFile);
          }
        } else {
          console.error(chalk.red('❌ Photo separation failed'));
          process.exit(1);
        }
        
      } catch (error) {
        const errorMessage = error instanceof Error ? error.message : String(error);
        console.error(chalk.red('❌ Photo separation failed:'), errorMessage);
        console.error(chalk.yellow('💡 Make sure ImageMagick is installed: apt install imagemagick'));
        process.exit(1);
      }
      
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : String(error);
      console.error(chalk.red('❌ Photo separation failed:'), errorMessage);
      process.exit(1);
    }
  });

// GPS command - Location operations
program
  .command('gps')
  .argument('<files...>', 'Files or directories to add GPS coordinates to')
  .description('Add GPS coordinates to media files')
  .option('-s, --set <location>', 'Set location (coordinates, city, or shortcut) ' + chalk.red('[REQUIRED]'))
  .option('--batch', 'Process multiple files/directories')
  .option('--overwrite', 'Overwrite existing GPS data')
  .addHelpText('after', `
${chalk.green('Examples:')}
  ${chalk.cyan('mmp gps photo.jpg --set cottage')}
    Apply GPS using location shortcut
    
  ${chalk.cyan('mmp gps *.jpg --set "42.7070,-71.1631"')}
    Set GPS coordinates directly
    
  ${chalk.cyan('mmp gps /photos/batch/ --set cottage --batch')}
    Process directory of photos

${chalk.green('Location Shortcuts:')}
  • Local: cottage, didi-house (didis), haverhill-house, lawrence, haverhill
  • NH: sandown, plaistow, hampton-beach, exeter, durham, north-hampton
  • MA: salisbury, newbury, newburyport, canobie, loon, miller-field
  • Travel: syracuse, miami, san-diego
  • Edit shortcuts in: ${chalk.yellow('~/.config/mmp/config.json')}
  • Add custom shortcuts to config.shortcuts.locations
  
${chalk.green('Coordinate Format:')}
  • Decimal degrees: "42.7070,-71.1631"
  • Latitude: -90 to 90 degrees
  • Longitude: -180 to 180 degrees
`)
  .action(async (files, options) => {
    console.error(chalk.green('📍 Setting GPS coordinates...'));
    
    try {
      // Import services
      const { locationService } = await import('./services/LocationService.js');
      const { gpsService } = await import('./services/GPSService.js');
      const fs = await import('fs');
      const path = await import('path');
      
      // Validate required options
      if (!options.set) {
        console.error(chalk.red('❌ Location is required. Use --set <location>'));
        console.error(chalk.gray('Examples:'));
        console.error(chalk.gray('  mmp gps photo.jpg --set cottage'));
        console.error(chalk.gray('  mmp gps *.jpg --set "42.7070,-71.1631"'));
        process.exit(1);
      }
      
      // Check ExifTool availability
      const exifToolAvailable = await gpsService.checkExifToolAvailable();
      if (!exifToolAvailable) {
        console.error(chalk.red('❌ ExifTool not found'));
        console.error(chalk.yellow('💡 Install with: apt install libimage-exiftool-perl'));
        process.exit(1);
      }
      
      // Resolve location to coordinates
      console.error(chalk.blue(`🔍 Resolving location: ${options.set}`));
      const locationResult = await locationService.resolveLocation(options.set);
      const { lat, lng } = locationResult.coordinates;
      
      console.error(chalk.green(`✅ Location resolved: ${locationService.formatCoordinates(lat, lng)}`));
      if (locationResult.resolvedFrom === 'shortcut') {
        console.error(chalk.gray(`   Shortcut: ${locationResult.originalInput} → ${locationService.formatCoordinates(lat, lng)}`));
      }
      
      // Expand file arguments to actual file paths
      const allFiles: string[] = [];
      
      for (const fileArg of files) {
        // Check if it's a directory
        try {
          const stat = await fs.promises.stat(fileArg);
          if (stat.isDirectory()) {
            if (!options.batch) {
              console.error(chalk.red(`❌ Directory processing requires --batch flag: ${fileArg}`));
              process.exit(1);
            }
            // Find all supported files in directory
            const pattern = path.join(fileArg, '**/*.{jpg,jpeg,tiff,tif,png,mp4,mov,avi,mkv,m4v}');
            const { glob } = await import('glob');
            const dirFiles = await glob(pattern, { ignore: ['**/.*'] });
            allFiles.push(...dirFiles);
          } else {
            allFiles.push(fileArg);
          }
        } catch (error) {
          // File doesn't exist, try as glob pattern
          const { glob } = await import('glob');
          const globFiles = await glob(fileArg);
          if (globFiles.length === 0) {
            console.error(chalk.yellow(`⚠️  No files found matching: ${fileArg}`));
          } else {
            allFiles.push(...globFiles);
          }
        }
      }
      
      if (allFiles.length === 0) {
        console.error(chalk.red('❌ No files found to process'));
        process.exit(1);
      }
      
      // Filter to supported file types
      const supportedFiles = gpsService.filterSupportedFiles(allFiles);
      const unsupportedCount = allFiles.length - supportedFiles.length;
      
      if (unsupportedCount > 0) {
        console.error(chalk.yellow(`⚠️  Skipping ${unsupportedCount} unsupported files`));
      }
      
      if (supportedFiles.length === 0) {
        console.error(chalk.red('❌ No supported media files found'));
        console.error(chalk.gray(`Supported formats: ${gpsService.getSupportedExtensions().join(', ')}`));
        process.exit(1);
      }
      
      console.error(chalk.blue(`📸 Processing ${supportedFiles.length} files...`));
      console.error('');
      
      // Check for existing GPS data if not overwriting
      if (!options.overwrite) {
        let hasExistingGPS = 0;
        for (const file of supportedFiles) {
          if (await gpsService.hasGPSData(file)) {
            hasExistingGPS++;
          }
        }
        
        if (hasExistingGPS > 0) {
          console.error(chalk.yellow(`⚠️  ${hasExistingGPS} files already have GPS data`));
          console.error(chalk.gray('Use --overwrite to replace existing GPS coordinates'));
          console.error('');
        }
      }
      
      // Process files in batch
      const result = await gpsService.writeBatchGPS(supportedFiles, lat, lng);
      
      // Report results
      console.error('');
      console.error(chalk.green('📊 GPS Processing Results:'));
      console.error(chalk.green(`✅ Success: ${result.successCount} files`));
      
      if (result.failureCount > 0) {
        console.error(chalk.red(`❌ Failed: ${result.failureCount} files`));
        console.error('');
        console.error(chalk.red('Failed files:'));
        result.results
          .filter(r => !r.success)
          .forEach(r => {
            console.error(chalk.red(`  • ${r.file}: ${r.error}`));
          });
      }
      
      console.error('');
      console.error(chalk.green(`🎉 GPS coordinates set to ${locationService.formatCoordinates(lat, lng)}`));
      
      // Output successful file paths to stdout for piping
      result.results
        .filter(r => r.success)
        .forEach(r => console.log(r.file));
      
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : String(error);
      console.error(chalk.red('❌ GPS operation failed:'), errorMessage);
      process.exit(1);
    }
  });

// DATES command - Date operations  
program
  .command('dates')
  .argument('[files...]', 'Files to set dates on (supports patterns, directories, or stdin)')
  .description('Set dates on heritage photos and media files')
  .option('-s, --set <date>', 'Set date (YYYY-MM-DD, MM-DD-YYYY, YYYY, or YYYY-MM) ' + chalk.red('[REQUIRED]'))
  .option('-r, --recursive', 'Process directories recursively')
  .option('--desc <description>', 'Optional description for heritage context ' + chalk.gray('[optional]'))
  .option('--dry-run', 'Show what would be processed without changes')
  .option('-q, --quiet', 'Pipe-friendly output (filenames only)')
  .option('--json', 'JSON output for programmatic use')
  .option('-v, --verbose', 'Detailed processing information')
  .option('--stdin', 'Explicit stdin mode')
  .addHelpText('after', `
${chalk.green('Examples:')}
  ${chalk.cyan('mmp dates photo.jpg --set "12-25-1990"')}
    Set specific date (US format)
    
  ${chalk.cyan('mmp dates *.jpg --set "1985"')}
    Set year-only (defaults to January 1st)
    
  ${chalk.cyan('find /photos/staging -name "*.jpg" | mmp dates --set "1990"')}
    Process files from stdin pipe
    
  ${chalk.cyan('mmp dates /heritage-batch/ --set "1985-12" --recursive')}
    Process directory with year-month (defaults to 15th)
    
  ${chalk.cyan('mmp dates *.jpg --set "1990" --quiet | mmp gps --set cottage')}
    Chain with GPS command

${chalk.green('Date Formats:')}
  • ISO format: "1990-12-25" (YYYY-MM-DD)
  • US format: "12-25-1990" (MM-DD-YYYY)
  • Year-only: "1985" → 1985-01-01 12:00:00
  • Year-month: "1990-12" → 1990-12-15 12:00:00
  • Range: 1950-2025 (heritage photo validation)
  
${chalk.green('Heritage Photos:')}
  • Default time: 12:00:00 (unknown exact times)
  • Batch processing optimized for staging workflow
  • Unix piping support for integration with find/xargs
`)
  .action(async (files, options) => {
    console.error(chalk.green('📅 MMP Dates: Processing heritage photo dates...'));
    
    try {
      // Import services
      const { DateService } = await import('./services/DateService.js');
      const { EXIFDateService } = await import('./services/EXIFDateService.js');
      const fs = await import('fs');
      const path = await import('path');
      
      // Initialize services
      const dateService = new DateService();
      const exifDateService = new EXIFDateService();
      
      // Validate required options
      if (!options.set) {
        console.error(chalk.red('❌ Date is required. Use --set <date>'));
        console.error(chalk.gray('Examples:'));
        console.error(chalk.gray('  mmp dates photo.jpg --set "12-25-1990"'));
        console.error(chalk.gray('  mmp dates *.jpg --set "1985"'));
        process.exit(1);
      }
      
      // Check ExifTool availability
      const exifToolAvailable = await exifDateService.verifyExifTool();
      if (!exifToolAvailable) {
        console.error(chalk.red('❌ ExifTool not found'));
        console.error(chalk.yellow('💡 Install with: apt install libimage-exiftool-perl'));
        process.exit(1);
      }
      
      // Parse and validate date
      const dateResult = dateService.parseDate(options.set);
      if (!dateResult.isValid) {
        console.error(chalk.red('❌ Invalid date:'), dateResult.error);
        console.error(chalk.gray('Supported formats: YYYY-MM-DD, MM-DD-YYYY, YYYY, YYYY-MM'));
        process.exit(1);
      }
      
      const targetDate = dateResult.date!;
      if (!options.quiet) {
        console.error(chalk.blue(`📅 Target date: ${targetDate.toLocaleDateString()} 12:00:00`));
        console.error(chalk.gray(`   Format detected: ${dateResult.format}`));
      }
      
      // Determine input source
      let inputFiles: string[] = [];
      
      // Check if we should read from stdin
      const shouldReadStdin = !files.length || options.stdin;
      if (shouldReadStdin && !process.stdin.isTTY) {
        // Read from stdin
        const stdin = process.stdin;
        stdin.setEncoding('utf8');
        
        let stdinData = '';
        for await (const chunk of stdin) {
          stdinData += chunk;
        }
        
        inputFiles = stdinData.trim().split('\n').filter(line => line.trim());
        
        if (!options.quiet) {
          console.error(chalk.blue(`📥 Read ${inputFiles.length} files from stdin`));
        }
      } else if (files.length > 0) {
        inputFiles = files;
      } else {
        console.error(chalk.red('❌ No files provided via arguments or stdin'));
        process.exit(1);
      }
      
      // Expand file patterns and directories
      const expandedFiles: string[] = [];
      
      for (const filePattern of inputFiles) {
        try {
          const stat = await fs.promises.stat(filePattern);
          if (stat.isDirectory()) {
            // Directory processing - simplified without glob for now
            if (!options.quiet) {
              console.error(chalk.yellow('⚠️  Directory processing simplified - use explicit file paths for now'));
            }
            expandedFiles.push(filePattern);
          } else {
            expandedFiles.push(filePattern);
          }
        } catch (error) {
          // File doesn't exist - assume it's just a path that will be processed later
          expandedFiles.push(filePattern);
        }
      }
      
      if (expandedFiles.length === 0) {
        console.error(chalk.red('❌ No files found to process'));
        process.exit(1);
      }
      
      // Filter to supported image formats
      const supportedExtensions = ['.jpg', '.jpeg', '.png', '.tiff', '.tif', '.heic'];
      const supportedFiles = expandedFiles.filter(file => {
        const ext = path.extname(file).toLowerCase();
        return supportedExtensions.includes(ext);
      });
      
      const unsupportedCount = expandedFiles.length - supportedFiles.length;
      if (unsupportedCount > 0 && !options.quiet) {
        console.error(chalk.yellow(`⚠️  Skipping ${unsupportedCount} unsupported files`));
      }
      
      if (supportedFiles.length === 0) {
        console.error(chalk.red('❌ No supported image files found'));
        console.error(chalk.gray(`Supported formats: ${supportedExtensions.join(', ')}`));
        process.exit(1);
      }
      
      if (!options.quiet) {
        console.error(chalk.blue(`🔍 Found ${supportedFiles.length} image files`));
      }
      
      // Dry run mode
      if (options.dryRun) {
        console.error(chalk.yellow('🔍 DRY RUN - No changes will be made:'));
        supportedFiles.forEach((file, index) => {
          console.error(chalk.gray(`  [${index + 1}/${supportedFiles.length}] ${file}`));
        });
        console.error(chalk.yellow(`Would set date to: ${targetDate.toLocaleDateString()} 12:00:00`));
        return;
      }
      
      // Process files
      if (!options.quiet) {
        console.error(chalk.blue('⏳ Processing images...'));
      }
      
      const batchResult = await exifDateService.writeBatchDates(
        supportedFiles, 
        targetDate, 
        options.desc
      );
      
      // Output results
      if (options.json) {
        // JSON output for programmatic use
        const jsonResult = {
          processed: supportedFiles.map(file => ({
            filename: path.basename(file),
            fullPath: file,
            success: !batchResult.errors.some((e: any) => e.file === file),
            date: targetDate.toISOString()
          })),
          summary: {
            total: batchResult.total,
            success: batchResult.successful,
            errors: batchResult.failed
          },
          targetDate: targetDate.toISOString(),
          format: dateResult.format
        };
        console.log(JSON.stringify(jsonResult, null, 2));
        
      } else if (options.quiet) {
        // Quiet mode - output successful filenames for piping
        const successFiles = supportedFiles.filter(file => 
          !batchResult.errors.some((e: any) => e.file === file)
        );
        successFiles.forEach(file => console.log(file));
        
      } else {
        // Default human-readable output
        console.error('');
        supportedFiles.forEach((file, index) => {
          const hasError = batchResult.errors.some((e: any) => e.file === file);
          const status = hasError ? chalk.red('❌') : chalk.green('✅');
          console.error(`├── [${index + 1}/${supportedFiles.length}] ${path.basename(file)} ${status}`);
        });
        
        console.error('');
        console.error(chalk.green(`✅ Successfully processed ${batchResult.successful} images`));
        
        if (batchResult.failed > 0) {
          console.error(chalk.red(`❌ Failed: ${batchResult.failed} images`));
          batchResult.errors.forEach((error: any) => {
            console.error(chalk.red(`   • ${path.basename(error.file)}: ${error.error}`));
          });
        }
      }
      
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : String(error);
      console.error(chalk.red('❌ Date operation failed:'), errorMessage);
      process.exit(1);
    }
  });

// VALIDATE command - Photo validation and quality checking
program
  .command('validate')
  .argument('[files...]', 'Files or directories to validate (supports patterns, or stdin)')
  .description('Validate photo quality and completeness')
  .option('-r, --recursive', 'Process directories recursively')
  .option('--critical-only', 'Check only critical requirements (faster)')
  .option('--json', 'JSON output for programmatic use')
  .option('-q, --quiet', 'Pipe-friendly output (validation status only)')
  .option('-v, --verbose', 'Detailed validation information')
  .option('--fail-fast', 'Stop on first validation failure')
  .option('--stdin', 'Explicit stdin mode')
  .option('--auto-fix', 'Automatically fix validation issues when possible')
  .option('--dry-run', 'Show what would be fixed without making changes')
  .option('--backup-dir <dir>', 'Custom backup directory for auto-fix', '.autofix-backup')
  .addHelpText('after', `
${chalk.green('Examples:')}
  ${chalk.cyan('mmp validate photo.jpg')}
    Validate single photo with full rule checking
    
  ${chalk.cyan('mmp validate *.jpg --critical-only')}
    Fast validation of critical requirements only
    
  ${chalk.cyan('find /photos/staging -name "*.jpg" | mmp validate --stdin')}
    Process files from stdin pipe
    
  ${chalk.cyan('mmp validate /heritage-batch/ --recursive --json')}
    Validate directory with JSON output
    
  ${chalk.cyan('mmp validate *.jpg --quiet | grep FAIL')}
    Pipe-friendly validation status checking
    
  ${chalk.cyan('mmp validate *.jpg --auto-fix')}
    Validate and automatically fix issues
    
  ${chalk.cyan('mmp validate /staging/ --auto-fix --dry-run --recursive')}
    Show what would be fixed without making changes

${chalk.green('Validation Rules:')}
  ${chalk.yellow('Post-Digital Photos:')} 7 critical + 4 quality + 2 bonus rules
  • File readability and format validation
  • Dimensions, timestamps, and resolution checks
  • Camera metadata and GPS data presence
  • Color analysis and technical metadata
  
  ${chalk.yellow('Heritage-Scan Photos:')} 6 critical + 3 quality + 3 expected rules  
  • Heritage metadata and scan source validation
  • High-resolution scan quality (>=2MP)
  • Format suitability for long-term preservation
  • Creator information and series detection
  
${chalk.green('Photo Type Detection:')}
  • Automatic detection via XMP metadata
  • Heritage photos: XMP digitalSourceType contains "Scanned"
  • Post-digital: Standard EXIF camera metadata
  • Uses existing pipeline router logic for consistency
  
${chalk.green('Auto-Fix Capabilities:')}
  • Missing metadata sidecar generation
  • Filename correction based on EXIF dates
  • GPS enrichment for existing coordinates  
  • Color analysis re-extraction
  • File backup system before modifications
  • Safe rollback capabilities
`)
  .action(async (files, options) => {
    console.error(chalk.green('🔍 MMP Validate: Photo quality validation...'));
    
    try {
      // Import validation service from pipeline-cli built distribution
      const { ValidationService, AutoFixService } = await import('../../pipeline-cli/dist/services/validation/index.js');
      const { FileSystemService } = await import('../../pipeline-cli/dist/services/filesystem/index.js');
      const fs = await import('fs');
      const path = await import('path');
      
      // Initialize services
      const validationService = new ValidationService();
      const fsService = new FileSystemService();
      
      // Initialize auto-fix service if requested
      let autoFixService: any = null;
      if (options.autoFix) {
        autoFixService = new AutoFixService(validationService, {
          enableBackup: !options.dryRun,
          backupDirectory: options.backupDir,
          dryRun: options.dryRun,
          fixTypes: {
            missingMetadata: true,
            incorrectFilename: true,
            missingGPS: true,
            missingColors: true
          }
        });
        
        if (!options.quiet) {
          console.error(chalk.blue(`🔧 Auto-fix enabled ${options.dryRun ? '(dry run)' : '(with backup)'}`));
        }
      }
      
      // Determine input source
      let inputFiles: string[] = [];
      
      // Check if we should read from stdin
      const shouldReadStdin = !files.length || options.stdin;
      if (shouldReadStdin && !process.stdin.isTTY) {
        // Read from stdin
        const stdin = process.stdin;
        stdin.setEncoding('utf8');
        
        let stdinData = '';
        for await (const chunk of stdin) {
          stdinData += chunk;
        }
        
        inputFiles = stdinData.trim().split('\n').filter(line => line.trim());
        
        if (!options.quiet) {
          console.error(chalk.blue(`📥 Read ${inputFiles.length} files from stdin`));
        }
      } else if (files.length > 0) {
        inputFiles = files;
      } else {
        console.error(chalk.red('❌ No files provided via arguments or stdin'));
        process.exit(1);
      }
      
      // Expand file patterns and directories
      const expandedFiles: string[] = [];
      
      for (const filePattern of inputFiles) {
        try {
          const stat = await fs.promises.stat(filePattern);
          if (stat.isDirectory()) {
            if (!options.recursive) {
              console.error(chalk.red(`❌ Directory processing requires --recursive flag: ${filePattern}`));
              process.exit(1);
            }
            // Find all supported files in directory
            const pattern = path.join(filePattern, '**/*.{jpg,jpeg,tiff,tif,png,heic,gif,webp}');
            const { glob } = await import('glob');
            const dirFiles = await glob(pattern, { ignore: ['**/.*'] });
            expandedFiles.push(...dirFiles);
          } else {
            expandedFiles.push(filePattern);
          }
        } catch (error) {
          // File doesn't exist, try as glob pattern
          const { glob } = await import('glob');
          const globFiles = await glob(filePattern);
          if (globFiles.length === 0) {
            console.error(chalk.yellow(`⚠️  No files found matching: ${filePattern}`));
          } else {
            expandedFiles.push(...globFiles);
          }
        }
      }
      
      if (expandedFiles.length === 0) {
        console.error(chalk.red('❌ No files found to validate'));
        process.exit(1);
      }
      
      // Filter to supported image formats
      const supportedExtensions = ['.jpg', '.jpeg', '.png', '.tiff', '.tif', '.heic', '.gif', '.webp'];
      const supportedFiles = expandedFiles.filter(file => {
        const ext = path.extname(file).toLowerCase();
        return supportedExtensions.includes(ext);
      });
      
      const unsupportedCount = expandedFiles.length - supportedFiles.length;
      if (unsupportedCount > 0 && !options.quiet) {
        console.error(chalk.yellow(`⚠️  Skipping ${unsupportedCount} unsupported files`));
      }
      
      if (supportedFiles.length === 0) {
        console.error(chalk.red('❌ No supported image files found'));
        console.error(chalk.gray(`Supported formats: ${supportedExtensions.join(', ')}`));
        process.exit(1);
      }
      
      if (!options.quiet) {
        console.error(chalk.blue(`🔍 Validating ${supportedFiles.length} photos...`));
      }
      
      // Process files
      const results = [];
      let totalValidated = 0;
      let totalPassed = 0;
      let totalFailed = 0;
      
      for (const filePath of supportedFiles) {
        try {
          // Create MediaFile object using filesystem service
          const validation = await fsService.validateFile(filePath);
          if (!validation.isValid) {
            throw new Error(`File validation failed: ${validation.errors.join(', ')}`);
          }
          
          const metadata = await fsService.getFileMetadata(filePath);
          if (!metadata) {
            throw new Error('Failed to retrieve file metadata');
          }
          
          // Import MIME detection and path utilities from pipeline-cli
          const { detectMimeType } = await import('../../pipeline-cli/dist/utils/mime.js');
          const { toRelativePath } = await import('../../pipeline-cli/dist/utils/paths.js');
          
          const mimeType = detectMimeType(filePath);
          if (!mimeType) {
            throw new Error(`Unsupported file format: ${filePath}`);
          }
          
          const fileInfo = {
            path: toRelativePath(filePath),
            absolutePath: filePath,
            hash: 'validation-placeholder-hash',
            size: metadata.size,
            mimeType,
            sidecarMetadata: []
          };
          
          let validationResult;
          
          if (options.criticalOnly) {
            // Fast critical-only validation
            validationResult = await validationService.validateCriticalRequirements(fileInfo);
            
            results.push({
              file: filePath,
              passed: validationResult.passed,
              failures: validationResult.failures,
              mode: 'critical-only'
            });
          } else {
            // Full validation
            let report = await validationService.validatePhoto(fileInfo);
            
            // Auto-fix if requested and validation failed
            let autoFixReport = null;
            if (autoFixService && !report.passed) {
              if (!options.quiet) {
                console.error(chalk.blue(`🔧 Auto-fixing: ${path.basename(filePath)}`));
              }
              
              try {
                autoFixReport = await autoFixService.autoFix(fileInfo);
                
                if (!options.quiet && !options.dryRun) {
                  console.error(chalk.green(`   Fixed ${autoFixReport.fixSucceeded}/${autoFixReport.fixAttempted} issues`));
                }
                
                // Re-validate after fixes
                if (autoFixReport.fixSucceeded > 0 && !options.dryRun) {
                  const postFixReport = await validationService.validatePhoto(fileInfo);
                  report = postFixReport;
                  
                  if (!options.quiet) {
                    // Note: report is now postFixReport, so calculate improvement from original
                    console.error(chalk.green(`   Score improved to: ${postFixReport.weightedScore}%`));
                  }
                }
              } catch (autoFixError) {
                if (!options.quiet) {
                  console.error(chalk.yellow(`   Auto-fix failed: ${autoFixError instanceof Error ? autoFixError.message : 'Unknown error'}`));
                }
              }
            }
            
            results.push({
              file: filePath,
              passed: report.passed,
              report: report,
              autoFixReport,
              mode: 'full'
            });
          }
          
          totalValidated++;
          const currentResult = results[results.length - 1];
          if (currentResult && currentResult.passed) {
            totalPassed++;
          } else {
            totalFailed++;
            
            // Fail fast if requested
            if (options.failFast) {
              console.error(chalk.red(`❌ Validation failed, stopping: ${path.basename(filePath)}`));
              break;
            }
          }
          
          if (options.verbose && !options.quiet) {
            const result = results[results.length - 1];
            if (result) {
              const status = result.passed ? chalk.green('✅ PASS') : chalk.red('❌ FAIL');
              console.error(`├── [${totalValidated}/${supportedFiles.length}] ${path.basename(filePath)} ${status}`);
            }
          }
          
        } catch (error) {
          totalFailed++;
          const errorMessage = error instanceof Error ? error.message : 'Unknown error';
          
          results.push({
            file: filePath,
            passed: false,
            error: errorMessage,
            mode: 'error'
          });
          
          if (!options.quiet) {
            console.error(chalk.red(`❌ Validation error: ${path.basename(filePath)} - ${errorMessage}`));
          }
          
          if (options.failFast) {
            break;
          }
        }
      }
      
      // Output results
      if (options.json) {
        // JSON output for programmatic use
        const jsonResult = {
          summary: {
            total: totalValidated,
            passed: totalPassed,
            failed: totalFailed
          },
          files: results.map(r => ({
            filename: path.basename(r.file),
            fullPath: r.file,
            passed: r.passed,
            ...(r.mode === 'critical-only' && { failures: r.failures }),
            ...(r.mode === 'full' && { 
              photoType: r.report?.photoType,
              overallScore: r.report?.overallScore,
              summary: r.report?.summary 
            }),
            ...(r.autoFixReport && {
              autoFix: {
                attempted: r.autoFixReport.fixAttempted,
                succeeded: r.autoFixReport.fixSucceeded,
                failed: r.autoFixReport.fixFailed,
                fixes: r.autoFixReport.fixes
              }
            }),
            ...(r.error && { error: r.error })
          }))
        };
        console.log(JSON.stringify(jsonResult, null, 2));
        
      } else if (options.quiet) {
        // Quiet mode - output validation status for piping
        results.forEach(r => {
          const status = r.passed ? 'PASS' : 'FAIL';
          console.log(`${status}:${r.file}`);
        });
        
      } else {
        // Default human-readable output
        console.error('');
        console.error(chalk.green('📊 Validation Results:'));
        console.error(chalk.green(`✅ Passed: ${totalPassed} photos`));
        
        if (totalFailed > 0) {
          console.error(chalk.red(`❌ Failed: ${totalFailed} photos`));
          console.error('');
          console.error(chalk.red('Failed validations:'));
          
          results
            .filter(r => !r.passed)
            .slice(0, 10) // Limit to first 10 failures
            .forEach(r => {
              if (r.mode === 'critical-only') {
                console.error(chalk.red(`  • ${path.basename(r.file)}: ${r.failures?.join(', ')}`));
              } else if (r.error) {
                console.error(chalk.red(`  • ${path.basename(r.file)}: ${r.error}`));
              } else {
                console.error(chalk.red(`  • ${path.basename(r.file)}: Score ${r.report?.overallScore}%`));
              }
            });
            
          if (results.filter(r => !r.passed).length > 10) {
            console.error(chalk.gray(`  ... and ${results.filter(r => !r.passed).length - 10} more failures`));
          }
        }
        
        // Show auto-fix summary if auto-fix was used
        if (autoFixService) {
          const autoFixResults = results.filter(r => r.autoFixReport);
          if (autoFixResults.length > 0) {
            console.error('');
            console.error(chalk.blue('🔧 Auto-Fix Summary:'));
            
            const totalAttempted = autoFixResults.reduce((sum, r) => sum + (r.autoFixReport?.fixAttempted || 0), 0);
            const totalSucceeded = autoFixResults.reduce((sum, r) => sum + (r.autoFixReport?.fixSucceeded || 0), 0);
            const totalFailedFixes = autoFixResults.reduce((sum, r) => sum + (r.autoFixReport?.fixFailed || 0), 0);
            
            console.error(chalk.green(`✅ Fixed: ${totalSucceeded}/${totalAttempted} issues across ${autoFixResults.length} files`));
            if (totalFailedFixes > 0) {
              console.error(chalk.yellow(`⚠️  Failed to fix: ${totalFailedFixes} issues`));
            }
            
            if (options.dryRun) {
              console.error(chalk.gray('(Dry run - no changes were made)'));
            }
          }
        }
        
        console.error('');
        const passRate = totalValidated > 0 ? Math.round((totalPassed / totalValidated) * 100) : 0;
        console.error(chalk.green(`🎉 Validation complete: ${passRate}% pass rate`));
      }
      
      // Exit with appropriate code
      process.exit(totalFailed > 0 ? 1 : 0);
      
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : String(error);
      console.error(chalk.red('❌ Validation operation failed:'), errorMessage);
      process.exit(1);
    }
  });

// ROTATE command - Rotation operations
program
  .command('rotate')
  .argument('<path>', 'File or directory path')
  .description('Rotate media files')
  .option('-i, --interactive', 'Interactive rotation review')
  .option('-r, --rotate <degrees>', 'Rotation amount (90, 180, 270)')
  .action(async (path, options) => {
    console.log(chalk.red('❌ ROTATE command not yet implemented - refactoring in progress'));
    console.log('Path:', path);
    console.log('Options:', options);
  });

// SCRAPBOOK command - Document processing workflow
program
  .command('scrapbook')
  .argument('<directory>', 'Directory containing scrapbook images')
  .description('Process scrapbook documents with transcription and metadata')
  .option('--series <name>', 'Series name for linking ' + chalk.red('[REQUIRED]'))
  .option('--location <location>', 'Location name or GPS coordinates ' + chalk.red('[REQUIRED]'))
  .option('--subject <subject>', 'Subject classification', 'scrapbook')
  .option('--keywords <keywords>', 'Keywords for searchability ' + chalk.gray('[optional]'))
  .option('--copyright <owner>', 'Copyright owner', 'Young Family Archive')
  .option('--creator <name>', 'Creator/author name', 'Stephen Young')
  .option('--no-transcribe', 'Skip transcription step')
  .option('--no-embed-text', 'Skip embedding transcriptions in EXIF')
  .option('--no-normalize', 'Skip filename normalization')
  .option('--no-metadata', 'Skip metadata application')
  .option('--dry-run', 'Show what would be processed without changes')
  .option('-v, --verbose', 'Detailed processing information')
  .addHelpText('after', `
${chalk.green('Examples:')}
  ${chalk.cyan('mmp scrapbook /photos/family-letters --series "Family Letters" --location "Boston, MA"')}
    Full workflow with required options
    
  ${chalk.cyan('mmp scrapbook /scans/documents --series "Legal Docs" --location "42.3601,-71.0589" --keywords "legal, 1980s"')}
    With GPS coordinates and keywords
    
  ${chalk.cyan('mmp scrapbook /heritage-docs --series "WWII Letters" --location "Massachusetts" --no-transcribe')}
    Skip transcription if already done
    
${chalk.green('Processing Steps (all enabled by default):')}
  • Transcription: Extract text using OCR
  • Filename normalization: Replace spaces with underscores
  • Text embedding: Add transcriptions to EXIF UserComment
  • Metadata application: Full EXIF enrichment with series linking
`)
  .action(async (directory, options) => {
    console.error(chalk.green('📄 MMP Scrapbook: Processing document collection...'));
    
    try {
      // Validate required options
      if (!options.series) {
        console.error(chalk.red('❌ Series name is required. Use --series "Your Series Name"'));
        console.error(chalk.gray('Example: mmp scrapbook /path --series "Family Letters" --location "Boston, MA"'));
        process.exit(1);
      }
      
      if (!options.location) {
        console.error(chalk.red('❌ Location is required. Use --location "City, State" or coordinates'));
        console.error(chalk.gray('Example: --location "Sandown, NH" or --location "42.3601,-71.0589"'));
        process.exit(1);
      }
      
      // Validate directory exists (like other MMP commands)
      const fs = await import('fs');
      if (!fs.existsSync(directory)) {
        console.error(chalk.red(`❌ Directory not found: ${directory}`));
        process.exit(1);
      }
      
      const stat = await fs.promises.stat(directory);
      if (!stat.isDirectory()) {
        console.error(chalk.red(`❌ Path is not a directory: ${directory}`));
        process.exit(1);
      }
      
      // Check for supported image files
      const { glob } = await import('glob');
      const path = await import('path');
      const pattern = path.join(directory, '*.{jpg,jpeg,png,tiff,tif}');
      const imageFiles = await glob(pattern, { ignore: ['**/.*'] });
      
      if (imageFiles.length === 0) {
        console.error(chalk.red('❌ No supported image files found'));
        console.error(chalk.gray('Supported formats: .jpg, .jpeg, .png, .tiff, .tif'));
        process.exit(1);
      }
      
      console.error(chalk.blue(`🔍 Found ${imageFiles.length} images to process`));
      
      // Import and use ScrapbookService
      const { ScrapbookService } = await import('./services/ScrapbookService.js');
      const scrapbookService = new ScrapbookService();
      
      const scrapbookOptions = {
        series: options.series,
        location: options.location,
        subject: options.subject,
        keywords: options.keywords,
        copyright: options.copyright,
        creator: options.creator,
        transcribe: !options.noTranscribe,
        embedText: !options.noEmbedText,
        normalizeFilenames: !options.noNormalize,
        applyMetadata: !options.noMetadata
      };
      
      if (options.dryRun) {
        console.error(chalk.yellow('🔍 DRY RUN - No changes will be made'));
        console.error(chalk.blue('Would process:'));
        imageFiles.forEach((file, index) => {
          console.error(chalk.gray(`  [${index + 1}/${imageFiles.length}] ${path.basename(file)}`));
        });
        return;
      }
      
      await scrapbookService.processScrapbook(directory, scrapbookOptions);
      
      console.error(chalk.green('🎉 Scrapbook processing complete!'));
      
      // Output successful file paths to stdout for piping
      imageFiles.forEach(file => console.log(file));
      
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : String(error);
      console.error(chalk.red('❌ Scrapbook processing failed:'), errorMessage);
      process.exit(1);
    }
  });

// TRANSCRIBE command - Text/content extraction
program
  .command('transcribe')
  .argument('<file>', 'Media file (image or video)')
  .description('Extract text or speech from media')
  .option('--ai-enhance', 'Use AI for enhanced analysis')
  .action(async (file, options) => {
    console.log(chalk.red('❌ TRANSCRIBE command not yet implemented - refactoring in progress'));
    console.log('File:', file);
    console.log('Options:', options);
  });

// SUGGEST-NAME command - AI filename suggestions
program
  .command('suggest-name')
  .argument('<file>', 'Media file')
  .description('Suggest filename based on content analysis')
  .option('--ai-enhance', 'Use AI for enhanced analysis')
  .action(async (file, options) => {
    console.log(chalk.red('❌ SUGGEST-NAME command not yet implemented - refactoring in progress'));
    console.log('File:', file);
    console.log('Options:', options);
  });

// Global help enhancement
program.addHelpText('after', `
${chalk.green('Example Commands (per plan specification):')}
  ${chalk.cyan('mmp scan --flatbed --date 1990-12-25 --desc "christmas photos" --location cottage')}
  ${chalk.cyan('mmp scan --adf --duplex --output /documents/contracts/')}
  ${chalk.cyan('mmp crop /scans/multi-photo.jpg --background red')}
  ${chalk.cyan('mmp gps /photos/2020/ --location cottage --batch')}
  ${chalk.cyan('mmp dates /scanned-photos/ --set "1985-12-25"')}
  ${chalk.cyan('mmp scrapbook /heritage-docs --series "Family Letters" --location "Boston, MA"')}
  ${chalk.cyan('mmp rotate /photos/ --interactive')}
  ${chalk.cyan('mmp transcribe document.jpg')}
  ${chalk.cyan('mmp transcribe interview.mp4 --ai-enhance')}
  ${chalk.cyan('mmp suggest-name mystery-scan.jpg --ai-enhance')}

${chalk.green('Configuration:')}
  Config file: ~/.config/mmp/config.json
  Assets: ~/.local/share/mmp/
`);

// Parse arguments and run
program.parse();