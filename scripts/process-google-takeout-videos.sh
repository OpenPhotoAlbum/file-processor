#!/bin/bash

# Process Google Takeout Video Files - Final Phase
# Includes: M4V, MKV, 3GP, WEBM video files
# These are the final remaining files from Google Takeout processing

set -e

GOOGLE_TAKEOUT_DIR="/photos/staging/google-takeout/Takeout/Google Photos"
ARCHIVE_DIR="/photos/archive"
PROJECT_ROOT="/home/stephen/Documents/initial-media-processing"
TEMP_DIR="/tmp/google_takeout_processing_videos"
PARALLEL_JOBS=100  # High parallelism with compiled JavaScript

echo "=== Processing Google Takeout Video Files - Final Phase ==="
echo "CPU cores available: $PARALLEL_JOBS"
echo "Starting at: $(date)"

# Check if GNU parallel is installed
if ! command -v parallel &> /dev/null; then
    echo "GNU parallel not found. Installing..."
    sudo apt-get update && sudo apt-get install -y parallel
fi

# Create temp directory
mkdir -p "$TEMP_DIR"

# Count video files
echo "Counting video files..."
VIDEO_FILES=$(find "$GOOGLE_TAKEOUT_DIR" -type f \( -name "*.m4v" -o -name "*.mkv" -o -name "*.3gp" -o -name "*.webm" \) | wc -l)

echo "Total video files: $VIDEO_FILES"
echo ""

# Step 1: Create video file list
echo "Step 1: Creating video file list..."
find "$GOOGLE_TAKEOUT_DIR" -type f \( \
    -name "*.m4v" -o -name "*.mkv" -o -name "*.3gp" -o -name "*.webm" \
\) > "$TEMP_DIR/all_video_media.txt"

ACTUAL_COUNT=$(wc -l < "$TEMP_DIR/all_video_media.txt")
echo "Video file list created: $ACTUAL_COUNT files"
echo ""

# Step 2: Process videos in parallel for timestamp extraction
echo "Step 2: Extracting timestamps from video files in parallel ($PARALLEL_JOBS jobs)..."
cd "$PROJECT_ROOT"

# Function to process a single video file
process_media() {
    local media_file="$1"
    cd "$PROJECT_ROOT" && node dist/main.js -f "$media_file" --timestamp-only 2>/dev/null | tail -1 || echo "null"
}

# Export function for parallel
export -f process_media
export PROJECT_ROOT

# Process all video files in parallel
cat "$TEMP_DIR/all_video_media.txt" | parallel -j "$PARALLEL_JOBS" --bar process_media > "$TEMP_DIR/all_video_timestamps.json"

echo ""
echo "Timestamp extraction complete: $(date)"
echo "Results file: $TEMP_DIR/all_video_timestamps.json"

# Step 3: Analyze results
TOTAL_PROCESSED=$(wc -l < "$TEMP_DIR/all_video_timestamps.json")
NULL_COUNT=$(grep -c "null" "$TEMP_DIR/all_video_timestamps.json" 2>/dev/null || echo "0")
SUCCESS_COUNT=$((TOTAL_PROCESSED - NULL_COUNT))

echo ""
echo "=== PROCESSING SUMMARY ==="
echo "Total files processed: $TOTAL_PROCESSED"
echo "Successful timestamps: $SUCCESS_COUNT"
echo "Failed/null results: $NULL_COUNT"
if [ $TOTAL_PROCESSED -gt 0 ]; then
    echo "Success rate: $(( SUCCESS_COUNT * 100 / TOTAL_PROCESSED ))%"
fi

# Show sample of successful timestamps
if [ $SUCCESS_COUNT -gt 0 ]; then
    echo ""
    echo "Sample successful timestamps:"
    grep -v "null" "$TEMP_DIR/all_video_timestamps.json" 2>/dev/null | head -5
fi

# Show sample of files that failed
if [ $NULL_COUNT -gt 0 ]; then
    echo ""
    echo "Sample files that failed (first 5):"
    grep -n "null" "$TEMP_DIR/all_video_timestamps.json" 2>/dev/null | head -5 | while read line_info; do
        line_num=$(echo "$line_info" | cut -d: -f1)
        sed -n "${line_num}p" "$TEMP_DIR/all_video_media.txt"
    done
fi

echo ""
echo "Processing complete at: $(date)"
echo "Next steps: Use worker script to organize these video files"

# Step 4: Show what remains unprocessed
echo ""
echo "=== CHECKING REMAINING FILES ==="
ALL_REMAINING=$(find "$GOOGLE_TAKEOUT_DIR" -type f -name "*.*" | wc -l)
echo "Total files still in staging: $ALL_REMAINING"

if [ $ALL_REMAINING -gt 0 ]; then
    echo ""
    echo "Remaining file types breakdown:"
    find "$GOOGLE_TAKEOUT_DIR" -type f -name "*.*" | sed 's/.*\.//' | sort | uniq -c | sort -nr | head -10
fi

echo ""
echo "=== SETUP FOR ORGANIZATION ==="
echo "Setting up files for worker script..."

# Copy files to worker-compatible names
cp "$TEMP_DIR/all_video_media.txt" "$TEMP_DIR/all_media.txt"
cp "$TEMP_DIR/all_video_timestamps.json" "$TEMP_DIR/all_timestamps.json"
echo "$ACTUAL_COUNT" > "$TEMP_DIR/total_files.txt"
echo "0" > "$TEMP_DIR/completed_files.txt"

echo "Ready for parallel organization!"
echo ""
echo "Commands to organize videos:"
echo "  Test single: node scripts/process-videos-worker.js --test-single"
echo "  (Update TEMP_DIR to /tmp/google_takeout_processing_videos first)"
echo "  Full parallel: parallel -j 20 node scripts/process-videos-worker.js ::: {1..20}"