#!/bin/bash

# Process iPhone External Imports Collection
# Processes 9,260 unique iPhone files after deduplication
# Includes: JPG, MOV, DNG, PNG, MP4 files from iPhone exports

set -e

IPHONE_IMPORTS_DIR="/photos/staging/external-imports"
ARCHIVE_DIR="/photos/archive"
PROJECT_ROOT="/home/stephen/Documents/initial-media-processing"
TEMP_DIR="/tmp/iphone_external_processing"
PARALLEL_JOBS=100  # High parallelism with compiled JavaScript

echo "=== Processing iPhone External Imports Collection ==="
echo "CPU cores available: $PARALLEL_JOBS"
echo "Starting at: $(date)"

# Check if GNU parallel is installed
if ! command -v parallel &> /dev/null; then
    echo "GNU parallel not found. Installing..."
    sudo apt-get update && sudo apt-get install -y parallel
fi

# Create temp directory
mkdir -p "$TEMP_DIR"

# Count iPhone files
echo "Counting iPhone files..."
IPHONE_FILES=$(find "$IPHONE_IMPORTS_DIR" -type f \( \
    -name "*.jpg" -o -name "*.JPG" -o \
    -name "*.mov" -o -name "*.MOV" -o \
    -name "*.dng" -o -name "*.DNG" -o \
    -name "*.png" -o -name "*.PNG" -o \
    -name "*.mp4" -o -name "*.MP4" \
\) | wc -l)

echo "Total iPhone files: $IPHONE_FILES"
echo ""

# Show file type breakdown
echo "File type breakdown:"
find "$IPHONE_IMPORTS_DIR" -type f | sed 's/.*\.//' | sort | uniq -c | sort -nr | head -10
echo ""

# Step 1: Create iPhone file list
echo "Step 1: Creating iPhone file list..."
find "$IPHONE_IMPORTS_DIR" -type f \( \
    -name "*.jpg" -o -name "*.JPG" -o \
    -name "*.mov" -o -name "*.MOV" -o \
    -name "*.dng" -o -name "*.DNG" -o \
    -name "*.png" -o -name "*.PNG" -o \
    -name "*.mp4" -o -name "*.MP4" \
\) > "$TEMP_DIR/all_iphone_media.txt"

ACTUAL_COUNT=$(wc -l < "$TEMP_DIR/all_iphone_media.txt")
echo "iPhone file list created: $ACTUAL_COUNT files"
echo ""

# Step 2: Process iPhone files in parallel for timestamp extraction
echo "Step 2: Extracting timestamps from iPhone files in parallel ($PARALLEL_JOBS jobs)..."
cd "$PROJECT_ROOT"

# Function to process a single iPhone file
process_media() {
    local media_file="$1"
    cd "$PROJECT_ROOT" && node dist/main.js -f "$media_file" --timestamp-only 2>/dev/null | tail -1 || echo "null"
}

# Export function for parallel
export -f process_media
export PROJECT_ROOT

# Process all iPhone files in parallel
cat "$TEMP_DIR/all_iphone_media.txt" | parallel -j "$PARALLEL_JOBS" --bar process_media > "$TEMP_DIR/all_iphone_timestamps.json"

echo ""
echo "Timestamp extraction complete: $(date)"
echo "Results file: $TEMP_DIR/all_iphone_timestamps.json"

# Step 3: Analyze results
TOTAL_PROCESSED=$(wc -l < "$TEMP_DIR/all_iphone_timestamps.json")
NULL_COUNT=$(grep -c "null" "$TEMP_DIR/all_iphone_timestamps.json" 2>/dev/null || echo "0")
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
    grep -v "null" "$TEMP_DIR/all_iphone_timestamps.json" 2>/dev/null | head -5
fi

# Show sample of files that failed
if [ $NULL_COUNT -gt 0 ]; then
    echo ""
    echo "Sample files that failed (first 5):"
    grep -n "null" "$TEMP_DIR/all_iphone_timestamps.json" 2>/dev/null | head -5 | while read line_info; do
        line_num=$(echo "$line_info" | cut -d: -f1)
        sed -n "${line_num}p" "$TEMP_DIR/all_iphone_media.txt"
    done
fi

echo ""
echo "Processing complete at: $(date)"
echo "Next steps: Use worker script to organize these iPhone files"

# Step 4: Show what remains unprocessed
echo ""
echo "=== CHECKING REMAINING FILES ==="
ALL_REMAINING=$(find "$IPHONE_IMPORTS_DIR" -type f -name "*.*" | wc -l)
echo "Total files still in staging: $ALL_REMAINING"

if [ $ALL_REMAINING -gt 0 ]; then
    echo ""
    echo "Remaining file types breakdown:"
    find "$IPHONE_IMPORTS_DIR" -type f -name "*.*" | sed 's/.*\.//' | sort | uniq -c | sort -nr | head -10
fi

echo ""
echo "=== SETUP FOR ORGANIZATION ==="
echo "Setting up files for worker script..."

# Copy files to worker-compatible names
cp "$TEMP_DIR/all_iphone_media.txt" "$TEMP_DIR/all_media.txt"
cp "$TEMP_DIR/all_iphone_timestamps.json" "$TEMP_DIR/all_timestamps.json"
echo "$ACTUAL_COUNT" > "$TEMP_DIR/total_files.txt"
echo "0" > "$TEMP_DIR/completed_files.txt"

echo "Ready for parallel organization!"
echo ""
echo "Commands to organize iPhone files:"
echo "  Test single: node scripts/process-iphone-worker.js --test-single"
echo "  (Update TEMP_DIR to /tmp/iphone_external_processing first)"
echo "  Full parallel: parallel -j 20 node scripts/process-iphone-worker.js ::: {1..20}"