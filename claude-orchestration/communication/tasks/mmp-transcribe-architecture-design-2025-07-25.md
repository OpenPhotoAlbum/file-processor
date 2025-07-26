# MMP Transcribe Feature Architecture Design

**Task ID:** mmp-transcribe-architecture-design-2025-07-25  
**From:** Claude 1 (Architect)  
**To:** Claude 2 (Builder)  
**Priority:** HIGH  
**Date:** 2025-07-25

## Executive Summary

This document presents the comprehensive architecture for the MMP transcribe feature, supporting audio/video transcription via Whisper.cpp, OCR for images, and AI-enhanced analysis using Claude. The design ensures modular structure compliance with 500-line file limits while providing a unified interface for all transcription needs.

## Architecture Overview

### Core Design Principles

1. **Unified Interface**: Single `mmp transcribe` command handles all media types
2. **Modular Structure**: Clean separation of concerns with file size compliance
3. **Progressive Enhancement**: Base functionality works without optional dependencies
4. **AI Enhancement**: Optional Claude integration for improved accuracy
5. **Extensibility**: Easy to add new transcription providers or formats

### Media Type Detection Flow

```typescript
// Determine transcription path based on file type
MediaType Detection:
  - Images (jpg, png, gif, tiff, bmp) → OCR Pipeline
  - Videos (mp4, mov, avi, mkv) → Whisper Pipeline  
  - Audio (mp3, wav, flac, m4a) → Whisper Pipeline
  - Documents (pdf) → OCR Pipeline with multi-page support
```

## Module Architecture

### Directory Structure

```
/photos/tools/refactor/mmp/src/
├── cli/
│   └── commands/
│       └── transcribe.ts              # CLI command handler (<150 lines)
├── transcription/
│   ├── index.ts                       # Main orchestrator (<200 lines)
│   ├── types.ts                       # Shared types and interfaces (<100 lines)
│   ├── media-detector.ts              # File type detection (<100 lines)
│   ├── providers/
│   │   ├── whisper/
│   │   │   ├── index.ts              # Whisper provider (<200 lines)
│   │   │   ├── wrapper.ts            # Whisper.cpp wrapper (<150 lines)
│   │   │   └── config.ts             # Whisper configuration (<100 lines)
│   │   ├── ocr/
│   │   │   ├── index.ts              # OCR provider (<200 lines)
│   │   │   ├── tesseract.ts          # Tesseract wrapper (<150 lines)
│   │   │   └── config.ts             # OCR configuration (<100 lines)
│   │   └── ai-enhancement/
│   │       ├── index.ts              # AI enhancement provider (<200 lines)
│   │       ├── claude-client.ts      # Claude API wrapper (<150 lines)
│   │       └── comparison.ts         # Transcription comparison (<150 lines)
│   ├── output/
│   │   ├── formatter.ts              # Output formatting (<150 lines)
│   │   ├── file-writer.ts            # File writing logic (<100 lines)
│   │   └── progress.ts               # Progress tracking (<100 lines)
│   └── utils/
│       ├── validation.ts             # Input validation (<100 lines)
│       └── error-handler.ts          # Error handling (<100 lines)
└── config/
    └── transcription.config.ts        # Global config (<100 lines)
```

## Core Components

### 1. CLI Command Handler
`cli/commands/transcribe.ts`

```typescript
export interface TranscribeOptions {
  model?: string;          // Whisper model size
  language?: string;       // Language code or 'auto'
  output?: string;         // Output directory
  format?: string;         // Output formats (txt,srt,vtt,json)
  threads?: number;        // Thread count for performance
  aiEnhance?: boolean;     // Enable AI enhancement
  provider?: string;       // Force specific provider
  verbose?: boolean;       // Verbose output
}

// Main command registration with Commander.js
export function createTranscribeCommand(): Command {
  return new Command('transcribe')
    .argument('<file>', 'Media file to transcribe')
    .description('Extract text or speech from media files')
    .option('-m, --model <size>', 'Whisper model size', 'base')
    .option('-l, --language <code>', 'Language code or auto', 'auto')
    .option('-o, --output <dir>', 'Output directory')
    .option('-f, --format <formats>', 'Output formats', 'txt,srt,vtt')
    .option('-t, --threads <n>', 'Thread count')
    .option('--ai-enhance', 'Use Claude for enhanced analysis')
    .option('--provider <name>', 'Force provider (whisper/ocr)')
    .option('-v, --verbose', 'Verbose output')
    .action(handleTranscribeCommand);
}
```

### 2. Main Orchestrator
`transcription/index.ts`

```typescript
export class TranscriptionOrchestrator {
  constructor(
    private mediaDetector: MediaDetector,
    private whisperProvider: WhisperProvider,
    private ocrProvider: OCRProvider,
    private aiEnhancer: AIEnhancer,
    private outputManager: OutputManager
  ) {}

  async transcribe(filePath: string, options: TranscribeOptions): Promise<TranscriptionResult> {
    // 1. Detect media type
    const mediaType = await this.mediaDetector.detect(filePath);
    
    // 2. Route to appropriate provider
    let result: TranscriptionResult;
    if (mediaType.category === 'image' || mediaType.category === 'document') {
      result = await this.ocrProvider.extract(filePath, options);
    } else if (mediaType.category === 'video' || mediaType.category === 'audio') {
      result = await this.whisperProvider.transcribe(filePath, options);
    }
    
    // 3. Apply AI enhancement if requested
    if (options.aiEnhance && mediaType.category === 'image') {
      result = await this.aiEnhancer.enhance(filePath, result, options);
    }
    
    // 4. Format and save output
    await this.outputManager.save(result, options);
    
    return result;
  }
}
```

### 3. Whisper Provider
`transcription/providers/whisper/index.ts`

```typescript
export class WhisperProvider implements TranscriptionProvider {
  private whisperPath: string;
  private modelsPath: string;
  
  async checkDependencies(): Promise<DependencyStatus> {
    // Check if whisper.cpp is installed
    // Check if required model is downloaded
    // Return graceful error if missing
  }
  
  async transcribe(filePath: string, options: TranscribeOptions): Promise<TranscriptionResult> {
    // 1. Validate whisper.cpp installation
    // 2. Build command with options
    // 3. Execute whisper.cpp with progress tracking
    // 4. Parse output into structured format
    // 5. Return standardized result
  }
}
```

### 4. OCR Provider
`transcription/providers/ocr/index.ts`

```typescript
export class OCRProvider implements TranscriptionProvider {
  async checkDependencies(): Promise<DependencyStatus> {
    // Check if Tesseract is installed
    // Check for language packs
    // Return status
  }
  
  async extract(filePath: string, options: TranscribeOptions): Promise<TranscriptionResult> {
    // 1. Validate Tesseract installation
    // 2. Pre-process image if needed
    // 3. Run OCR extraction
    // 4. Post-process text (fix common errors)
    // 5. Return structured result
  }
}
```

### 5. AI Enhancement Provider
`transcription/providers/ai-enhancement/index.ts`

```typescript
export class AIEnhancer {
  private claudeClient: ClaudeClient;
  
  async enhance(
    imagePath: string, 
    ocrResult: TranscriptionResult, 
    options: TranscribeOptions
  ): Promise<TranscriptionResult> {
    // 1. Send image to Claude for analysis
    // 2. Compare Claude's reading with OCR result
    // 3. Identify discrepancies and improvements
    // 4. Merge results intelligently
    // 5. Return enhanced transcription
  }
  
  private async compareTranscriptions(
    ocrText: string,
    claudeText: string
  ): Promise<MergedTranscription> {
    // Intelligent comparison algorithm
    // Handle missing sections in OCR
    // Preserve high-confidence OCR results
    // Use Claude for ambiguous areas
  }
}
```

## Key Interfaces

```typescript
// types.ts
export interface TranscriptionResult {
  text: string;                    // Main transcription text
  segments?: TranscriptionSegment[]; // Time-coded segments (audio/video)
  confidence?: number;             // Overall confidence score
  language?: string;               // Detected/specified language
  metadata: {
    provider: string;              // whisper/ocr/ai-enhanced
    processingTime: number;        // Milliseconds
    mediaInfo: MediaInfo;          // File details
    enhancementApplied?: boolean;  // AI enhancement used
  };
}

export interface TranscriptionSegment {
  start: number;                   // Start time (seconds)
  end: number;                     // End time (seconds)
  text: string;                    // Segment text
  confidence?: number;             // Segment confidence
  speaker?: string;                // Speaker label (if available)
}

export interface MediaInfo {
  type: 'image' | 'video' | 'audio' | 'document';
  format: string;                  // File extension
  duration?: number;               // For audio/video
  dimensions?: {                   // For images
    width: number;
    height: number;
  };
  pages?: number;                  // For documents
}
```

## AI Enhancement Workflow

### For Images (OCR Enhancement)

```
1. Initial OCR Pass
   ├── Run Tesseract OCR
   ├── Extract text with position data
   └── Generate confidence scores

2. Claude Analysis Request
   ├── Send image to Claude API
   ├── Request: "Read all text in this image"
   └── Include context hints if available

3. Intelligent Comparison
   ├── Align OCR and Claude results
   ├── Identify discrepancies
   ├── Weight by confidence scores
   └── Preserve formatting hints from OCR

4. Enhanced Output Generation
   ├── Merge best of both sources
   ├── Mark AI-enhanced sections
   ├── Include confidence metadata
   └── Preserve original OCR as fallback
```

### Example AI Enhancement Logic

```typescript
// Handwritten note example
OCR Result: "Dear Grendma, Happy 85th Birtday! Love, Steren"
Claude Result: "Dear Grandma, Happy 85th Birthday! Love, Steven"

Enhanced Output: {
  text: "Dear Grandma, Happy 85th Birthday! Love, Steven",
  corrections: [
    { original: "Grendma", corrected: "Grandma", source: "ai" },
    { original: "Birtday", corrected: "Birthday", source: "ai" },
    { original: "Steren", corrected: "Steven", source: "ai" }
  ],
  confidence: 0.95
}
```

## Error Handling Strategy

### Graceful Degradation

```typescript
1. Missing Whisper.cpp
   - Inform user about audio/video limitation
   - Provide setup instructions
   - Still allow image OCR

2. Missing Tesseract
   - Inform user about OCR limitation
   - Suggest installation
   - Still allow audio/video transcription

3. Claude API Unavailable
   - Fall back to base OCR/Whisper
   - Notify that enhancement unavailable
   - Continue with standard transcription

4. Unsupported File Type
   - Clear error message
   - Suggest alternative tools
   - List supported formats
```

## Progress Tracking

```typescript
export class ProgressTracker {
  async trackWhisperProgress(process: ChildProcess): Promise<void> {
    // Parse whisper.cpp output for progress
    // Update progress bar
    // Handle long-running transcriptions
  }
  
  async trackOCRProgress(pages: number): Promise<void> {
    // Track multi-page document progress
    // Update per-page completion
  }
}
```

## Configuration Management

```typescript
// ~/.config/mmp/transcription.json
{
  "whisper": {
    "path": "~/whisper.cpp/build/bin/main",
    "modelsPath": "~/whisper.cpp/models",
    "defaultModel": "base",
    "defaultThreads": 4
  },
  "ocr": {
    "provider": "tesseract",
    "languages": ["eng", "fra", "spa"],
    "preprocessing": true
  },
  "aiEnhancement": {
    "apiKey": "env:CLAUDE_API_KEY",
    "model": "claude-3-opus-20240229",
    "maxRetries": 3
  },
  "output": {
    "defaultFormats": ["txt", "srt", "vtt"],
    "preserveStructure": true
  }
}
```

## Integration Points

### 1. Existing MMP Infrastructure
- Reuse progress tracking from other commands
- Integrate with MMP configuration system
- Use consistent error handling patterns
- Follow MMP output formatting standards

### 2. External Dependencies
- Whisper.cpp: Check via file system
- Tesseract: Check via command availability
- Claude API: Validate API key on first use

### 3. File System Integration
- Default output alongside source files
- Support custom output directories
- Preserve original file timestamps
- Handle batch operations efficiently

## Performance Considerations

1. **Parallel Processing**
   - Support batch transcription
   - Use thread pools for multiple files
   - Optimize for heritage photo collections

2. **Memory Management**
   - Stream large video files
   - Process images in chunks
   - Clear caches between operations

3. **Caching**
   - Cache AI enhancement results
   - Store provider availability checks
   - Remember user preferences

## Testing Strategy

1. **Unit Tests**
   - Each provider independently
   - Media type detection accuracy
   - Output formatting correctness

2. **Integration Tests**
   - Full transcription pipeline
   - AI enhancement workflow
   - Error handling paths

3. **E2E Tests**
   - Real media files
   - Various formats and sizes
   - Batch operations

## Success Metrics

1. **File Size Compliance**: All files <500 lines
2. **Dependency Handling**: Graceful degradation without crashes
3. **Performance**: <2s startup for simple transcriptions
4. **Accuracy**: AI enhancement improves accuracy by 20%+
5. **User Experience**: Clear progress and error messages

## Implementation Phases

### Phase 1: Core Structure (Builder)
1. Create directory structure
2. Implement type definitions
3. Set up dependency injection
4. Create basic command handler

### Phase 2: Whisper Integration (Builder)
1. Implement Whisper provider
2. Add progress tracking
3. Test with audio/video files
4. Handle all output formats

### Phase 3: OCR Integration (Builder)
1. Implement OCR provider
2. Add image preprocessing
3. Test with various image types
4. Support multi-page documents

### Phase 4: AI Enhancement (Builder)
1. Implement Claude client
2. Create comparison algorithm
3. Test enhancement accuracy
4. Add confidence scoring

### Phase 5: Polish & Integration (Builder)
1. Unify error handling
2. Complete progress tracking
3. Add comprehensive logging
4. Optimize performance

## Risk Mitigation

1. **External Dependency Risk**
   - Document manual fallbacks
   - Provide setup automation
   - Test without dependencies

2. **API Cost Risk**
   - Make AI enhancement opt-in
   - Add usage warnings
   - Cache results aggressively

3. **Performance Risk**
   - Add timeout controls
   - Support cancellation
   - Optimize for common cases

This architecture provides a robust, extensible foundation for the MMP transcribe feature while maintaining code quality standards and enabling powerful AI-enhanced transcription capabilities.