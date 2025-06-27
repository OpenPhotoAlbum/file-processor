#!/bin/bash

# Process video files from /photos directory
# This script processes all video files that don't have JSON metadata

echo "=== Video Processing Script ==="
echo "Starting at: $(date)"
echo "==============================="

# Base directories
PHOTOS_DIR="/photos"
PROJECT_DIR="/home/stephen/Documents/initial-media-processing"
CLI_DIST="$PROJECT_DIR/dist/main.js"

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

# Process videos in batches
echo ""
echo "Processing $VIDEOS_WITHOUT_JSON videos..."
echo "This may take a while..."

cd "$PROJECT_DIR" || exit 1

# Enable all providers for video processing
export RECREATION_GOV_PROVIDER_ENABLED=true
export GNIS_PROVIDER_ENABLED=true

# Process all videos without JSON
find "$PHOTOS_DIR" -type f \( -name "*.mp4" -o -name "*.MP4" -o -name "*.mov" -o -name "*.MOV" -o -name "*.avi" -o -name "*.AVI" \) -print0 2>/dev/null | \
while IFS= read -r -d '' video; do
    if [ ! -f "${video}.json" ]; then
        echo "Processing: $video"
        node "$CLI_DIST" -f "$video" -o "${video}.json" || echo "Failed to process: $video"
    fi
done

echo ""
echo "==============================="
echo "Video processing complete!"
echo "Finished at: $(date)"

# Show final counts
FINAL_VIDEOS_WITHOUT_JSON=$(find "$PHOTOS_DIR" -type f \( -name "*.mp4" -o -name "*.MP4" -o -name "*.mov" -o -name "*.MOV" -o -name "*.avi" -o -name "*.AVI" \) -print0 2>/dev/null | while IFS= read -r -d '' video; do [ ! -f "${video}.json" ] && echo "$video"; done | wc -l)
VIDEOS_PROCESSED=$((VIDEOS_WITHOUT_JSON - FINAL_VIDEOS_WITHOUT_JSON))

echo "Videos processed: $VIDEOS_PROCESSED"
echo "Videos remaining without JSON: $FINAL_VIDEOS_WITHOUT_JSON"