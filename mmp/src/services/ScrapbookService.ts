import { spawn } from 'child_process';
import { promises as fs } from 'fs';
import path from 'path';
import chalk from 'chalk';

export interface ScrapbookOptions {
  series: string;
  location: string;
  subject?: string;
  keywords?: string;
  copyright?: string;
  creator?: string;
  
  // Processing flags (default true)
  transcribe?: boolean;
  embedText?: boolean;
  normalizeFilenames?: boolean;
  applyMetadata?: boolean;
}

export class ScrapbookService {
  
  // Step 1: Transcribe all images using tesseract OCR directly
  async transcribeAll(directory: string): Promise<void> {
    console.error(chalk.blue('📝 Step 1: Transcribing images...'));
    
    const imageFiles = await this.getImageFiles(directory);
    
    for (const file of imageFiles) {
      console.error(chalk.gray(`Processing: ${path.basename(file)}`));
      
      try {
        // Use tesseract directly for OCR transcription
        const outputFile = `${file}.txt`;
        await this.executeCommand(`tesseract "${file}" "${file}" -l eng`);
        console.error(chalk.green('  ✓ Successfully transcribed'));
      } catch (error) {
        console.error(chalk.red('  ✗ Failed to transcribe'));
        throw error;
      }
    }
    
    console.error(chalk.green('✅ Transcription complete!'));
  }
  
  // Step 2: Normalize filenames (from rename-spaces-to-underscores.sh)
  async normalizeFilenames(directory: string): Promise<void> {
    console.error(chalk.blue('🔧 Step 2: Normalizing filenames...'));
    
    const files = await fs.readdir(directory);
    let count = 0;
    
    for (const file of files) {
      if (file.includes(' ')) {
        const oldPath = path.join(directory, file);
        const newFile = file.replace(/ /g, '_');
        const newPath = path.join(directory, newFile);
        
        console.error(chalk.gray(`Renaming: ${file} → ${newFile}`));
        
        try {
          await fs.rename(oldPath, newPath);
          console.error(chalk.green('  ✓ Renamed successfully'));
          count++;
        } catch (error) {
          console.error(chalk.red('  ✗ Failed to rename'));
          throw error;
        }
      }
    }
    
    console.error(chalk.green(`✅ Rename complete! Total files renamed: ${count}`));
  }
  
  // Step 3: Embed transcriptions in EXIF (from add-transcriptions-to-exif.sh)
  async embedTranscriptions(directory: string): Promise<void> {
    console.error(chalk.blue('💾 Step 3: Embedding transcriptions in EXIF...'));
    
    const imageFiles = await this.getImageFiles(directory);
    
    for (const imgFile of imageFiles) {
      const txtFile = `${imgFile}.txt`;
      
      try {
        // Check if transcription file exists
        await fs.access(txtFile);
        
        console.error(chalk.gray(`Processing: ${path.basename(imgFile)}`));
        
        // Read transcription
        const transcription = await fs.readFile(txtFile, 'utf8');
        
        // Escape quotes and special characters for shell command
        const escapedTranscription = transcription.replace(/"/g, '\\"').replace(/\$/g, '\\$');
        
        // Add to EXIF UserComment (like your script)
        await this.executeCommand(`exiftool -UserComment="${escapedTranscription}" -overwrite_original "${imgFile}"`);
        
        console.error(chalk.green('  ✓ Added transcription to EXIF'));
        
      } catch (error) {
        if ((error as NodeJS.ErrnoException).code === 'ENOENT') {
          console.error(chalk.yellow(`Skipping ${path.basename(imgFile)} - no .txt file found`));
        } else {
          console.error(chalk.red('  ✗ Failed to update EXIF'));
          throw error;
        }
      }
    }
    
    console.error(chalk.green('✅ EXIF embedding complete!'));
  }
  
  // Step 4: Apply full metadata (from apply-full-scrapbook-treatment.sh) 
  async applyMetadata(directory: string, options: ScrapbookOptions): Promise<void> {
    console.error(chalk.blue('🏷️  Step 4: Applying full metadata treatment...'));
    
    const imageFiles = await this.getImageFiles(directory);
    const totalFiles = imageFiles.length;
    let pageNum = 1;
    
    // Build series document list (like your script)
    const seriesDocsList = imageFiles.map((_, index) => `page ${index + 1}`).join(', ');
    
    for (const imgFile of imageFiles.sort()) {
      console.error(chalk.gray(`Processing: ${path.basename(imgFile)} (Page ${pageNum})`));
      
      try {
        // Build ExifTool command (based on your apply-full-scrapbook-treatment.sh)
        const exifArgs = [
          '-overwrite_original',
          `-DocumentName="${options.series.replace(/\s/g, '-')}-${totalFiles}-Pages"`,
          `-Software="Page ${pageNum} of ${totalFiles}: Personal family narrative. Complete series: ${seriesDocsList}"`,
          `-Subject="${options.subject || 'scrapbook'}"`,
          `-Copyright="${options.copyright || 'Young Family Archive'}"`,
          `-Creator="${options.creator || 'Stephen Young'}"`,
          `-Instructions="Personal family narrative documenting family history and memories"`,
          `-DigitalSourceType="Scanned from original"`,
          `"${imgFile}"`
        ];
        
        // Add keywords if provided
        if (options.keywords) {
          exifArgs.splice(-1, 0, `-Keywords="${options.keywords}, page ${pageNum}"`);
        }
        
        // Add location metadata (integrate with existing LocationService)
        // This would parse location like mmp gps does
        
        await this.executeCommand(`exiftool ${exifArgs.join(' ')}`);
        
        console.error(chalk.green('  ✓ Applied full scrapbook treatment'));
        pageNum++;
        
      } catch (error) {
        console.error(chalk.red('  ✗ Failed to apply treatment'));
        throw error;
      }
    }
    
    console.error(chalk.green('✅ Metadata application complete!'));
  }
  
  // Main orchestrator
  async processScrapbook(directory: string, options: ScrapbookOptions): Promise<void> {
    console.error(chalk.green(`🚀 Processing scrapbook: ${options.series}`));
    console.error(chalk.blue(`📁 Directory: ${directory}`));
    
    if (options.transcribe) await this.transcribeAll(directory);
    if (options.normalizeFilenames) await this.normalizeFilenames(directory);
    if (options.embedText) await this.embedTranscriptions(directory);
    if (options.applyMetadata) await this.applyMetadata(directory, options);
    
    console.error(chalk.green('🎉 All scrapbook processing steps complete!'));
  }
  
  // Helper: Get image files
  private async getImageFiles(directory: string): Promise<string[]> {
    const globModule = await import('glob');
    const globFunc = globModule.glob || globModule.default;
    const pattern = path.join(directory, '*.{jpg,jpeg,png,tiff,tif}');
    return await globFunc(pattern, { ignore: ['**/.*'] });
  }
  
  // Helper: Execute shell command
  private executeCommand(command: string): Promise<void> {
    return new Promise((resolve, reject) => {
      const child = spawn('bash', ['-c', command], { stdio: 'inherit' });
      
      child.on('close', (code) => {
        if (code === 0) {
          resolve();
        } else {
          reject(new Error(`Command failed with exit code ${code}: ${command}`));
        }
      });
      
      child.on('error', (error) => {
        reject(error);
      });
    });
  }
}