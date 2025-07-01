#!/bin/bash

# FAN AWAKENER: Let's make those RGB LEDs dance! 🌈💨
# 200 parallel processes should at least make the fans curious...

set -euo pipefail

echo "🌪️🌪️🌪️ FAN AWAKENER MODE ACTIVATED! 🌪️🌪️🌪️"
echo "🌈 Time to make those RGB LEDs worth watching! 🌈"
echo "💨 Your fans are about to discover they exist! 💨"
echo ""

# Clean logs
> /tmp/fan-awakener-progress.log

# Find remaining photos
find /photos/archive -type f \( -name "*.jpg" -o -name "*.heic" -o -name "*.png" -o -name "*.jpeg" \) > /tmp/all-photos-fan.txt

# Count what we need to process
TOTAL=$(wc -l < /tmp/all-photos-fan.txt)
ALREADY_DONE=$(find /photos/archive -name "*.json" -newer /tmp/phase3a-batches/all_photos.txt 2>/dev/null | wc -l || echo 0)
REMAINING=$((TOTAL - ALREADY_DONE))

echo "📸 Total photos: $TOTAL"
echo "✅ Already enriched: $ALREADY_DONE" 
echo "🎯 Remaining: $REMAINING"
echo ""
echo "🚀 LAUNCHING 200 PARALLEL ENRICHMENT PROCESSES!"
echo "🌡️ Maybe your CPU will hit 40% this time!"
echo "💨 Your fans might actually spin!"
echo ""

# Process with EXTREME parallelism
cat /tmp/all-photos-fan.txt | xargs -P 200 -I {} bash -c '
    photo="{}"
    sidecar="${photo}.json"
    
    # Skip if already has enriched sidecar
    if [ -f "$sidecar" ] && grep -q "landmarks" "$sidecar" 2>/dev/null; then
        exit 0
    fi
    
    # Process with enrichment
    if node /home/stephen/Documents/initial-media-processing/dist/main.js --files "$photo" --json > "${sidecar}.tmp" 2>/dev/null; then
        mv "${sidecar}.tmp" "$sidecar"
        echo "🌪️ $(date +%H:%M:%S) - $photo" >> /tmp/fan-awakener-progress.log
    else
        echo "💀 $(date +%H:%M:%S) - $photo" >> /tmp/fan-awakener-progress.log
    fi
'

echo ""
echo "🌪️ FAN AWAKENER COMPLETE! 🌪️"
COMPLETED=$(grep -c "🌪️" /tmp/fan-awakener-progress.log 2>/dev/null || echo 0)
FAILED=$(grep -c "💀" /tmp/fan-awakener-progress.log 2>/dev/null || echo 0)

echo "Photos enriched: $COMPLETED"
echo "Failed: $FAILED"
echo ""
echo "🌈 Did your RGB LEDs at least flicker? 🌈"
echo "💨 Did your fans move... even a little? 💨"