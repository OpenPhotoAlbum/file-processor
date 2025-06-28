#!/bin/bash

# Process Google Takeout Photos - Parallel Processing (112K photos)
# Uses GNU parallel to process multiple photos simultaneously

set -e

GOOGLE_TAKEOUT_DIR="/photos/staging/google-takeout/Takeout/Google Photos"
ARCHIVE_DIR="/photos/archive"
PROJECT_ROOT="/home/stephen/Documents/initial-media-processing"
BATCH_SIZE=1000
TEMP_DIR="/tmp/google_takeout_processing"
PARALLEL_JOBS=$(nproc)  # Use all CPU cores

echo "=== Processing Google Takeout Photos - Parallel Mode ==="
echo "CPU cores available: $PARALLEL_JOBS"
echo "Starting at: $(date)"

# Check if GNU parallel is installed
if ! command -v parallel &> /dev/null; then
    echo "GNU parallel not found. Installing..."
    sudo apt-get update && sudo apt-get install -y parallel
fi

# Create temp directory
mkdir -p "$TEMP_DIR"

# Count total files
TOTAL_FILES=$(find "$GOOGLE_TAKEOUT_DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.heic" -o -name "*.HEIC" -o -name "*.JPG" -o -name "*.JPEG" -o -name "*.PNG" \) | wc -l)
echo "Total files to process: $TOTAL_FILES"
echo ""

# Step 1: Create file list
echo "Step 1: Creating file list..."
find "$GOOGLE_TAKEOUT_DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.heic" -o -name "*.HEIC" -o -name "*.JPG" -o -name "*.JPEG" -o -name "*.PNG" \) > "$TEMP_DIR/all_photos.txt"

echo "File list created: $(wc -l < "$TEMP_DIR/all_photos.txt") photos"
echo ""

# Step 2: Process photos in parallel for timestamp extraction
echo "Step 2: Extracting timestamps in parallel ($PARALLEL_JOBS jobs)..."
cd "$PROJECT_ROOT"

# Function to process a single photo
process_photo() {
    local photo="$1"
    cd "$PROJECT_ROOT" && npm run dev -- -f "$photo" --timestamp-only 2>/dev/null || echo "null"
}

# Export function for parallel
export -f process_photo
export PROJECT_ROOT

# Process all photos in parallel
cat "$TEMP_DIR/all_photos.txt" | parallel -j "$PARALLEL_JOBS" --bar process_photo > "$TEMP_DIR/all_timestamps.json"

echo ""
echo "Timestamp extraction complete: $(date)"

# Step 3: Parse timestamps and create move plan
echo ""
echo "Step 3: Creating move plan..."

# Parse JSON results and create move mappings
jq -r 'select(. != null and . != "null") | select(.file and .timestamps and .timestamps.primary) | .file.path as $path | .timestamps.primary.timestamp as $ts | "\($path)|\($ts)"' "$TEMP_DIR/all_timestamps.json" | while IFS='|' read -r filepath timestamp; do
    if [ -n "$timestamp" ] && [ "$timestamp" != "null" ]; then
        # Extract date components
        year=$(echo "$timestamp" | cut -d'-' -f1)
        month=$(echo "$timestamp" | cut -d'-' -f2)
        date_part=$(echo "$timestamp" | cut -d'T' -f1)
        time_part=$(echo "$timestamp" | cut -d'T' -f2 | cut -d'.' -f1 | tr ':' '-')
        
        # Generate target path
        target_dir="$ARCHIVE_DIR/$year/$month"
        extension="${filepath##*.}"
        base_name="${date_part}_${time_part}"
        
        echo "$filepath|$target_dir|$base_name|$extension"
    fi
done > "$TEMP_DIR/move_plan.txt"

planned_moves=$(wc -l < "$TEMP_DIR/move_plan.txt")
echo "Valid timestamps found: $planned_moves photos"
echo ""

# Step 4: Execute moves in parallel batches
echo "Step 4: Moving files to archive structure..."

# Create directories first
echo "Creating target directories..."
cut -d'|' -f2 "$TEMP_DIR/move_plan.txt" | sort -u | while read -r dir; do
    mkdir -p "$dir"
done

# Function to move a single file
move_file() {
    local line="$1"
    IFS='|' read -r src target_dir base_name extension <<< "$line"
    
    if [ -f "$src" ]; then
        # Find unique counter for this directory
        local counter=1
        local lockfile="$target_dir/.counter_lock"
        
        # Simple file-based locking for counter
        while ! mkdir "$lockfile" 2>/dev/null; do
            sleep 0.01
        done
        
        # Read current counter
        local counter_file="$target_dir/.counter"
        if [ -f "$counter_file" ]; then
            counter=$(cat "$counter_file")
        else
            counter=1
        fi
        
        # Find next available filename
        while [ -f "$target_dir/${base_name}_$(printf "%03d" $counter).${extension}" ]; do
            counter=$((counter + 1))
        done
        
        local new_filename="${base_name}_$(printf "%03d" $counter).${extension}"
        
        # Move file
        mv "$src" "$target_dir/$new_filename"
        
        # Update counter
        echo $((counter + 1)) > "$counter_file"
        
        # Release lock
        rmdir "$lockfile"
        
        echo "Moved: $(basename "$src") -> $target_dir/$new_filename"
    fi
}

export -f move_file
export ARCHIVE_DIR

# Move files in parallel (fewer jobs to avoid filesystem conflicts)
MOVE_JOBS=$((PARALLEL_JOBS / 2))
if [ $MOVE_JOBS -lt 1 ]; then MOVE_JOBS=1; fi

echo "Moving files with $MOVE_JOBS parallel jobs..."
cat "$TEMP_DIR/move_plan.txt" | parallel -j "$MOVE_JOBS" --bar move_file

echo ""
echo "File moving complete: $(date)"

# Cleanup counter files
find "$ARCHIVE_DIR" -name ".counter" -delete 2>/dev/null || true

# Step 5: Count results
echo ""
echo "Step 5: Counting results..."
final_count=$(find "$ARCHIVE_DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.heic" -o -name "*.HEIC" -o -name "*.JPG" -o -name "*.JPEG" -o -name "*.PNG" \) | wc -l)

echo ""
echo "=== Google Takeout Processing Complete ==="
echo "Finished at: $(date)"
echo ""
echo "Summary:"
echo "- Photos processed in parallel: $planned_moves"
echo "- Total photos in archive: $final_count"
echo "- Processing used $PARALLEL_JOBS CPU cores"
echo ""

# Cleanup
echo "Cleaning up temporary files..."
rm -rf "$TEMP_DIR"

echo "Next steps:"
echo "1. Enrich photos with GNIS/Recreation.gov data"
echo "2. Regenerate collections"
echo "3. Update MCP indexing"
echo "4. Process external imports"