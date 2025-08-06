/**
 * TranscriptionService - Handles OCR and transcription operations
 * 
 * Supports:
 * - Image OCR via Tesseract
 * - AI enhancement via Claude API
 * - Video/audio transcription via Whisper (future)
 * - Multiple output formats (txt, json, srt, vtt)
 */

import { spawn } from 'child_process';
import * as fs from 'fs';
import * as path from 'path';
import chalk from 'chalk';

export interface TranscriptionOptions {
  format?: 'txt' | 'json' | 'srt' | 'vtt';
  language?: string;
  confidence?: boolean;
  preserveLayout?: boolean;
  aiEnhance?: boolean;
  verbose?: boolean;
  quiet?: boolean;
}

export interface TranscriptionResult {
  success: boolean;
  text?: string;
  confidence?: number;
  aiEnhanced?: boolean;
  metadata?: {
    sourceFile: string;
    language: string;
    processingTime: number;
    method: 'tesseract' | 'whisper' | 'claude' | 'hybrid';
  };
  error?: string;
  formattedOutput?: string;
}

export interface OCRLine {
  text: string;
  confidence: number;
  bbox?: {
    x: number;
    y: number;
    width: number;
    height: number;
  };
}

export class TranscriptionService {
  private tesseractAvailable: boolean | null = null;
  private whisperAvailable: boolean | null = null;

  /**
   * Check if Tesseract OCR is available
   */
  async checkTesseractAvailable(): Promise<boolean> {
    if (this.tesseractAvailable !== null) {
      return this.tesseractAvailable;
    }

    return new Promise((resolve) => {
      const process = spawn('tesseract', ['--version']);
      process.on('error', () => {
        this.tesseractAvailable = false;
        resolve(false);
      });
      process.on('close', (code) => {
        this.tesseractAvailable = code === 0;
        resolve(code === 0);
      });
    });
  }

  /**
   * Check if Whisper is available (for future audio/video support)
   */
  async checkWhisperAvailable(): Promise<boolean> {
    if (this.whisperAvailable !== null) {
      return this.whisperAvailable;
    }

    return new Promise((resolve) => {
      const process = spawn('whisper', ['--help']);
      process.on('error', () => {
        this.whisperAvailable = false;
        resolve(false);
      });
      process.on('close', (code) => {
        this.whisperAvailable = code === 0;
        resolve(code === 0);
      });
    });
  }

  /**
   * Detect file type and route to appropriate transcription method
   */
  async transcribe(filePath: string, options: TranscriptionOptions = {}): Promise<TranscriptionResult> {
    const startTime = Date.now();
    
    // Validate file exists
    if (!fs.existsSync(filePath)) {
      return {
        success: false,
        error: `File not found: ${filePath}`
      };
    }

    // Detect file type
    const ext = path.extname(filePath).toLowerCase();
    const imageExtensions = ['.jpg', '.jpeg', '.png', '.tiff', '.tif', '.bmp', '.pdf'];
    const videoExtensions = ['.mp4', '.mov', '.avi', '.mkv', '.webm'];
    const audioExtensions = ['.mp3', '.wav', '.m4a', '.ogg', '.flac'];

    let result: TranscriptionResult;

    if (imageExtensions.includes(ext)) {
      // Process image with OCR
      result = await this.transcribeImage(filePath, options);
    } else if (videoExtensions.includes(ext)) {
      // Process video (extract audio + transcribe)
      result = await this.transcribeVideo(filePath, options);
    } else if (audioExtensions.includes(ext)) {
      // Process audio directly
      result = await this.transcribeAudio(filePath, options);
    } else {
      return {
        success: false,
        error: `Unsupported file type: ${ext}`
      };
    }

    // Add processing time to metadata
    if (result.metadata) {
      result.metadata.processingTime = Date.now() - startTime;
    }

    // Format output based on requested format
    if (result.success && result.text) {
      result.formattedOutput = this.formatOutput(result, options.format || 'txt');
    }

    return result;
  }

  /**
   * Transcribe image using Tesseract OCR
   */
  private async transcribeImage(filePath: string, options: TranscriptionOptions): Promise<TranscriptionResult> {
    if (!options.quiet) {
      console.error(chalk.blue('🔍 Running OCR on image...'));
    }

    // Check Tesseract availability
    const tesseractAvailable = await this.checkTesseractAvailable();
    if (!tesseractAvailable) {
      return {
        success: false,
        error: 'Tesseract OCR not found. Install with: apt install tesseract-ocr'
      };
    }

    try {
      // Run Tesseract OCR
      const ocrResult = await this.runTesseractOCR(filePath, options);
      
      // If AI enhancement is requested and we have text
      if (options.aiEnhance && ocrResult.text) {
        if (!options.quiet) {
          console.error(chalk.blue('🤖 Enhancing with AI...'));
        }
        
        const enhancedResult = await this.enhanceWithClaude(filePath, ocrResult.text, options);
        if (enhancedResult.success && enhancedResult.text) {
          return {
            ...enhancedResult,
            aiEnhanced: true,
            metadata: {
              sourceFile: filePath,
              language: options.language || 'eng',
              processingTime: 0,
              method: 'hybrid'
            }
          };
        }
      }

      return {
        ...ocrResult,
        metadata: {
          sourceFile: filePath,
          language: options.language || 'eng',
          processingTime: 0,
          method: 'tesseract'
        }
      };
    } catch (error) {
      return {
        success: false,
        error: error instanceof Error ? error.message : String(error)
      };
    }
  }

  /**
   * Run Tesseract OCR on an image
   */
  private async runTesseractOCR(filePath: string, options: TranscriptionOptions): Promise<TranscriptionResult> {
    return new Promise((resolve) => {
      const args = [filePath, 'stdout'];
      
      // Add language option
      if (options.language) {
        args.push('-l', options.language);
      } else {
        args.push('-l', 'eng');
      }

      // Add confidence scores if requested
      if (options.confidence) {
        args.push('--oem', '1', 'tsv');
      }

      // Add layout preservation if requested
      if (options.preserveLayout) {
        args.push('--psm', '6'); // Uniform block of text
      }

      const tesseractProcess = spawn('tesseract', args);
      
      let stdout = '';
      let stderr = '';

      tesseractProcess.stdout.on('data', (data) => {
        stdout += data.toString();
      });

      tesseractProcess.stderr.on('data', (data) => {
        stderr += data.toString();
      });

      tesseractProcess.on('error', (error) => {
        resolve({
          success: false,
          error: `Tesseract error: ${error.message}`
        });
      });

      tesseractProcess.on('close', (code) => {
        if (code === 0) {
          // Parse TSV output if confidence was requested
          let text = stdout;
          let confidence: number | undefined;

          if (options.confidence && stdout.includes('\t')) {
            const { text: parsedText, confidence: parsedConfidence } = this.parseTesseractTSV(stdout);
            text = parsedText;
            confidence = parsedConfidence;
          }

          resolve({
            success: true,
            text: text.trim(),
            ...(confidence !== undefined && { confidence })
          });
        } else {
          resolve({
            success: false,
            error: `Tesseract failed with exit code ${code}: ${stderr}`
          });
        }
      });
    });
  }

  /**
   * Parse Tesseract TSV output to extract text and confidence
   */
  private parseTesseractTSV(tsv: string | undefined): { text: string; confidence: number } {
    if (!tsv) {
      return { text: '', confidence: 0 };
    }
    const lines = tsv.split('\n');
    const words: string[] = [];
    let totalConfidence = 0;
    let wordCount = 0;

    for (const line of lines) {
      const parts = line.split('\t');
      if (parts.length >= 12) {
        const confidenceStr = parts[10];
        const word = parts[11];
        const confidence = confidenceStr ? parseFloat(confidenceStr) : -1;
        
        if (word && word.trim() && confidence >= 0) {
          words.push(word);
          totalConfidence += confidence;
          wordCount++;
        }
      }
    }

    return {
      text: words.join(' '),
      confidence: wordCount > 0 ? totalConfidence / wordCount : 0
    };
  }

  /**
   * Enhance OCR results with Claude API
   */
  private async enhanceWithClaude(filePath: string, ocrText: string, options: TranscriptionOptions): Promise<TranscriptionResult> {
    // Check for Claude API key
    const apiKey = process.env.CLAUDE_API_KEY || process.env.ANTHROPIC_API_KEY;
    if (!apiKey) {
      if (!options.quiet) {
        console.error(chalk.yellow('⚠️  Claude API key not found. Set CLAUDE_API_KEY or ANTHROPIC_API_KEY environment variable.'));
      }
      return {
        success: false,
        error: 'Claude API key not configured'
      };
    }

    try {
      // Read image file as base64
      const imageBuffer = fs.readFileSync(filePath);
      const base64Image = imageBuffer.toString('base64');
      
      // Determine MIME type
      const ext = path.extname(filePath).toLowerCase();
      const mimeTypes: { [key: string]: string } = {
        '.jpg': 'image/jpeg',
        '.jpeg': 'image/jpeg',
        '.png': 'image/png',
        '.gif': 'image/gif',
        '.webp': 'image/webp'
      };
      const mimeType = mimeTypes[ext] || 'image/jpeg';

      // Prepare Claude API request
      const response = await fetch('https://api.anthropic.com/v1/messages', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'x-api-key': apiKey,
          'anthropic-version': '2023-06-01'
        },
        body: JSON.stringify({
          model: 'claude-3-haiku-20240307',
          max_tokens: 4096,
          messages: [
            {
              role: 'user',
              content: [
                {
                  type: 'image',
                  source: {
                    type: 'base64',
                    media_type: mimeType,
                    data: base64Image
                  }
                },
                {
                  type: 'text',
                  text: `Please transcribe ALL text visible in this image. Be extremely thorough and include every word you can see.

Here is what Tesseract OCR detected (may have errors):
${ocrText}

Please provide a complete and accurate transcription, correcting any OCR errors and including any text that was missed. Format the text to preserve the original layout as much as possible.`
                }
              ]
            }
          ]
        })
      });

      if (!response.ok) {
        const errorText = await response.text();
        throw new Error(`Claude API error: ${response.status} - ${errorText}`);
      }

      const data = await response.json();
      const enhancedText = data.content[0].text;

      return {
        success: true,
        text: enhancedText,
        aiEnhanced: true
      };
    } catch (error) {
      if (!options.quiet) {
        console.error(chalk.yellow('⚠️  AI enhancement failed, using OCR result only'));
      }
      return {
        success: false,
        error: error instanceof Error ? error.message : String(error)
      };
    }
  }

  /**
   * Transcribe video (placeholder for future implementation)
   */
  private async transcribeVideo(filePath: string, options: TranscriptionOptions): Promise<TranscriptionResult> {
    return {
      success: false,
      error: 'Video transcription not yet implemented. Coming soon with Whisper integration.'
    };
  }

  /**
   * Transcribe audio (placeholder for future implementation)
   */
  private async transcribeAudio(filePath: string, options: TranscriptionOptions): Promise<TranscriptionResult> {
    return {
      success: false,
      error: 'Audio transcription not yet implemented. Coming soon with Whisper integration.'
    };
  }

  /**
   * Format transcription output based on requested format
   */
  private formatOutput(result: TranscriptionResult, format: string): string {
    const text = result.text || '';

    switch (format) {
      case 'json':
        return JSON.stringify({
          text,
          confidence: result.confidence,
          aiEnhanced: result.aiEnhanced,
          metadata: result.metadata
        }, null, 2);
      
      case 'srt':
        // Simple SRT format (for future video support)
        return `1\n00:00:00,000 --> 00:00:10,000\n${text}\n`;
      
      case 'vtt':
        // Simple WebVTT format (for future video support)
        return `WEBVTT\n\n00:00:00.000 --> 00:00:10.000\n${text}\n`;
      
      case 'txt':
      default:
        return text;
    }
  }
}

// Export singleton instance
export const transcriptionService = new TranscriptionService();