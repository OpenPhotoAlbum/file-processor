#!/bin/bash

# Process Google Takeout Photos AND Videos - Complete Parallel Processing
# Includes all media types: photos (JPG, PNG, HEIC) AND videos (MOV, MP4)
# Fixed npm script name and comprehensive file type support

set -e

GOOGLE_TAKEOUT_DIR="/photos/staging/google-takeout/Takeout/Google Photos"
ARCHIVE_DIR="/photos/archive"
PROJECT_ROOT="/home/stephen/Documents/initial-media-processing"
TEMP_DIR="/tmp/google_takeout_processing_complete"
PARALLEL_JOBS=200  # High parallelism with compiled JavaScript

echo "=== Processing Google Takeout ALL MEDIA - Complete Parallel Mode ==="
echo "CPU cores available: $PARALLEL_JOBS"
echo "Starting at: $(date)"

# Check if GNU parallel is installed
if ! command -v parallel &> /dev/null; then
    echo "GNU parallel not found. Installing..."
    sudo apt-get update && sudo apt-get install -y parallel
fi

# Create temp directory
mkdir -p "$TEMP_DIR"

# Count total files (photos AND videos)
echo "Counting all media files..."
PHOTO_FILES=$(find "$GOOGLE_TAKEOUT_DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.heic" -o -name "*.HEIC" -o -name "*.JPG" -o -name "*.JPEG" -o -name "*.PNG" \) | wc -l)
VIDEO_FILES=$(find "$GOOGLE_TAKEOUT_DIR" -type f \( -name "*.mov" -o -name "*.mp4" -o -name "*.MOV" -o -name "*.MP4" \) | wc -l)
TOTAL_FILES=$((PHOTO_FILES + VIDEO_FILES))

echo "Photo files: $PHOTO_FILES"
echo "Video files: $VIDEO_FILES"
echo "Total files to process: $TOTAL_FILES"
echo ""

# Step 1: Check if file list exists (skip regeneration)
if [ -f "$TEMP_DIR/all_media.txt" ]; then
    ACTUAL_COUNT=$(wc -l < "$TEMP_DIR/all_media.txt")
    echo "Step 1: Using existing media file list ($ACTUAL_COUNT files)"
else
    echo "Step 1: Creating complete media file list..."
    find "$GOOGLE_TAKEOUT_DIR" -type f \( \
        -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.heic" -o -name "*.HEIC" -o \
        -name "*.JPG" -o -name "*.JPEG" -o -name "*.PNG" -o \
        -name "*.mov" -o -name "*.mp4" -o -name "*.MOV" -o -name "*.MP4" \
    \) > "$TEMP_DIR/all_media.txt"
    ACTUAL_COUNT=$(wc -l < "$TEMP_DIR/all_media.txt")
    echo "Media file list created: $ACTUAL_COUNT files"
fi
echo ""

# Step 2: Process all media in parallel for timestamp extraction
echo "Step 2: Extracting timestamps from ALL media in parallel ($PARALLEL_JOBS jobs)..."
cd "$PROJECT_ROOT"

# Function to process a single media file
process_media() {
    local media_file="$1"
    cd "$PROJECT_ROOT" && node dist/main.js -f "$media_file" --timestamp-only 2>/dev/null | tail -1 || echo "null"
}

# Export function for parallel
export -f process_media
export PROJECT_ROOT

# Process all media files in parallel
cat "$TEMP_DIR/all_media.txt" | parallel -j "$PARALLEL_JOBS" --bar process_media > "$TEMP_DIR/all_timestamps.json"

echo ""
echo "Timestamp extraction complete: $(date)"
echo "Results file: $TEMP_DIR/all_timestamps.json"

# Step 3: Analyze results
TOTAL_PROCESSED=$(wc -l < "$TEMP_DIR/all_timestamps.json")
NULL_COUNT=$(grep -c "null" "$TEMP_DIR/all_timestamps.json" || echo "0")
SUCCESS_COUNT=$((TOTAL_PROCESSED - NULL_COUNT))

echo ""
echo "=== PROCESSING SUMMARY ==="
echo "Total files processed: $TOTAL_PROCESSED"
echo "Successful timestamps: $SUCCESS_COUNT"
echo "Failed/null results: $NULL_COUNT"
echo "Success rate: $(( SUCCESS_COUNT * 100 / TOTAL_PROCESSED ))%"

# Show sample of successful timestamps
if [ $SUCCESS_COUNT -gt 0 ]; then
    echo ""
    echo "Sample successful timestamps:"
    grep -v "null" "$TEMP_DIR/all_timestamps.json" | head -5
fi

# Show sample of files that failed
if [ $NULL_COUNT -gt 0 ]; then
    echo ""
    echo "Sample files that failed (first 5):"
    grep -n "null" "$TEMP_DIR/all_timestamps.json" | head -5 | while read line_info; do
        line_num=$(echo "$line_info" | cut -d: -f1)
        sed -n "${line_num}p" "$TEMP_DIR/all_media.txt"
    done
fi

echo ""
echo "Processing complete at: $(date)"
echo "Next steps: Parse timestamps and create move plan (Step 3)"