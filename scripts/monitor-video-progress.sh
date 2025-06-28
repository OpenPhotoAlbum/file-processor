#!/bin/bash

# Monitor video processing progress
# Shows real-time stats and estimates

echo "=== Video Processing Monitor ==="
echo "Press Ctrl+C to exit monitoring"
echo "==============================="

PHOTOS_DIR="/photos"
LOG_FILE="/tmp/video-processing.log"

# Function to count videos
count_videos() {
    local total=$(find "$PHOTOS_DIR" -type f \( -name "*.mp4" -o -name "*.MP4" -o -name "*.mov" -o -name "*.MOV" -o -name "*.avi" -o -name "*.AVI" \) 2>/dev/null | wc -l)
    local with_json=$(find "$PHOTOS_DIR" -type f \( -name "*.mp4" -o -name "*.MP4" -o -name "*.mov" -o -name "*.MOV" -o -name "*.avi" -o -name "*.AVI" \) -print0 2>/dev/null | while IFS= read -r -d '' video; do [ -f "${video}.json" ] && echo "$video"; done | wc -l)
    local without_json=$((total - with_json))
    
    echo "$total $with_json $without_json"
}

# Initial counts
initial_counts=($(count_videos))
INITIAL_TOTAL=${initial_counts[0]}
INITIAL_WITH_JSON=${initial_counts[1]}
INITIAL_WITHOUT_JSON=${initial_counts[2]}

echo "Initial state:"
echo "- Total videos: $INITIAL_TOTAL"
echo "- With metadata: $INITIAL_WITH_JSON"
echo "- Need processing: $INITIAL_WITHOUT_JSON"
echo ""

# Start time
START_TIME=$(date +%s)

# Monitor loop
while true; do
    # Get current counts
    current_counts=($(count_videos))
    CURRENT_TOTAL=${current_counts[0]}
    CURRENT_WITH_JSON=${current_counts[1]}
    CURRENT_WITHOUT_JSON=${current_counts[2]}
    
    # Calculate progress
    PROCESSED=$((CURRENT_WITH_JSON - INITIAL_WITH_JSON))
    PERCENT_COMPLETE=0
    if [ $INITIAL_WITHOUT_JSON -gt 0 ]; then
        PERCENT_COMPLETE=$((PROCESSED * 100 / INITIAL_WITHOUT_JSON))
    fi
    
    # Calculate rate and ETA
    CURRENT_TIME=$(date +%s)
    ELAPSED=$((CURRENT_TIME - START_TIME))
    
    if [ $ELAPSED -gt 0 ] && [ $PROCESSED -gt 0 ]; then
        RATE=$(echo "scale=2; $PROCESSED / ($ELAPSED / 60)" | bc)
        REMAINING=$((INITIAL_WITHOUT_JSON - PROCESSED))
        if [ $PROCESSED -gt 0 ]; then
            ETA_MINUTES=$(echo "scale=0; $REMAINING / ($RATE)" | bc 2>/dev/null || echo "0")
            ETA_HOURS=$(echo "scale=1; $ETA_MINUTES / 60" | bc 2>/dev/null || echo "0")
        else
            ETA_HOURS="--"
        fi
    else
        RATE="0"
        ETA_HOURS="--"
    fi
    
    # Clear line and print status
    printf "\r\033[K"
    printf "Progress: %d/%d (%d%%) | Rate: %.1f/min | ETA: %s hours | Remaining: %d" \
        "$PROCESSED" "$INITIAL_WITHOUT_JSON" "$PERCENT_COMPLETE" "$RATE" "$ETA_HOURS" "$CURRENT_WITHOUT_JSON"
    
    # Also show recently processed files (last 3)
    if [ $PROCESSED -gt 0 ]; then
        echo ""
        echo "Recently processed:"
        find "$PHOTOS_DIR" -name "*.json" -type f -newer /tmp/video-monitor-marker 2>/dev/null | tail -3 | while read json; do
            basename "${json%.json}"
        done
        touch /tmp/video-monitor-marker
        printf "\033[4A"  # Move cursor up 4 lines
    fi
    
    # Check if complete
    if [ $CURRENT_WITHOUT_JSON -eq 0 ]; then
        echo ""
        echo ""
        echo "==============================="
        echo "All videos processed!"
        echo "Total time: $((ELAPSED / 60)) minutes"
        echo "Total processed: $PROCESSED videos"
        break
    fi
    
    sleep 5
done