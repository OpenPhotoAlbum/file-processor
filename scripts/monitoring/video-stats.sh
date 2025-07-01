#!/bin/bash

# Quick video processing statistics
# One-shot status check

PHOTOS_DIR="/photos"

echo "=== Video Processing Statistics ==="
echo "$(date)"
echo ""

# Count all videos
TOTAL_VIDEOS=$(find "$PHOTOS_DIR" -type f \( -name "*.mp4" -o -name "*.MP4" -o -name "*.mov" -o -name "*.MOV" -o -name "*.avi" -o -name "*.AVI" \) 2>/dev/null | wc -l)

# Count videos with JSON
VIDEOS_WITH_JSON=$(find "$PHOTOS_DIR" -type f \( -name "*.mp4" -o -name "*.MP4" -o -name "*.mov" -o -name "*.MOV" -o -name "*.avi" -o -name "*.AVI" \) -print0 2>/dev/null | while IFS= read -r -d '' video; do [ -f "${video}.json" ] && echo "$video"; done | wc -l)

# Count videos without JSON
VIDEOS_WITHOUT_JSON=$((TOTAL_VIDEOS - VIDEOS_WITH_JSON))

# Calculate percentage
PERCENT_COMPLETE=0
if [ $TOTAL_VIDEOS -gt 0 ]; then
    PERCENT_COMPLETE=$((VIDEOS_WITH_JSON * 100 / TOTAL_VIDEOS))
fi

echo "Total videos found: $TOTAL_VIDEOS"
echo "Videos with metadata: $VIDEOS_WITH_JSON"
echo "Videos remaining: $VIDEOS_WITHOUT_JSON"
echo "Completion: $PERCENT_COMPLETE%"
echo ""

# Show recent JSON files (last 10)
echo "Recently processed (last 10):"
find "$PHOTOS_DIR" -name "*.json" -type f -printf '%T@ %p\n' 2>/dev/null | sort -n | tail -10 | while read timestamp path; do
    basename="${path%.json}"
    filename=$(basename "$basename")
    date -d "@$timestamp" +'%H:%M:%S' | tr -d '\n'
    echo " - $filename"
done

echo ""

# Check if processing is actively running
PROCESSING_PIDS=$(pgrep -f "process-videos")
if [ -n "$PROCESSING_PIDS" ]; then
    echo "Active processing detected (PIDs: $PROCESSING_PIDS)"
    echo "CPU usage by video processing:"
    ps -p $PROCESSING_PIDS -o pid,pcpu,pmem,cmd --no-headers
else
    echo "No active video processing detected"
fi