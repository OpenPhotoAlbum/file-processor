#!/bin/bash

# Process video files from /photos directory in parallel
# This script processes all video files that don't have JSON metadata

echo "=== Video Processing Script (Parallel) ==="
echo "Starting at: $(date)"
echo "==============================="

# Base directories
PHOTOS_DIR="/photos"
PROJECT_DIR="/home/stephen/Documents/initial-media-processing"
CLI_DIST="$PROJECT_DIR/dist/main.js"

# Number of parallel jobs (adjust based on CPU cores)
PARALLEL_JOBS=8

# Count total videos
TOTAL_VIDEOS=$(find "$PHOTOS_DIR" -type f \( -name "*.mp4" -o -name "*.MP4" -o -name "*.mov" -o -name "*.MOV" -o -name "*.avi" -o -name "*.AVI" \) 2>/dev/null | wc -l)
echo "Total video files found: $TOTAL_VIDEOS"

# Count videos without JSON
VIDEOS_WITHOUT_JSON=$(find "$PHOTOS_DIR" -type f \( -name "*.mp4" -o -name "*.MP4" -o -name "*.mov" -o -name "*.MOV" -o -name "*.avi" -o -name "*.AVI" \) -print0 2>/dev/null | while IFS= read -r -d '' video; do [ ! -f "${video}.json" ] && echo "$video"; done | wc -l)
echo "Videos without JSON metadata: $VIDEOS_WITHOUT_JSON"

if [ "$VIDEOS_WITHOUT_JSON" -eq 0 ]; then
    echo "All videos already have metadata. Nothing to do!"
    exit 0
fi

# Process videos in parallel batches
echo ""
echo "Processing $VIDEOS_WITHOUT_JSON videos in parallel..."
echo "Using $PARALLEL_JOBS parallel jobs"
echo "This may take a while..."

cd "$PROJECT_DIR" || exit 1

# Enable all providers for video processing
export RECREATION_GOV_PROVIDER_ENABLED=true
export GNIS_PROVIDER_ENABLED=true

# Create a temporary file for the list of videos to process
TEMP_FILE=$(mktemp)
trap "rm -f $TEMP_FILE" EXIT

# Find all videos without JSON and save to temp file
find "$PHOTOS_DIR" -type f \( -name "*.mp4" -o -name "*.MP4" -o -name "*.mov" -o -name "*.MOV" -o -name "*.avi" -o -name "*.AVI" \) -print0 2>/dev/null | \
while IFS= read -r -d '' video; do
    if [ ! -f "${video}.json" ]; then
        echo "$video"
    fi
done > "$TEMP_FILE"

# Function to process a single video
process_video() {
    local video="$1"
    echo "[$$] Processing: $video"
    node "$CLI_DIST" -f "$video" -o "${video}.json" 2>&1 | sed "s/^/[$$] /" || echo "[$$] Failed to process: $video"
}

# Export the function so it's available to parallel
export -f process_video
export CLI_DIST

# Process videos in parallel
cat "$TEMP_FILE" | xargs -P "$PARALLEL_JOBS" -I {} bash -c 'process_video "$@"' _ {}

echo ""
echo "==============================="
echo "Video processing complete!"
echo "Finished at: $(date)"

# Show final counts
FINAL_VIDEOS_WITHOUT_JSON=$(find "$PHOTOS_DIR" -type f \( -name "*.mp4" -o -name "*.MP4" -o -name "*.mov" -o -name "*.MOV" -o -name "*.avi" -o -name "*.AVI" \) -print0 2>/dev/null | while IFS= read -r -d '' video; do [ ! -f "${video}.json" ] && echo "$video"; done | wc -l)
VIDEOS_PROCESSED=$((VIDEOS_WITHOUT_JSON - FINAL_VIDEOS_WITHOUT_JSON))

echo "Videos processed: $VIDEOS_PROCESSED"
echo "Videos remaining without JSON: $FINAL_VIDEOS_WITHOUT_JSON"

# Show some statistics
echo ""
echo "Processing Statistics:"
echo "======================"
find "$PHOTOS_DIR" -name "*.json" -type f -newer "$TEMP_FILE" 2>/dev/null | wc -l | xargs echo "New JSON files created:"
find "$PHOTOS_DIR" -name "*.json" -type f -newer "$TEMP_FILE" -size +1k 2>/dev/null | wc -l | xargs echo "JSON files with substantial data (>1KB):"