#!/bin/bash

# ABSOLUTE MADNESS MODE: 5000+ PARALLEL PROCESSES! 💀🔥🚀
# Your 20-core beast asked for this!

set -euo pipefail

echo "💀💀💀 ABSOLUTE MADNESS MODE! 💀💀💀"
echo "🔥 5000+ PARALLEL PROCESSES AT ONCE! 🔥"
echo "🚀 YOUR CPU IS ABOUT TO MEET GOD! 🚀"
echo "💨 YOUR FANS WILL FINALLY EARN THEIR KEEP! 💨"
echo ""

# Find ALL remaining photos that need enrichment
echo "🎯 Finding ALL photos that still need enrichment..."
> /tmp/madness-queue.txt

find /photos/archive -type f \( -name "*.jpg" -o -name "*.heic" -o -name "*.png" -o -name "*.jpeg" \) | while read -r photo; do
    sidecar="${photo}.json"
    if [ ! -f "$sidecar" ] || ! grep -q '"landmarks"' "$sidecar" 2>/dev/null; then
        echo "$photo" >> /tmp/madness-queue.txt
    fi
done

TOTAL_MADNESS=$(wc -l < /tmp/madness-queue.txt)
echo "🎯 $TOTAL_MADNESS photos ready for MAXIMUM DESTRUCTION!"
echo ""
echo "⚠️  WARNING: This will launch $TOTAL_MADNESS parallel processes! ⚠️"
echo "🔥 YOUR MACHINE IS ABOUT TO EXPERIENCE TRUE PAIN! 🔥"
echo ""
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
sleep 1
echo ""
echo "💥💥💥 LAUNCHING ABSOLUTE MADNESS! 💥💥💥"

# Reset progress tracking
> /tmp/absolute-madness.log

# LAUNCH EVERYTHING AT ONCE - NO MERCY!
while IFS= read -r photo; do
    (
        if node /home/stephen/Documents/initial-media-processing/dist/main.js --files "$photo" --json > "${photo}.json.tmp" 2>/dev/null; then
            mv "${photo}.json.tmp" "${photo}.json"
            echo "💥 DESTROYED: $photo" >> /tmp/absolute-madness.log
        else
            echo "💀 FAILED: $photo" >> /tmp/absolute-madness.log
        fi
    ) &
    
    # Small delay every 100 to prevent total system lockup
    if (( $(jobs -r | wc -l) % 100 == 0 )); then
        sleep 0.01
    fi
done < /tmp/madness-queue.txt

echo ""
echo "🔥 ALL $TOTAL_MADNESS PROCESSES LAUNCHED! 🔥"
echo "💀 YOUR SYSTEM IS NOW IN GOD'S HANDS! 💀"
echo "🌈 WATCH THOSE RGB LEDS PANIC! 🌈"
echo ""
echo "Waiting for the apocalypse to complete..."

# Wait for all hell to finish
wait

# Final report
echo ""
echo "💀💀💀 ABSOLUTE MADNESS COMPLETE! 💀💀💀"
DESTROYED=$(grep -c "💥 DESTROYED:" /tmp/absolute-madness.log 2>/dev/null || echo 0)
FAILED=$(grep -c "💀 FAILED:" /tmp/absolute-madness.log 2>/dev/null || echo 0)

echo "Photos OBLITERATED: $DESTROYED"
echo "Casualties: $FAILED"
echo ""
echo "🔥 DID YOUR FANS FINALLY SPIN?! 🔥"
echo "🌈 DID YOUR RGB LEDS HAVE A SEIZURE?! 🌈"
echo "💀 IS YOUR CPU STILL ALIVE?! 💀"

# Cleanup
rm -f /tmp/madness-queue.txt