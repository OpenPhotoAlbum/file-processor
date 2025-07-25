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
  .option('-d, --date <date>', 'Set capture date (YYYY-MM-DD)')
  .option('-l, --location <location>', 'Set GPS location (name or coordinates)')
  .option('--desc <description>', 'Description for filename')
  .option('--device <device>', 'Scanner device', 'airscan:e0:HP')
  .option('--format <format>', 'Output format', 'jpeg')
  .option('--resolution <dpi>', 'Scan resolution', '300')
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
  .option('-r, --reference <file>', 'Reference background image')
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
  .option('-s, --set <location>', 'Set location (coordinates, city, or shortcut)')
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
  .option('-s, --set <date>', 'Set date (YYYY-MM-DD, MM-DD-YYYY, YYYY, or YYYY-MM)')
  .option('-r, --recursive', 'Process directories recursively')
  .option('--desc <description>', 'Optional description for heritage context')
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