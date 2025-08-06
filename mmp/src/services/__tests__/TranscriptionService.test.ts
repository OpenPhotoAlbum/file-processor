/**
 * Unit tests for TranscriptionService
 */

import { TranscriptionService } from '../TranscriptionService';
import * as fs from 'fs';
import * as path from 'path';

// Mock child_process for unit tests
jest.mock('child_process', () => ({
  spawn: jest.fn()
}));

// Mock fs for unit tests
jest.mock('fs', () => ({
  existsSync: jest.fn(),
  readFileSync: jest.fn(),
  promises: {
    writeFile: jest.fn()
  }
}));

// Mock fetch for Claude API tests
global.fetch = jest.fn();

describe('TranscriptionService', () => {
  let transcriptionService: TranscriptionService;
  const mockSpawn = require('child_process').spawn;
  const mockFs = fs as jest.Mocked<typeof fs>;

  beforeEach(() => {
    transcriptionService = new TranscriptionService();
    jest.clearAllMocks();
  });

  describe('checkTesseractAvailable', () => {
    it('should return true when tesseract is available', async () => {
      const mockProcess = {
        on: jest.fn((event, callback) => {
          if (event === 'close') {
            callback(0); // Success exit code
          }
        })
      };

      mockSpawn.mockReturnValue(mockProcess);

      const result = await transcriptionService.checkTesseractAvailable();
      
      expect(result).toBe(true);
      expect(mockSpawn).toHaveBeenCalledWith('tesseract', ['--version']);
    });

    it('should return false when tesseract is not available', async () => {
      const mockProcess = {
        on: jest.fn((event, callback) => {
          if (event === 'error') {
            callback(new Error('Command not found'));
          }
        })
      };

      mockSpawn.mockReturnValue(mockProcess);

      const result = await transcriptionService.checkTesseractAvailable();
      
      expect(result).toBe(false);
    });

    it('should cache the result after first check', async () => {
      const mockProcess = {
        on: jest.fn((event, callback) => {
          if (event === 'close') {
            callback(0);
          }
        })
      };

      mockSpawn.mockReturnValue(mockProcess);

      // First call
      await transcriptionService.checkTesseractAvailable();
      // Second call
      await transcriptionService.checkTesseractAvailable();

      // Should only spawn once due to caching
      expect(mockSpawn).toHaveBeenCalledTimes(1);
    });
  });

  describe('transcribe', () => {
    beforeEach(() => {
      mockFs.existsSync.mockReturnValue(true);
    });

    it('should return error for non-existent file', async () => {
      mockFs.existsSync.mockReturnValue(false);

      const result = await transcriptionService.transcribe('/path/to/nonexistent.jpg');

      expect(result.success).toBe(false);
      expect(result.error).toBe('File not found: /path/to/nonexistent.jpg');
    });

    it('should return error for unsupported file type', async () => {
      const result = await transcriptionService.transcribe('/path/to/file.unsupported');

      expect(result.success).toBe(false);
      expect(result.error).toBe('Unsupported file type: .unsupported');
    });

    it('should route image files to OCR processing', async () => {
      // Mock successful tesseract check
      const tesseractCheckProcess = {
        on: jest.fn((event, callback) => {
          if (event === 'close') {
            callback(0);
          }
        })
      };

      // Mock successful OCR process
      const ocrProcess = {
        stdout: {
          on: jest.fn()
        },
        stderr: {
          on: jest.fn()
        },
        on: jest.fn((event, callback) => {
          if (event === 'close') {
            callback(0);
          }
        })
      };

      mockSpawn
        .mockReturnValueOnce(tesseractCheckProcess) // For tesseract availability check
        .mockReturnValueOnce(ocrProcess); // For actual OCR

      // Mock stdout data
      ocrProcess.stdout.on.mockImplementation((event, callback) => {
        if (event === 'data') {
          callback('Sample text from OCR');
        }
      });

      ocrProcess.stderr.on.mockImplementation((event, callback) => {
        if (event === 'data') {
          callback('');
        }
      });

      const result = await transcriptionService.transcribe('/path/to/test.jpg', {
        quiet: true
      });

      expect(result.success).toBe(true);
      expect(result.text).toBe('Sample text from OCR');
      expect(result.metadata?.method).toBe('tesseract');
    });

    it('should handle video files appropriately', async () => {
      const result = await transcriptionService.transcribe('/path/to/test.mp4');

      expect(result.success).toBe(false);
      expect(result.error).toBe('Video transcription not yet implemented. Coming soon with Whisper integration.');
    });

    it('should handle audio files appropriately', async () => {
      const result = await transcriptionService.transcribe('/path/to/test.mp3');

      expect(result.success).toBe(false);
      expect(result.error).toBe('Audio transcription not yet implemented. Coming soon with Whisper integration.');
    });
  });

  describe('formatOutput', () => {
    const mockResult = {
      success: true,
      text: 'Sample transcribed text',
      confidence: 95.5,
      aiEnhanced: false,
      metadata: {
        sourceFile: '/path/to/test.jpg',
        language: 'eng',
        processingTime: 1000,
        method: 'tesseract' as const
      }
    };

    it('should format as plain text by default', () => {
      const service = new TranscriptionService();
      const formatted = (service as any).formatOutput(mockResult, 'txt');
      
      expect(formatted).toBe('Sample transcribed text');
    });

    it('should format as JSON when requested', () => {
      const service = new TranscriptionService();
      const formatted = (service as any).formatOutput(mockResult, 'json');
      
      const parsed = JSON.parse(formatted);
      expect(parsed.text).toBe('Sample transcribed text');
      expect(parsed.confidence).toBe(95.5);
      expect(parsed.aiEnhanced).toBe(false);
      expect(parsed.metadata).toBeDefined();
    });

    it('should format as SRT when requested', () => {
      const service = new TranscriptionService();
      const formatted = (service as any).formatOutput(mockResult, 'srt');
      
      expect(formatted).toContain('1\n00:00:00,000 --> 00:00:10,000\nSample transcribed text');
    });

    it('should format as VTT when requested', () => {
      const service = new TranscriptionService();
      const formatted = (service as any).formatOutput(mockResult, 'vtt');
      
      expect(formatted).toContain('WEBVTT');
      expect(formatted).toContain('00:00:00.000 --> 00:00:10.000\nSample transcribed text');
    });
  });

  describe('AI Enhancement', () => {
    beforeEach(() => {
      mockFs.existsSync.mockReturnValue(true);
      mockFs.readFileSync.mockReturnValue(Buffer.from('fake-image-data'));
    });

    it('should skip AI enhancement when no API key is available', async () => {
      // Clear environment variables
      delete process.env.CLAUDE_API_KEY;
      delete process.env.ANTHROPIC_API_KEY;

      // Mock successful tesseract
      const tesseractCheckProcess = {
        on: jest.fn((event, callback) => {
          if (event === 'close') callback(0);
        })
      };

      const ocrProcess = {
        stdout: { on: jest.fn() },
        stderr: { on: jest.fn() },
        on: jest.fn((event, callback) => {
          if (event === 'close') callback(0);
        })
      };

      mockSpawn
        .mockReturnValueOnce(tesseractCheckProcess)
        .mockReturnValueOnce(ocrProcess);

      ocrProcess.stdout.on.mockImplementation((event, callback) => {
        if (event === 'data') callback('OCR text');
      });

      ocrProcess.stderr.on.mockImplementation((event, callback) => {
        if (event === 'data') callback('');
      });

      const result = await transcriptionService.transcribe('/path/to/test.jpg', {
        aiEnhance: true,
        quiet: true
      });

      expect(result.success).toBe(true);
      expect(result.aiEnhanced).toBeUndefined();
      expect(result.metadata?.method).toBe('tesseract');
    });

    it('should use AI enhancement when API key is available', async () => {
      // Set API key
      process.env.CLAUDE_API_KEY = 'test-api-key';

      // Mock successful API response
      (global.fetch as jest.Mock).mockResolvedValue({
        ok: true,
        json: () => Promise.resolve({
          content: [{ text: 'Enhanced text from Claude' }]
        })
      });

      // Mock tesseract processes
      const tesseractCheckProcess = {
        on: jest.fn((event, callback) => {
          if (event === 'close') callback(0);
        })
      };

      const ocrProcess = {
        stdout: { on: jest.fn() },
        stderr: { on: jest.fn() },
        on: jest.fn((event, callback) => {
          if (event === 'close') callback(0);
        })
      };

      mockSpawn
        .mockReturnValueOnce(tesseractCheckProcess)
        .mockReturnValueOnce(ocrProcess);

      ocrProcess.stdout.on.mockImplementation((event, callback) => {
        if (event === 'data') callback('OCR text');
      });

      ocrProcess.stderr.on.mockImplementation((event, callback) => {
        if (event === 'data') callback('');
      });

      const result = await transcriptionService.transcribe('/path/to/test.jpg', {
        aiEnhance: true,
        quiet: true
      });

      expect(result.success).toBe(true);
      expect(result.text).toBe('Enhanced text from Claude');
      expect(result.aiEnhanced).toBe(true);
      expect(result.metadata?.method).toBe('hybrid');
    });
  });
});