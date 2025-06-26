#!/bin/bash

# Watch Google Takeout Processing Progress
# Usage: ./watch-google-takeout-progress.sh [interval_seconds]

INTERVAL=${1:-5}  # Default 5 seconds, or use first argument
RESULTS_FILE="/tmp/google_takeout_processing_complete/all_timestamps.json"
TOTAL_TARGET=134636

echo "Watching Google Takeout processing progress (refreshing every ${INTERVAL}s)..."
echo "Press Ctrl+C to stop"
echo ""

while true; do
    clear
    echo "=== GOOGLE TAKEOUT PROCESSING STATUS - $(date) ==="
    echo ""
    
    if [ ! -f "$RESULTS_FILE" ]; then
        echo "❌ Results file not found: $RESULTS_FILE"
        echo "Processing may not have started yet..."
        sleep $INTERVAL
        continue
    fi
    
    # Calculate basic stats (count only actual timestamps, not npm verbose output)
    TOTAL=$(grep -E "^(null|[0-9]{4}-[0-9]{2}-[0-9]{2}_[0-9]{2}-[0-9]{2}-[0-9]{2})$" "$RESULTS_FILE" 2>/dev/null | wc -l)
    if [ -z "$TOTAL" ] || [ "$TOTAL" = "" ]; then
        TOTAL=0
    fi
    NULLS=$(grep -c "^null$" "$RESULTS_FILE" 2>/dev/null)
    if [ -z "$NULLS" ] || [ "$NULLS" = "" ]; then
        NULLS=0
    fi
    SUCCESS=$((TOTAL - NULLS))
    if [ $TOTAL_TARGET -gt 0 ]; then
        PROGRESS=$((TOTAL * 100 / TOTAL_TARGET))
    else
        PROGRESS=0
    fi
    
    # Active jobs
    ACTIVE_JOBS=$(ps aux | grep -E "npm.*dev.*timestamp" | grep -v grep | wc -l)
    
    # Progress bar (simple)
    BARS=$((PROGRESS / 2))  # 50 chars max
    PROGRESS_BAR=$(printf "%-50s" "$(printf "%0${BARS}s" | tr '0' '█')")
    
    echo "📊 PROGRESS"
    echo "   [$PROGRESS_BAR] $PROGRESS%"
    echo "   Files: $TOTAL / $TOTAL_TARGET"
    echo ""
    
    echo "✅ SUCCESS RATE"
    if [ $TOTAL -gt 0 ]; then
        SUCCESS_RATE=$((SUCCESS * 100 / TOTAL))
        echo "   Successful: $SUCCESS ($SUCCESS_RATE%)"
        echo "   Failed: $NULLS ($(( (NULLS * 100) / TOTAL ))%)"
    else
        echo "   No files processed yet"
    fi
    echo ""
    
    echo "⚡ PERFORMANCE"
    echo "   Active parallel jobs: $ACTIVE_JOBS"
    if [ $TOTAL -gt 0 ] && [ $ACTIVE_JOBS -gt 0 ]; then
        # Estimate time remaining (very rough)
        FILE_AGE=$(($(date +%s) - $(stat -c %Y "$RESULTS_FILE" 2>/dev/null || echo $(date +%s))))
        if [ $FILE_AGE -gt 0 ]; then
            AVG_RATE=$((TOTAL / FILE_AGE))
        else
            AVG_RATE=0
        fi
        REMAINING=$((TOTAL_TARGET - TOTAL))
        if [ $AVG_RATE -gt 0 ]; then
            ETA_SECONDS=$((REMAINING / AVG_RATE))
            ETA_HOURS=$((ETA_SECONDS / 3600))
            ETA_MINS=$(( (ETA_SECONDS % 3600) / 60 ))
            echo "   Rough ETA: ${ETA_HOURS}h ${ETA_MINS}m"
        fi
    fi
    echo ""
    
    echo "📋 RECENT ACTIVITY"
    echo "   Last 3 successful timestamps:"
    grep -v "null" "$RESULTS_FILE" 2>/dev/null | tail -3 | sed 's/^/   /' || echo "   No successful timestamps yet"
    echo ""
    
    echo "❌ RECENT FAILURES"
    RECENT_NULLS=$(tail -20 "$RESULTS_FILE" 2>/dev/null | grep -c "null" || echo "0")
    echo "   Nulls in last 20 entries: $RECENT_NULLS"
    echo ""
    
    echo "💾 FILE SIZES"
    echo "   Results file: $(du -h "$RESULTS_FILE" 2>/dev/null | cut -f1 || echo "N/A")"
    echo "   Temp directory: $(du -sh /tmp/google_takeout_processing_complete/ 2>/dev/null | cut -f1 || echo "N/A")"
    echo ""
    
    echo "Press Ctrl+C to stop watching..."
    sleep $INTERVAL
done