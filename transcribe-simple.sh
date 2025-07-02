#!/bin/bash

# Simple audio transcription script using whisper.cpp
# Usage: ./transcribe-simple.sh <audio_file>

set -e

# Check if argument provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <audio_file>"
    echo "Example: $0 '/path/to/audio.mp4'"
    exit 1
fi

AUDIO_FILE="$1"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WHISPER_DIR="$SCRIPT_DIR/whisper.cpp"
MODEL_PATH="$WHISPER_DIR/models/ggml-base.en.bin"

# Check if audio file exists
if [ ! -f "$AUDIO_FILE" ]; then
    echo "Error: Audio file '$AUDIO_FILE' not found"
    exit 1
fi

# Check if whisper is built
if [ ! -f "$WHISPER_DIR/build/bin/whisper-cli" ]; then
    echo "Error: whisper-cli not found. Please build whisper.cpp first:"
    echo "cd $WHISPER_DIR && make -j\$(nproc)"
    exit 1
fi

# Check if model exists
if [ ! -f "$MODEL_PATH" ]; then
    echo "Error: Model not found. Please download it first:"
    echo "cd $WHISPER_DIR && ./models/download-ggml-model.sh base.en"
    exit 1
fi

# Generate output filenames
BASENAME=$(basename "$AUDIO_FILE")
FILENAME="${BASENAME%.*}"
OUTPUT_TXT="$SCRIPT_DIR/${FILENAME}_transcript.txt"
OUTPUT_WAV="$SCRIPT_DIR/${FILENAME}_temp.wav"
PID_FILE="$SCRIPT_DIR/${FILENAME}_transcript.pid"
LOG_FILE="$SCRIPT_DIR/${FILENAME}_transcript.log"

echo "Starting transcription of: $AUDIO_FILE"
echo "Output will be saved to: $OUTPUT_TXT"

# Convert audio to WAV format if needed
echo "Converting audio to WAV format..."
ffmpeg -i "$AUDIO_FILE" -ar 16000 -ac 1 -c:a pcm_s16le "$OUTPUT_WAV" -y 2>/dev/null

# Start transcription in background
echo "Starting whisper transcription..."
cd "$WHISPER_DIR"

# Create a wrapper script to capture the PID properly
cat > "$SCRIPT_DIR/whisper_wrapper.sh" << EOF
#!/bin/bash
exec ./build/bin/whisper-cli -m "$MODEL_PATH" -f "$OUTPUT_WAV" -otxt -t 8 > "$OUTPUT_TXT" 2>&1
EOF
chmod +x "$SCRIPT_DIR/whisper_wrapper.sh"

# Start the process and capture PID
nohup "$SCRIPT_DIR/whisper_wrapper.sh" > "$LOG_FILE" 2>&1 &
WHISPER_PID=$!

# Save PID for later killing
echo $WHISPER_PID > "$PID_FILE"

echo ""
echo "🎤 Transcription started!"
echo "📁 Process ID: $WHISPER_PID"
echo "📝 Output file: $OUTPUT_TXT"
echo ""
echo "🔍 To watch progress in real-time:"
echo "   tail -f \"$OUTPUT_TXT\""
echo ""
echo "🛑 To stop the transcription:"
echo "   kill $WHISPER_PID"
echo "   # or use: kill \$(cat \"$PID_FILE\")"
echo ""
echo "📊 To check if process is still running:"
echo "   ps -p $WHISPER_PID"
echo ""
echo "🧹 Cleanup (run after transcription is complete):"
echo "   rm \"$OUTPUT_WAV\" \"$PID_FILE\" \"$LOG_FILE\" \"$SCRIPT_DIR/whisper_wrapper.sh\""

# Optional: Wait a moment and check if process started successfully
sleep 2
if ps -p $WHISPER_PID > /dev/null; then
    echo "✅ Transcription process is running successfully"
else
    echo "❌ Process may have failed. Check log file: $LOG_FILE"
fi