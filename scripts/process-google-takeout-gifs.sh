#!/bin/bash

# Process Google Takeout GIF Files - Phase 2B
# Includes: All GIF/gif files (Live Photos, Motion Photos, animations)
# These are valuable animated content that complements static photos

set -e

GOOGLE_TAKEOUT_DIR="/photos/staging/google-takeout/Takeout/Google Photos"
ARCHIVE_DIR="/photos/archive"
PROJECT_ROOT="/home/stephen/Documents/initial-media-processing"
TEMP_DIR="/tmp/google_takeout_processing_gifs"
PARALLEL_JOBS=100  # High parallelism with compiled JavaScript

echo "=== Processing Google Takeout GIF Files - Phase 2B ==="
echo "CPU cores available: $PARALLEL_JOBS"
echo "Starting at: $(date)"

# Check if GNU parallel is installed
if ! command -v parallel &> /dev/null; then
    echo "GNU parallel not found. Installing..."
    sudo apt-get update && sudo apt-get install -y parallel
fi

# Create temp directory
mkdir -p "$TEMP_DIR"

# Count GIF files
echo "Counting GIF files..."
GIF_FILES=$(find "$GOOGLE_TAKEOUT_DIR" -type f \( -name "*.gif" -o -name "*.GIF" \) | wc -l)
ANIMATION_FILES=$(find "$GOOGLE_TAKEOUT_DIR" -type f -name "*-ANIMATION*.gif" | wc -l)
OTHER_GIFS=$((GIF_FILES - ANIMATION_FILES))

echo "Total GIF files: $GIF_FILES"
echo "  - Animation files (Live Photos): $ANIMATION_FILES"  
echo "  - Other GIFs: $OTHER_GIFS"
echo ""

# Step 1: Create GIF file list
echo "Step 1: Creating GIF file list..."
find "$GOOGLE_TAKEOUT_DIR" -type f \( \
    -name "*.gif" -o -name "*.GIF" \
\) > "$TEMP_DIR/all_gif_media.txt"

ACTUAL_COUNT=$(wc -l < "$TEMP_DIR/all_gif_media.txt")
echo "GIF file list created: $ACTUAL_COUNT files"
echo ""

# Step 2: Process GIFs in parallel for timestamp extraction
echo "Step 2: Extracting timestamps from GIF files in parallel ($PARALLEL_JOBS jobs)..."
cd "$PROJECT_ROOT"

# Function to process a single GIF file
process_media() {
    local media_file="$1"
    cd "$PROJECT_ROOT" && node dist/main.js -f "$media_file" --timestamp-only 2>/dev/null | tail -1 || echo "null"
}

# Export function for parallel
export -f process_media
export PROJECT_ROOT

# Process all GIF files in parallel
cat "$TEMP_DIR/all_gif_media.txt" | parallel -j "$PARALLEL_JOBS" --bar process_media > "$TEMP_DIR/all_gif_timestamps.json"

echo ""
echo "Timestamp extraction complete: $(date)"
echo "Results file: $TEMP_DIR/all_gif_timestamps.json"

# Step 3: Analyze results
TOTAL_PROCESSED=$(wc -l < "$TEMP_DIR/all_gif_timestamps.json")
NULL_COUNT=$(grep -c "null" "$TEMP_DIR/all_gif_timestamps.json" 2>/dev/null || echo "0")
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
    grep -v "null" "$TEMP_DIR/all_gif_timestamps.json" 2>/dev/null | head -5
fi

# Show sample of files that failed
if [ $NULL_COUNT -gt 0 ]; then
    echo ""
    echo "Sample files that failed (first 5):"
    grep -n "null" "$TEMP_DIR/all_gif_timestamps.json" 2>/dev/null | head -5 | while read line_info; do
        line_num=$(echo "$line_info" | cut -d: -f1)
        sed -n "${line_num}p" "$TEMP_DIR/all_gif_media.txt"
    done
fi

echo ""
echo "Processing complete at: $(date)"
echo "Next steps: Use worker script to organize these GIF files"

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
cp "$TEMP_DIR/all_gif_media.txt" "$TEMP_DIR/all_media.txt"
cp "$TEMP_DIR/all_gif_timestamps.json" "$TEMP_DIR/all_timestamps.json"
echo "$ACTUAL_COUNT" > "$TEMP_DIR/total_files.txt"
echo "0" > "$TEMP_DIR/completed_files.txt"

echo "Ready for parallel organization!"
echo ""
echo "Commands to organize GIFs:"
echo "  Test single: node scripts/process-additional-worker.js --test-single"
echo "  (Update TEMP_DIR to /tmp/google_takeout_processing_gifs first)"
echo "  Full parallel: parallel -j 20 node scripts/process-gifs-worker.js ::: {1..20}"