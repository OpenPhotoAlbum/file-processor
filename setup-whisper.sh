#!/bin/bash

# Whisper.cpp Setup Script
# This script helps set up whisper.cpp for audio transcription

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WHISPER_DIR="$SCRIPT_DIR/whisper.cpp"

echo "======================================"
echo "Whisper.cpp Setup Script"
echo "======================================"
echo ""

# Check if whisper.cpp is already cloned
if [ ! -d "$WHISPER_DIR" ]; then
    echo "Cloning whisper.cpp..."
    git clone https://github.com/ggerganov/whisper.cpp "$WHISPER_DIR"
else
    echo "✓ whisper.cpp already cloned"
fi

cd "$WHISPER_DIR"

# Check if cmake is available
if command -v cmake &> /dev/null; then
    echo ""
    echo "Building whisper.cpp with cmake..."
    cmake -B build
    cmake --build build --config Release -j $(nproc)
    WHISPER_MAIN="build/bin/main"
else
    echo ""
    echo "cmake not found, trying make..."
    
    # Check if Makefile supports non-cmake build
    if grep -q "^default:" Makefile 2>/dev/null; then
        echo "Building with make..."
        make -j$(nproc)
        WHISPER_MAIN="main"
    else
        echo ""
        echo "ERROR: cmake is required but not installed."
        echo ""
        echo "Please install cmake:"
        echo "  Ubuntu/Debian: sudo apt-get install cmake"
        echo "  Fedora/RHEL: sudo dnf install cmake"
        echo "  macOS: brew install cmake"
        echo ""
        echo "After installing cmake, run this script again."
        exit 1
    fi
fi

# Check if build succeeded
if [ ! -f "$WHISPER_MAIN" ]; then
    echo ""
    echo "ERROR: Build failed. whisper main executable not found."
    exit 1
fi

echo "✓ whisper.cpp built successfully"

# Download models
echo ""
echo "Available models:"
echo "  tiny    (~39 MB)  - Fastest, lowest accuracy"
echo "  base    (~142 MB) - Good balance of speed and accuracy"
echo "  small   (~466 MB) - Better accuracy, slower"
echo "  medium  (~1.5 GB) - High accuracy, much slower"
echo "  large   (~2.9 GB) - Best accuracy, very slow"
echo ""

# Check which models are already downloaded
echo "Checking existing models..."
for model in tiny base small medium large; do
    MODEL_FILE="models/ggml-${model}.bin"
    if [ -f "$MODEL_FILE" ]; then
        SIZE=$(du -h "$MODEL_FILE" | cut -f1)
        echo "  ✓ $model model already downloaded ($SIZE)"
    else
        echo "  ✗ $model model not downloaded"
    fi
done

echo ""
read -p "Which model would you like to download? (base recommended) [base]: " MODEL_CHOICE
MODEL_CHOICE=${MODEL_CHOICE:-base}

# Validate model choice
case $MODEL_CHOICE in
    tiny|base|small|medium|large)
        ;;
    *)
        echo "Invalid model choice: $MODEL_CHOICE"
        echo "Using base model instead"
        MODEL_CHOICE="base"
        ;;
esac

# Download model if not exists
MODEL_FILE="models/ggml-${MODEL_CHOICE}.bin"
if [ ! -f "$MODEL_FILE" ]; then
    echo ""
    echo "Downloading $MODEL_CHOICE model..."
    bash ./models/download-ggml-model.sh "$MODEL_CHOICE"
else
    echo "Model already downloaded: $MODEL_FILE"
fi

# Test transcription
echo ""
echo "======================================"
echo "Setup complete!"
echo "======================================"
echo ""
echo "To test the installation, try:"
echo "  $SCRIPT_DIR/transcribe-audio.sh samples/jfk.wav"
echo ""
echo "To transcribe your own files:"
echo "  $SCRIPT_DIR/transcribe-audio.sh <your-audio-file>"
echo ""
echo "To batch transcribe a directory:"
echo "  $SCRIPT_DIR/batch-transcribe.sh <directory> [$MODEL_CHOICE]"
echo ""