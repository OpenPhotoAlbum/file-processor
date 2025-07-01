#!/bin/bash

# BEAST MODE: Simple, aggressive parallel processing
# No fancy parsing - just MAXIMUM PARALLEL POWER!

set -euo pipefail

echo "🔥🔥🔥 BEAST MODE ACTIVATED! 🔥🔥🔥"
echo "Maxing out your 20-core machine!"

# Kill any existing turbo logs
rm -f /tmp/beast-mode-*.log

# Find ALL photos that need enriched sidecars
echo "Finding remaining photos..."
find /photos/archive -type f \( -name "*.jpg" -o -name "*.heic" -o -name "*.png" -o -name "*.jpeg" \) > /tmp/beast-all-photos.txt

# Filter for photos without enriched sidecars
echo "Filtering for photos needing enrichment..."
> /tmp/beast-remaining.txt
while read -r photo; do
    sidecar="${photo}.json"
    if [ ! -f "$sidecar" ] || ! grep -q '"landmarks"' "$sidecar" 2>/dev/null; then
        echo "$photo" >> /tmp/beast-remaining.txt
    fi
done < /tmp/beast-all-photos.txt

remaining=$(wc -l < /tmp/beast-remaining.txt)
echo "🎯 Found $remaining photos needing BEAST MODE processing!"

if [ "$remaining" -eq 0 ]; then
    echo "✅ All photos already have enriched sidecars!"
    exit 0
fi

# Split into tiny batches of 10 photos each
echo "Creating micro-batches..."
split -l 10 /tmp/beast-remaining.txt /tmp/beast-batch-

# Launch MAXIMUM PARALLEL processing (up to 150 processes!)
echo "🚀 LAUNCHING BEAST MODE! UP TO 150 PARALLEL PROCESSES!"

batch_count=0
for batch_file in /tmp/beast-batch-*; do
    if [ -f "$batch_file" ]; then
        ((batch_count++))
        
        # Launch each batch in background with maximum aggression
        (
            batch_name="beast-$(basename "$batch_file")"
            while read -r photo; do
                if [ -f "$photo" ]; then
                    if node /home/stephen/Documents/initial-media-processing/dist/main.js --files "$photo" --json > "${photo}.json" 2>/dev/null; then
                        echo "✅ BEAST: $photo" >> /tmp/beast-progress.log
                    else
                        echo "❌ BEAST: $photo" >> /tmp/beast-progress.log
                    fi
                fi
            done < "$batch_file"
            rm -f "$batch_file"  # Clean up
        ) &
        
        # Status update every 50 batches
        if (( batch_count % 50 == 0 )); then
            echo "🔥 Launched $batch_count batches..."
        fi
        
        # Slight delay to prevent overwhelming the system startup
        if (( batch_count % 20 == 0 )); then
            sleep 0.1
        fi
    fi
done

echo "🔥 BEAST MODE: $batch_count micro-batches launched!"
echo "🔥 Your CPU is about to get DESTROYED! 🔥"

# Wait for all background jobs
wait

# Generate summary
completed=$(grep -c "✅ BEAST:" /tmp/beast-progress.log 2>/dev/null || echo 0)
errors=$(grep -c "❌ BEAST:" /tmp/beast-progress.log 2>/dev/null || echo 0)

echo ""
echo "🎯 BEAST MODE COMPLETE! 🎯"
echo "================================"
echo "Completed: $completed photos"
echo "Errors: $errors photos"
echo "🔥 YOUR MACHINE JUST GOT BEASTED! 🔥"

# Cleanup
rm -f /tmp/beast-*.txt /tmp/beast-batch-*