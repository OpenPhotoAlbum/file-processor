#!/bin/bash

# NUCLEAR MODE: ABSOLUTE MAXIMUM DESTRUCTION! 🔥💀🚀
# This will TRULY max out your 20-core beast!

echo "☢️☢️☢️ NUCLEAR MODE ACTIVATED! ☢️☢️☢️"
echo "🔥 THIS WILL DESTROY YOUR CPU! 🔥"
echo "💀 NO MERCY! NO LIMITS! PURE DEVASTATION! 💀"

# Find remaining photos that actually need processing
find /photos/archive -type f \( -name "*.jpg" -o -name "*.heic" -o -name "*.png" -o -name "*.jpeg" \) | while read -r photo; do
    sidecar="${photo}.json"
    if [ ! -f "$sidecar" ] || ! grep -q '"landmarks"' "$sidecar" 2>/dev/null; then
        # LAUNCH IMMEDIATELY! NO BATCHING! PURE CHAOS!
        (
            if node /home/stephen/Documents/initial-media-processing/dist/main.js --files "$photo" --json > "${photo}.json" 2>/dev/null; then
                echo "💥 NUKED: $photo" >> /tmp/nuclear-carnage.log
            else
                echo "💀 FAILED: $photo" >> /tmp/nuclear-carnage.log
            fi
        ) &
        
        # Only limit if we hit 200 processes (your machine can handle it!)
        while [ $(jobs -r | wc -l) -ge 200 ]; do
            sleep 0.1
        done
    fi
done

echo "☢️ NUCLEAR LAUNCH COMPLETE! WAITING FOR TOTAL ANNIHILATION..."

# Wait for the apocalypse to finish
wait

# Count the devastation
completed=$(grep -c "💥 NUKED:" /tmp/nuclear-carnage.log 2>/dev/null || echo 0)
failed=$(grep -c "💀 FAILED:" /tmp/nuclear-carnage.log 2>/dev/null || echo 0)

echo ""
echo "☢️☢️☢️ NUCLEAR AFTERMATH ☢️☢️☢️"
echo "================================"
echo "💥 Photos OBLITERATED: $completed"
echo "💀 Casualties: $failed"
echo "🔥 YOUR CPU HAS BEEN DESTROYED! 🔥"
echo ""

# Final enriched sidecar count
total_enriched=$(find /photos/archive -name "*.json" -exec grep -l '"landmarks"' {} \; 2>/dev/null | wc -l)
echo "🎯 TOTAL ENRICHED SIDECARS: $total_enriched"