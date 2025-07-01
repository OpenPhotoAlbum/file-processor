#!/bin/bash

# Process Google Takeout Additional File Types - Phase 2A
# Includes: DNG, TIFF/TIF, CR2, WEBP files that were missed in initial processing
# Now supported with updated MIME type detection

set -e

GOOGLE_TAKEOUT_DIR="/photos/staging/google-takeout/Takeout/Google Photos"
ARCHIVE_DIR="/photos/archive"
PROJECT_ROOT="/home/stephen/Documents/initial-media-processing"
TEMP_DIR="/tmp/google_takeout_processing_additional"
PARALLEL_JOBS=100  # High parallelism with compiled JavaScript

echo "=== Processing Google Takeout Additional File Types - Phase 2A ==="
echo "CPU cores available: $PARALLEL_JOBS"
echo "Starting at: $(date)"

# Check if GNU parallel is installed
if ! command -v parallel &> /dev/null; then
    echo "GNU parallel not found. Installing..."
    sudo apt-get update && sudo apt-get install -y parallel
fi

# Create temp directory
mkdir -p "$TEMP_DIR"

# Count additional file types
echo "Counting additional file types..."
DNG_FILES=$(find "$GOOGLE_TAKEOUT_DIR" -type f \( -name "*.dng" -o -name "*.DNG" \) | wc -l)
TIFF_FILES=$(find "$GOOGLE_TAKEOUT_DIR" -type f \( -name "*.tiff" -o -name "*.tif" -o -name "*.TIFF" -o -name "*.TIF" \) | wc -l)
CR_FILES=$(find "$GOOGLE_TAKEOUT_DIR" -type f \( -name "*.cr2" -o -name "*.CR2" -o -name "*.cr3" -o -name "*.CR3" \) | wc -l)
WEBP_FILES=$(find "$GOOGLE_TAKEOUT_DIR" -type f \( -name "*.webp" -o -name "*.WEBP" \) | wc -l)
TOTAL_FILES=$((DNG_FILES + TIFF_FILES + CR_FILES + WEBP_FILES))

echo "DNG files: $DNG_FILES"
echo "TIFF/TIF files: $TIFF_FILES"  
echo "CR2/CR3 files: $CR_FILES"
echo "WEBP files: $WEBP_FILES"
echo "Total additional files to process: $TOTAL_FILES"
echo ""

# Step 1: Create additional file list
echo "Step 1: Creating additional media file list..."
find "$GOOGLE_TAKEOUT_DIR" -type f \( \
    -name "*.dng" -o -name "*.DNG" -o \
    -name "*.tiff" -o -name "*.tif" -o -name "*.TIFF" -o -name "*.TIF" -o \
    -name "*.cr2" -o -name "*.CR2" -o -name "*.cr3" -o -name "*.CR3" -o \
    -name "*.webp" -o -name "*.WEBP" \
\) > "$TEMP_DIR/all_additional_media.txt"

ACTUAL_COUNT=$(wc -l < "$TEMP_DIR/all_additional_media.txt")
echo "Additional file list created: $ACTUAL_COUNT files"
echo ""

# Step 2: Process additional media in parallel for timestamp extraction
echo "Step 2: Extracting timestamps from additional media in parallel ($PARALLEL_JOBS jobs)..."
cd "$PROJECT_ROOT"

# Function to process a single media file
process_media() {
    local media_file="$1"
    cd "$PROJECT_ROOT" && node dist/main.js -f "$media_file" --timestamp-only 2>/dev/null | tail -1 || echo "null"
}

# Export function for parallel
export -f process_media
export PROJECT_ROOT

# Process all additional files in parallel
cat "$TEMP_DIR/all_additional_media.txt" | parallel -j "$PARALLEL_JOBS" --bar process_media > "$TEMP_DIR/all_additional_timestamps.json"

echo ""
echo "Timestamp extraction complete: $(date)"
echo "Results file: $TEMP_DIR/all_additional_timestamps.json"

# Step 3: Analyze results
TOTAL_PROCESSED=$(wc -l < "$TEMP_DIR/all_additional_timestamps.json")
NULL_COUNT=$(grep -c "null" "$TEMP_DIR/all_additional_timestamps.json" || echo "0")
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
    grep -v "null" "$TEMP_DIR/all_additional_timestamps.json" | head -5
fi

# Show sample of files that failed
if [ $NULL_COUNT -gt 0 ]; then
    echo ""
    echo "Sample files that failed (first 5):"
    grep -n "null" "$TEMP_DIR/all_additional_timestamps.json" | head -5 | while read line_info; do
        line_num=$(echo "$line_info" | cut -d: -f1)
        sed -n "${line_num}p" "$TEMP_DIR/all_additional_media.txt"
    done
fi

echo ""
echo "Processing complete at: $(date)"
echo "Next steps: Use process-stragglers-worker.js to organize these additional files"

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