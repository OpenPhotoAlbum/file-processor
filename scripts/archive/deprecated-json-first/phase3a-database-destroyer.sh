#!/bin/bash

# DATABASE DESTROYER MODE: The REAL stress test! 💀🔥
# This time with ACTUAL enrichment queries!

set -euo pipefail

echo "💀💀💀 DATABASE DESTROYER MODE ACTIVATED! 💀💀💀"
echo "🔥 This time it's REAL! Full GPS + GNIS + Municipal queries! 🔥"
echo "🗄️ Your database is about to CRY! 🗄️"
echo ""

# Clean up old logs
rm -f /tmp/destroyer-*.log
rm -f /tmp/destroyer-progress.log

# Configuration for REAL destruction
BATCH_SIZE=20              # Small batches for better parallelism
MAX_PARALLEL=100          # 100 concurrent database hammerers!
PHOTOS_BASE="/photos/archive"
CLI_COMMAND="node /home/stephen/Documents/initial-media-processing/dist/main.js"

# Find ALL photos (we're re-processing everything with proper enrichment)
echo "🎯 Finding all photos for COMPLETE re-enrichment..."
find "$PHOTOS_BASE" -type f \( -name "*.jpg" -o -name "*.heic" -o -name "*.png" -o -name "*.jpeg" \) > /tmp/destroyer-all-photos.txt

total_photos=$(wc -l < /tmp/destroyer-all-photos.txt)
echo "📸 Found $total_photos photos to DESTROY with enrichment!"

# Split into small batches
split -l "$BATCH_SIZE" /tmp/destroyer-all-photos.txt /tmp/destroyer-batch-

# Process a batch with REAL database queries
process_destroyer_batch() {
    local batch_file="$1"
    local batch_name=$(basename "$batch_file")
    local log_file="/tmp/destroyer-${batch_name}.log"
    
    while IFS= read -r photo; do
        if [ -f "$photo" ]; then
            start_time=$(date +%s.%N)
            
            # Force overwrite with FULL enrichment
            if $CLI_COMMAND --files "$photo" --json > "${photo}.json.tmp" 2>>"$log_file"; then
                mv "${photo}.json.tmp" "${photo}.json"
                end_time=$(date +%s.%N)
                duration=$(echo "$end_time - $start_time" | bc)
                echo "💥 ENRICHED: $photo (${duration}s)" >> /tmp/destroyer-progress.log
            else
                echo "💀 FAILED: $photo" >> /tmp/destroyer-progress.log
            fi
        fi
    done < "$batch_file"
    
    rm -f "$batch_file"
}

# Launch the destruction!
echo "🚀 LAUNCHING $MAX_PARALLEL PARALLEL DATABASE DESTROYERS!"
echo "⚡ Each photo will trigger multiple spatial queries!"
echo "🔥 Watch your database CPU explode! 🔥"
echo ""

# Export function for parallel execution
export -f process_destroyer_batch
export CLI_COMMAND

# Get initial database stats
echo "📊 Initial database load:"
docker exec f7c4d36bc660_mykin_db mysqladmin -u root -p'Dalekini21!' processlist | head -10 || echo "Can't check DB stats"

# Launch parallel destruction
batch_count=0
for batch_file in /tmp/destroyer-batch-*; do
    if [ -f "$batch_file" ]; then
        ((batch_count++))
        
        # Launch batch processor
        process_destroyer_batch "$batch_file" &
        
        # Control parallelism
        while [ $(jobs -r | wc -l) -ge "$MAX_PARALLEL" ]; do
            sleep 0.1
        done
        
        # Progress indicator
        if (( batch_count % 50 == 0 )); then
            echo "🔥 Launched $batch_count batches..."
            completed=$(grep -c "💥 ENRICHED:" /tmp/destroyer-progress.log 2>/dev/null || echo 0)
            echo "📊 Progress: $completed enriched so far..."
        fi
    fi
done

echo ""
echo "⚡ ALL BATCHES LAUNCHED! Database is getting HAMMERED!"
echo "🔥 Monitor the destruction with:"
echo "   watch -n 1 \"grep -c '💥 ENRICHED:' /tmp/destroyer-progress.log\""
echo ""

# Wait for completion
wait

# Final stats
echo ""
echo "💀💀💀 DATABASE DESTROYER COMPLETE! 💀💀💀"
completed=$(grep -c "💥 ENRICHED:" /tmp/destroyer-progress.log 2>/dev/null || echo 0)
failed=$(grep -c "💀 FAILED:" /tmp/destroyer-progress.log 2>/dev/null || echo 0)
avg_time=$(grep "💥 ENRICHED:" /tmp/destroyer-progress.log | sed -n 's/.*(\(.*\)s).*/\1/p' | awk '{sum+=$1; count++} END {if(count>0) print sum/count; else print 0}')

echo "================================"
echo "📸 Photos enriched: $completed"
echo "💀 Failures: $failed"
echo "⏱️  Average time per photo: ${avg_time}s"
echo "🔥 Your database has been DESTROYED! 🔥"

# Show final database stats
echo ""
echo "📊 Final database load:"
docker exec f7c4d36bc660_mykin_db mysqladmin -u root -p'Dalekini21!' processlist | head -10 || echo "Can't check DB stats"

# Cleanup
rm -f /tmp/destroyer-batch-*
rm -f /tmp/destroyer-all-photos.txt