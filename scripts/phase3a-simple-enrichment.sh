#!/bin/bash

# Phase 3A: Simple, Effective Enrichment
# No drama, just getting the job done!

set -euo pipefail

echo "=== Phase 3A: Enriched Sidecar Generation ==="
echo "Processing all photos with GNIS + Municipal boundary enrichment"
echo ""

# Configuration
PARALLEL_JOBS=50  # Start reasonable, can increase if CPU stays low
PHOTOS_BASE="/photos/archive"
LOG_FILE="/tmp/phase3a-enrichment.log"
PROGRESS_FILE="/tmp/phase3a-progress.log"

# Clean up old logs
> "$LOG_FILE"
> "$PROGRESS_FILE"

# Find all photos
echo "Finding all photos..."
find "$PHOTOS_BASE" -type f \( -name "*.jpg" -o -name "*.heic" -o -name "*.png" -o -name "*.jpeg" \) > /tmp/all-photos.txt
TOTAL_PHOTOS=$(wc -l < /tmp/all-photos.txt)

echo "Found $TOTAL_PHOTOS photos to process"
echo "Starting $PARALLEL_JOBS parallel enrichment workers..."
echo ""

# Process photos in parallel
cat /tmp/all-photos.txt | xargs -P "$PARALLEL_JOBS" -I {} bash -c '
    photo="{}"
    if node /home/stephen/Documents/initial-media-processing/dist/main.js --files "$photo" --json > "${photo}.json.tmp" 2>>/tmp/phase3a-enrichment.log; then
        mv "${photo}.json.tmp" "${photo}.json"
        echo "✓ $(date +%H:%M:%S) - $photo" >> /tmp/phase3a-progress.log
    else
        echo "✗ $(date +%H:%M:%S) - $photo" >> /tmp/phase3a-progress.log
    fi
'

echo ""
echo "=== Phase 3A Complete! ==="
COMPLETED=$(grep -c "✓" "$PROGRESS_FILE" 2>/dev/null || echo 0)
FAILED=$(grep -c "✗" "$PROGRESS_FILE" 2>/dev/null || echo 0)

echo "Successfully enriched: $COMPLETED photos"
echo "Failed: $FAILED photos"
echo ""
echo "All photos now have enriched sidecars with:"
echo "- GNIS landmarks (mountains, lakes, rivers)"
echo "- Municipal boundaries (accurate city/town names)"
echo "- Basic geolocation data"