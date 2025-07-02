#!/bin/bash

# Batch Audio Transcription Script
# Usage: ./batch-transcribe.sh <directory> [model_size]
# This script transcribes all audio/video files in a directory

set -e

# Check if directory is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory> [model_size]"
    echo "Model sizes: tiny, base, small, medium, large (default: base)"
    echo ""
    echo "Example: $0 /photos/staging/home-videos base"
    exit 1
fi

SOURCE_DIR="$1"
MODEL_SIZE="${2:-base}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TRANSCRIBE_SCRIPT="$SCRIPT_DIR/transcribe-audio.sh"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory not found: $SOURCE_DIR"
    exit 1
fi

# Check if transcribe script exists
if [ ! -f "$TRANSCRIBE_SCRIPT" ]; then
    echo "Error: transcribe-audio.sh not found at $TRANSCRIBE_SCRIPT"
    exit 1
fi

# Find all audio/video files
echo "Finding audio/video files in: $SOURCE_DIR"
echo ""

# Create transcripts directory
TRANSCRIPT_DIR="$SOURCE_DIR/transcripts"
mkdir -p "$TRANSCRIPT_DIR"

# Count files
FILE_COUNT=$(find "$SOURCE_DIR" -type f \( \
    -iname "*.mp4" -o \
    -iname "*.mov" -o \
    -iname "*.avi" -o \
    -iname "*.mkv" -o \
    -iname "*.m4v" -o \
    -iname "*.wav" -o \
    -iname "*.mp3" -o \
    -iname "*.m4a" -o \
    -iname "*.flac" -o \
    -iname "*.ogg" \
\) 2>/dev/null | wc -l)

if [ "$FILE_COUNT" -eq 0 ]; then
    echo "No audio/video files found in $SOURCE_DIR"
    exit 0
fi

echo "Found $FILE_COUNT audio/video files"
echo "Transcripts will be saved to: $TRANSCRIPT_DIR"
echo "Using model: $MODEL_SIZE"
echo ""
echo "Press Enter to start transcription or Ctrl+C to cancel..."
read

# Process each file
PROCESSED=0
FAILED=0

find "$SOURCE_DIR" -type f \( \
    -iname "*.mp4" -o \
    -iname "*.mov" -o \
    -iname "*.avi" -o \
    -iname "*.mkv" -o \
    -iname "*.m4v" -o \
    -iname "*.wav" -o \
    -iname "*.mp3" -o \
    -iname "*.m4a" -o \
    -iname "*.flac" -o \
    -iname "*.ogg" \
\) -print0 | while IFS= read -r -d '' file; do
    PROCESSED=$((PROCESSED + 1))
    
    # Get relative path from source directory
    REL_PATH="${file#$SOURCE_DIR/}"
    REL_DIR="$(dirname "$REL_PATH")"
    
    # Create subdirectory in transcripts if needed
    if [ "$REL_DIR" != "." ]; then
        mkdir -p "$TRANSCRIPT_DIR/$REL_DIR"
        OUTPUT_DIR="$TRANSCRIPT_DIR/$REL_DIR"
    else
        OUTPUT_DIR="$TRANSCRIPT_DIR"
    fi
    
    echo ""
    echo "[$PROCESSED/$FILE_COUNT] Processing: $REL_PATH"
    echo "Output directory: $OUTPUT_DIR"
    
    # Check if already transcribed
    BASENAME="$(basename "$file")"
    OUTPUT_BASE="${BASENAME%.*}"
    if [ -f "$OUTPUT_DIR/${OUTPUT_BASE}.txt" ]; then
        echo "Already transcribed, skipping..."
        continue
    fi
    
    # Run transcription
    if "$TRANSCRIBE_SCRIPT" "$file" -m "$MODEL_SIZE" -o "$OUTPUT_DIR" -f txt,srt; then
        echo "✓ Success"
    else
        echo "✗ Failed"
        FAILED=$((FAILED + 1))
    fi
done

echo ""
echo "======================================"
echo "Batch transcription complete!"
echo "Processed: $PROCESSED files"
echo "Failed: $FAILED files"
echo "Transcripts saved to: $TRANSCRIPT_DIR"
echo "======================================"