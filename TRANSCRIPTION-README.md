# Audio Transcription with Whisper.cpp

This directory contains scripts for transcribing audio and video files using OpenAI's Whisper model via the whisper.cpp implementation.

## Quick Start

1. **Setup whisper.cpp** (first time only):
   ```bash
   ./setup-whisper.sh
   ```
   This will:
   - Clone whisper.cpp
   - Build the project
   - Download a Whisper model

2. **Transcribe a single file**:
   ```bash
   ./transcribe-audio.sh "path/to/video.mp4"
   ```

3. **Batch transcribe a directory**:
   ```bash
   ./batch-transcribe.sh "/photos/staging/home-videos" base
   ```

## Scripts

### `setup-whisper.sh`
Initial setup script that:
- Clones whisper.cpp repository
- Builds the project (requires cmake)
- Downloads Whisper models
- Tests the installation

### `transcribe-audio.sh`
Main transcription script with options:
```bash
./transcribe-audio.sh <audio-file> [options]

Options:
  -m, --model <size>     Model size: tiny, base, small, medium, large (default: base)
  -o, --output <dir>     Output directory (default: same as input file)
  -f, --format <fmt>     Output formats: txt,srt,vtt,json (default: txt,srt,vtt)
  -l, --language <lang>  Language code (e.g., en, es, fr) or 'auto' (default: auto)
  -t, --threads <n>      Number of threads to use (default: auto)
  -h, --help            Show help message
```

Examples:
```bash
# Basic transcription
./transcribe-audio.sh video.mp4

# Use small model, output only text and SRT
./transcribe-audio.sh video.mp4 -m small -f txt,srt

# Transcribe Spanish audio to specific directory
./transcribe-audio.sh audio.wav -m large -l es -o ./transcripts/
```

### `batch-transcribe.sh`
Batch processing script for directories:
```bash
./batch-transcribe.sh <directory> [model_size]
```

Features:
- Finds all audio/video files recursively
- Maintains directory structure in output
- Skips already transcribed files
- Creates transcripts in `<directory>/transcripts/`

Supported formats:
- Video: MP4, MOV, AVI, MKV, M4V
- Audio: WAV, MP3, M4A, FLAC, OGG

## Model Selection

| Model  | Size    | Speed    | Accuracy | Use Case                        |
|--------|---------|----------|----------|--------------------------------|
| tiny   | ~39 MB  | Fastest  | Low      | Quick drafts, real-time        |
| base   | ~142 MB | Fast     | Good     | General use (recommended)      |
| small  | ~466 MB | Medium   | Better   | Better accuracy needed         |
| medium | ~1.5 GB | Slow     | High     | Professional transcription     |
| large  | ~2.9 GB | Slowest  | Best     | Maximum accuracy required      |

## Output Formats

- **txt**: Plain text transcription
- **srt**: SubRip subtitle format (with timestamps)
- **vtt**: WebVTT subtitle format (for web video)
- **json**: JSON with word-level timestamps

## Requirements

- **cmake**: Required to build whisper.cpp
  ```bash
  # Ubuntu/Debian
  sudo apt-get install cmake
  
  # Fedora/RHEL
  sudo dnf install cmake
  
  # macOS
  brew install cmake
  ```

- **git**: To clone whisper.cpp
- **C++ compiler**: Usually pre-installed (gcc/clang)

## Performance Tips

1. **Use appropriate model size**: Start with 'base' and only use larger models if needed
2. **Thread optimization**: The script auto-detects CPU cores, but you can specify with `-t`
3. **Batch processing**: Process multiple files overnight with `batch-transcribe.sh`
4. **GPU acceleration**: Whisper.cpp supports CUDA - see their documentation for setup

## Troubleshooting

1. **"cmake not found"**: Install cmake using the commands above
2. **"Model not found"**: Run `./setup-whisper.sh` to download models
3. **Build errors**: Ensure you have a C++ compiler installed
4. **Out of memory**: Use a smaller model or reduce thread count

## Example Workflow

Transcribe all home videos:
```bash
# 1. Setup (once)
./setup-whisper.sh

# 2. Test on single file
./transcribe-audio.sh "/photos/staging/home-videos/1989/Xmas Eve & Xmas 1989.mp4"

# 3. Batch process entire collection
./batch-transcribe.sh "/photos/staging/home-videos" base

# 4. Find all transcripts
find /photos/staging/home-videos/transcripts -name "*.txt"
```