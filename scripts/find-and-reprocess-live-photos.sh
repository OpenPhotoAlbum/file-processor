#!/bin/bash

# Find all Live Photos and reprocess them with new metadata extraction
# This updates existing JSON sidecars with Live Photo detection

echo "=== Live Photo Reprocessing Script ==="
echo "This will find and reprocess all Live Photos with new metadata"
echo ""

PHOTOS_DIR="/photos"
PROJECT_DIR="/home/stephen/Documents/initial-media-processing"
CLI_DIST="$PROJECT_DIR/dist/main.js"
LIVE_PHOTOS_LIST="$PROJECT_DIR/live-photos-to-reprocess.txt"
RESULTS_LOG="$PROJECT_DIR/live-photos-reprocess-results.log"

# Clear files
> "$LIVE_PHOTOS_LIST"
> "$RESULTS_LOG"

echo "Step 1: Finding all potential Live Photos..."
echo "==========================================="

# Find all short MOV/mov files that might be Live Photos
find "$PHOTOS_DIR" \( -name "*.mov" -o -name "*.MOV" \) -print0 | while IFS= read -r -d '' video; do
    # Check if it already has a JSON sidecar
    if [ -f "${video}.json" ]; then
        # Check duration using ffprobe
        duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$video" 2>/dev/null)
        
        if [ -n "$duration" ] && (( $(echo "$duration < 4" | bc -l 2>/dev/null || echo 0) )); then
            # Check if the JSON already has Live Photo info
            has_live_photo_flag=$(jq -r '.results[0].metadata.media.isLivePhoto // false' "${video}.json" 2>/dev/null)
            
            if [ "$has_live_photo_flag" != "true" ]; then
                echo "$video" >> "$LIVE_PHOTOS_LIST"
                printf "+"
            else
                printf "."
            fi
        fi
    else
        # No JSON sidecar, definitely needs processing
        duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$video" 2>/dev/null)
        
        if [ -n "$duration" ] && (( $(echo "$duration < 4" | bc -l 2>/dev/null || echo 0) )); then
            echo "$video" >> "$LIVE_PHOTOS_LIST"
            printf "*"
        fi
    fi
done

echo ""
echo ""

# Also find MP4 files that might be Live Photos (some are exported as MP4)
find "$PHOTOS_DIR" \( -name "*.mp4" -o -name "*.MP4" \) -print0 | while IFS= read -r -d '' video; do
    duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$video" 2>/dev/null)
    
    if [ -n "$duration" ] && (( $(echo "$duration < 4" | bc -l 2>/dev/null || echo 0) )); then
        # Check for Live Photo markers
        live_info=$(exiftool -ee -a "$video" 2>/dev/null | grep -c -i 'live.*photo.*info' || echo "0")
        
        if [ "$live_info" -gt 0 ]; then
            echo "$video" >> "$LIVE_PHOTOS_LIST"
            printf "M"
        fi
    fi
done

echo ""
echo ""

TOTAL_TO_PROCESS=$(wc -l < "$LIVE_PHOTOS_LIST")
echo "Found $TOTAL_TO_PROCESS videos to process/reprocess"

if [ "$TOTAL_TO_PROCESS" -eq 0 ]; then
    echo "No videos need Live Photo metadata processing!"
    exit 0
fi

echo ""
echo "Step 2: Reprocessing videos with Live Photo detection..."
echo "======================================================="
echo "This will update existing JSON sidecars with Live Photo metadata"
echo ""

cd "$PROJECT_DIR" || exit 1

# Process in parallel batches
BATCH_SIZE=8
PROCESSED=0

# Function to process a single video
process_live_photo() {
    local video="$1"
    local output="${video}.json"
    
    echo "[$$] Processing: $(basename "$video")" | tee -a "$RESULTS_LOG"
    
    # Run the CLI with the new Live Photo detection
    if node "$CLI_DIST" -f "$video" -o "$output" 2>&1 | tee -a "$RESULTS_LOG"; then
        # Check if it was detected as a Live Photo
        is_live=$(jq -r '.results[0].metadata.media.isLivePhoto // false' "$output" 2>/dev/null)
        if [ "$is_live" = "true" ]; then
            confidence=$(jq -r '.results[0].metadata.media.livePhotoInfo.confidence // "unknown"' "$output" 2>/dev/null)
            motion_count=$(jq -r '.results[0].metadata.media.livePhotoInfo.motionDataCount // 0' "$output" 2>/dev/null)
            echo "[$$] ✓ Live Photo detected! Confidence: $confidence, Motion entries: $motion_count" | tee -a "$RESULTS_LOG"
            return 0
        else
            echo "[$$] - Not a Live Photo" | tee -a "$RESULTS_LOG"
            return 1
        fi
    else
        echo "[$$] ✗ Failed to process" | tee -a "$RESULTS_LOG"
        return 2
    fi
}

export -f process_live_photo
export CLI_DIST RESULTS_LOG

# Process videos in parallel
cat "$LIVE_PHOTOS_LIST" | xargs -P "$BATCH_SIZE" -I {} bash -c 'process_live_photo "$@"' _ {}

echo ""
echo "=== Reprocessing Complete ==="
echo ""

# Generate summary
LIVE_PHOTOS_FOUND=$(grep -c "Live Photo detected!" "$RESULTS_LOG" || echo "0")
FAILED=$(grep -c "Failed to process" "$RESULTS_LOG" || echo "0")
NOT_LIVE=$(grep -c "Not a Live Photo" "$RESULTS_LOG" || echo "0")

echo "Summary:"
echo "- Total processed: $TOTAL_TO_PROCESS"
echo "- Live Photos found: $LIVE_PHOTOS_FOUND"
echo "- Not Live Photos: $NOT_LIVE"
echo "- Failed to process: $FAILED"
echo ""

# Create a list of confirmed Live Photos
CONFIRMED_LIVE_PHOTOS="$PROJECT_DIR/confirmed-live-photos.txt"
> "$CONFIRMED_LIVE_PHOTOS"

echo "Creating list of confirmed Live Photos..."
while read -r video; do
    if [ -f "${video}.json" ]; then
        is_live=$(jq -r '.results[0].metadata.media.isLivePhoto // false' "${video}.json" 2>/dev/null)
        if [ "$is_live" = "true" ]; then
            echo "$video" >> "$CONFIRMED_LIVE_PHOTOS"
        fi
    fi
done < "$LIVE_PHOTOS_LIST"

CONFIRMED_COUNT=$(wc -l < "$CONFIRMED_LIVE_PHOTOS")
echo "Confirmed Live Photos saved to: $CONFIRMED_LIVE_PHOTOS ($CONFIRMED_COUNT files)"

# Show some examples
if [ "$CONFIRMED_COUNT" -gt 0 ]; then
    echo ""
    echo "Sample Live Photos with metadata:"
    head -5 "$CONFIRMED_LIVE_PHOTOS" | while read -r video; do
        echo ""
        echo "Video: $(basename "$video")"
        jq -c '.results[0].metadata.media.livePhotoInfo' "${video}.json" 2>/dev/null
    done
fi

echo ""
echo "Full processing log saved to: $RESULTS_LOG"