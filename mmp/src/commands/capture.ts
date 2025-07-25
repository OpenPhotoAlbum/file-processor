/**
 * Capture Command - "Get media into digital form"
 * 
 * Handles physical scanning operations and photo separation
 */

import { Command } from 'commander';
import chalk from 'chalk';

export const captureCommand = new Command('capture')
  .description(chalk.blue('Get media into digital form'))
  .addHelpText('after', `
${chalk.green('Examples:')}
  ${chalk.cyan('mmp capture --flatbed --date 1990-12-25 --location cottage')}
    Scan photos from flatbed with metadata
    
  ${chalk.cyan('mmp capture --adf --duplex --output /documents/')}
    Scan documents using automatic document feeder
    
  ${chalk.cyan('mmp capture --separate-photos scan.jpg --background red')}
    Separate multiple photos from single scan
    
  ${chalk.cyan('mmp capture --webcam --burst 5')}
    Capture multiple photos from webcam
    
${chalk.green('Workflows:')}
  • Physical scanning from flatbed or ADF
  • Photo separation using multicrop technology  
  • Webcam capture for quick digitization
  • Automatic metadata application during capture
`);

// Flatbed scanning
captureCommand
  .command('flatbed')
  .description('Scan from flatbed scanner')
  .option('-d, --date <date>', 'Set capture date (YYYY-MM-DD or YYYY-MM-DD HH:MM:SS)')
  .option('-l, --location <location>', 'Set GPS location (name or coordinates)')
  .option('--desc <description>', 'Description for filename')
  .option('--device <device>', 'Scanner device', 'airscan:e0:HP')
  .option('--format <format>', 'Output format', 'jpeg')
  .option('--resolution <dpi>', 'Scan resolution', '300')
  .option('--output <dir>', 'Output directory', '/photos/staging/')
  .action(async (options) => {
    console.log(chalk.green('📸 Starting flatbed capture...'));
    console.log('Options:', options);
    
    try {
      // Generate filename with timestamp
      const timestamp = new Date().toISOString().slice(0, 19).replace(/[:-]/g, '').replace('T', '_');
      const desc = options.desc ? `${options.desc}_` : '';
      const filename = `${timestamp}_${desc}scan.${options.format}`;
      const outputPath = `${options.output}/${filename}`;
      
      console.log(chalk.blue(`📄 Scanning to: ${filename}`));
      
      // Build scanimage command
      const { spawn } = await import('child_process');
      const scanArgs = [
        `--device=${options.device}`,
        `--mode=Color`,
        `--resolution=${options.resolution}`,
        `--format=${options.format}`
      ];
      
      console.log(chalk.gray(`Running: scanimage ${scanArgs.join(' ')} > ${outputPath}`));
      
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
          console.log(chalk.green(`✅ Scan complete: ${filename}`));
          
          // Apply metadata if provided
          if (options.date || options.location) {
            console.log(chalk.blue('📝 Applying metadata...'));
            // TODO: Apply EXIF metadata with date/location
            console.log(chalk.gray('Metadata application not yet implemented'));
          }
          
          console.log(chalk.green('🎉 Capture finished successfully!'));
        } else {
          console.error(chalk.red(`❌ Scanner failed with exit code ${code}`));
          process.exit(1);
        }
      });
      
    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : String(error);
      console.error(chalk.red('❌ Capture failed:'), errorMessage);
      process.exit(1);
    }
  });

// ADF scanning  
captureCommand
  .command('adf')
  .description('Scan from automatic document feeder')
  .option('--duplex', 'Scan both sides')
  .option('--format <format>', 'Output format', 'pdf')
  .option('--merge', 'Merge pages into single PDF')
  .option('--output <dir>', 'Output directory', '/photos/staging/')
  .action(async (options) => {
    console.log(chalk.green('📄 Starting ADF capture...'));
    console.log('Options:', options);
    // TODO: Implement ADF scanning logic
  });

// Photo separation
captureCommand
  .command('separate-photos')
  .argument('<scan-file>', 'Scan file containing multiple photos')
  .description('Separate multiple photos from single scan')
  .option('-b, --background <color>', 'Background color/reference', 'white')
  .option('-r, --reference <file>', 'Reference background image')
  .option('--keep-original', 'Keep original scan file')
  .option('--output <dir>', 'Output directory', './separated/')
  .action(async (scanFile, options) => {
    console.log(chalk.green('✂️  Starting photo separation...'));
    console.log('Scan file:', scanFile);
    console.log('Options:', options);
    // TODO: Implement multicrop logic
  });

// Webcam capture
captureCommand
  .command('webcam')
  .description('Capture from webcam')
  .option('--burst <count>', 'Number of photos to capture', '1')
  .option('--delay <seconds>', 'Delay between captures', '2')
  .option('--output <dir>', 'Output directory', './webcam/')
  .action(async (options) => {
    console.log(chalk.green('📷 Starting webcam capture...'));
    console.log('Options:', options);
    // TODO: Implement webcam capture logic
  });

// Default command behavior (show help)
captureCommand.action(() => {
  captureCommand.help();
});