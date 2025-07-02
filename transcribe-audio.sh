#!/bin/bash

# Whisper.cpp Audio Transcription Script
# Usage: ./transcribe-audio.sh <audio-file> [options]
# Options:
#   -m, --model <size>     Model size: tiny, base, small, medium, large (default: base)
#   -o, --output <dir>     Output directory (default: same as input file)
#   -f, --format <fmt>     Output formats: txt,srt,vtt,json (default: txt,srt,vtt)
#   -l, --language <lang>  Language code (e.g., en, es, fr) or 'auto' (default: auto)
#   -t, --threads <n>      Number of threads to use (default: auto)
#   -h, --help            Show this help message

set -e

# Default values
MODEL_SIZE="base"
OUTPUT_DIR=""
OUTPUT_FORMATS="txt,srt,vtt"
LANGUAGE="auto"
THREADS=""
AUDIO_FILE=""

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -m|--model)
            MODEL_SIZE="$2"
            shift 2
            ;;
        -o|--output)
            OUTPUT_DIR="$2"
            shift 2
            ;;
        -f|--format)
            OUTPUT_FORMATS="$2"
            shift 2
            ;;
        -l|--language)
            LANGUAGE="$2"
            shift 2
            ;;
        -t|--threads)
            THREADS="$2"
            shift 2
            ;;
        -h|--help)
            echo "Whisper.cpp Audio Transcription Script"
            echo ""
            echo "Usage: $0 <audio-file> [options]"
            echo ""
            echo "Options:"
            echo "  -m, --model <size>     Model size: tiny, base, small, medium, large (default: base)"
            echo "  -o, --output <dir>     Output directory (default: same as input file)"
            echo "  -f, --format <fmt>     Output formats: txt,srt,vtt,json (default: txt,srt,vtt)"
            echo "  -l, --language <lang>  Language code (e.g., en, es, fr) or 'auto' (default: auto)"
            echo "  -t, --threads <n>      Number of threads to use (default: auto)"
            echo "  -h, --help            Show this help message"
            echo ""
            echo "Examples:"
            echo "  $0 video.mp4"
            echo "  $0 video.mp4 -m small -f txt,srt"
            echo "  $0 audio.wav -m large -l en -o ./transcripts/"
            exit 0
            ;;
        *)
            if [ -z "$AUDIO_FILE" ]; then
                AUDIO_FILE="$1"
            else
                echo "Error: Unknown option: $1"
                exit 1
            fi
            shift
            ;;
    esac
done

# Check if audio file is provided
if [ -z "$AUDIO_FILE" ]; then
    echo "Error: No audio file specified"
    echo "Use -h or --help for usage information"
    exit 1
fi

# Check if audio file exists
if [ ! -f "$AUDIO_FILE" ]; then
    echo "Error: Audio file not found: $AUDIO_FILE"
    exit 1
fi

# Set script directory and whisper directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WHISPER_DIR="$SCRIPT_DIR/whisper.cpp"

# Check if whisper.cpp directory exists
if [ ! -d "$WHISPER_DIR" ]; then
    echo "Error: whisper.cpp directory not found at $WHISPER_DIR"
    echo ""
    echo "Clone it with:"
    echo "git clone https://github.com/ggerganov/whisper.cpp \"$WHISPER_DIR\""
    exit 1
fi

# Check if whisper.cpp is compiled (try multiple possible locations)
WHISPER_MAIN=""
if [ -f "$WHISPER_DIR/build/bin/main" ]; then
    WHISPER_MAIN="$WHISPER_DIR/build/bin/main"
elif [ -f "$WHISPER_DIR/main" ]; then
    WHISPER_MAIN="$WHISPER_DIR/main"
fi

if [ -z "$WHISPER_MAIN" ]; then
    echo "Error: whisper.cpp is not compiled yet."
    echo ""
    echo "To compile with cmake (recommended):"
    echo "  cd \"$WHISPER_DIR\""
    echo "  cmake -B build"
    echo "  cmake --build build --config Release"
    echo ""
    echo "Or compile with make:"
    echo "  cd \"$WHISPER_DIR\""
    echo "  make"
    exit 1
fi

# Check if model exists
MODEL_FILE="$WHISPER_DIR/models/ggml-${MODEL_SIZE}.bin"
if [ ! -f "$MODEL_FILE" ]; then
    echo "Error: Model not found at $MODEL_FILE"
    echo ""
    echo "Download the model with:"
    echo "  cd \"$WHISPER_DIR\""
    echo "  bash ./models/download-ggml-model.sh $MODEL_SIZE"
    echo ""
    echo "Available models: tiny, base, small, medium, large"
    exit 1
fi

# Get absolute path for audio file
AUDIO_FILE_ABS="$(realpath "$AUDIO_FILE")"

# Set output directory
if [ -z "$OUTPUT_DIR" ]; then
    OUTPUT_DIR="$(dirname "$AUDIO_FILE_ABS")"
else
    # Create output directory if it doesn't exist
    mkdir -p "$OUTPUT_DIR"
    OUTPUT_DIR="$(realpath "$OUTPUT_DIR")"
fi

# Extract audio filename without extension for output
BASENAME="$(basename "$AUDIO_FILE_ABS")"
OUTPUT_BASE="${BASENAME%.*}"
OUTPUT_PATH="$OUTPUT_DIR/$OUTPUT_BASE"

# Build whisper command
WHISPER_CMD="\"$WHISPER_MAIN\" -m \"$MODEL_FILE\" -f \"$AUDIO_FILE_ABS\" -of \"$OUTPUT_PATH\""

# Add language option
if [ "$LANGUAGE" != "auto" ]; then
    WHISPER_CMD="$WHISPER_CMD -l $LANGUAGE"
fi

# Add thread option
if [ -n "$THREADS" ]; then
    WHISPER_CMD="$WHISPER_CMD -t $THREADS"
fi

# Add output format options
IFS=',' read -ra FORMATS <<< "$OUTPUT_FORMATS"
for fmt in "${FORMATS[@]}"; do
    case $fmt in
        txt) WHISPER_CMD="$WHISPER_CMD -otxt" ;;
        srt) WHISPER_CMD="$WHISPER_CMD -osrt" ;;
        vtt) WHISPER_CMD="$WHISPER_CMD -ovtt" ;;
        json) WHISPER_CMD="$WHISPER_CMD -oj" ;;
        *) echo "Warning: Unknown format: $fmt" ;;
    esac
done

# Add other useful options
WHISPER_CMD="$WHISPER_CMD -pp --print-colors"

# Display transcription info
echo "======================================"
echo "Whisper.cpp Audio Transcription"
echo "======================================"
echo "Input file: $AUDIO_FILE_ABS"
echo "Model: $MODEL_SIZE"
echo "Language: $LANGUAGE"
echo "Output directory: $OUTPUT_DIR"
echo "Output formats: $OUTPUT_FORMATS"
if [ -n "$THREADS" ]; then
    echo "Threads: $THREADS"
fi
echo "======================================"
echo ""

# Run transcription
echo "Starting transcription..."
eval $WHISPER_CMD

# Check what files were created
echo ""
echo "Transcription complete!"
echo ""
echo "Output files created:"
for fmt in "${FORMATS[@]}"; do
    case $fmt in
        txt) [ -f "${OUTPUT_PATH}.txt" ] && echo "  - ${OUTPUT_PATH}.txt (plain text)" ;;
        srt) [ -f "${OUTPUT_PATH}.srt" ] && echo "  - ${OUTPUT_PATH}.srt (SubRip subtitles)" ;;
        vtt) [ -f "${OUTPUT_PATH}.vtt" ] && echo "  - ${OUTPUT_PATH}.vtt (WebVTT subtitles)" ;;
        json) [ -f "${OUTPUT_PATH}.json" ] && echo "  - ${OUTPUT_PATH}.json (JSON with timestamps)" ;;
    esac
done