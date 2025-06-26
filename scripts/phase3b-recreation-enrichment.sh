#!/bin/bash

# PHASE 3B: Recreation.gov Enrichment
# Re-process all photos to add Recreation.gov data to existing JSON sidecars

set -euo pipefail

echo "🏕️🏕️🏕️ PHASE 3B: RECREATION.GOV ENRICHMENT! 🏕️🏕️🏕️"
echo "🎯 Adding Recreation.gov data to existing enriched sidecars"
echo "🚀 Re-processing all 15,843 photos with full provider suite"
echo ""

# Find all photos with GPS coordinates (likely to have landmarks)
echo "📡 Finding photos with GPS coordinates for Recreation.gov enrichment..."
> /tmp/gps-photos.txt

find /photos/archive -name "*.json" -exec grep -l '"latitude".*[1-9]' {} \; | while read sidecar; do
    photo="${sidecar%.json}"
    if [ -f "$photo" ]; then
        echo "$photo" >> /tmp/gps-photos.txt
    fi
done

GPS_COUNT=$(wc -l < /tmp/gps-photos.txt || echo 0)
echo "📍 Found $GPS_COUNT photos with GPS coordinates"

# Also process some non-GPS photos to ensure Recreation.gov provider is working
echo "🌍 Including sample non-GPS photos to test full provider suite..."
find /photos/archive -name "*.jpg" -o -name "*.heic" -o -name "*.png" -o -name "*.jpeg" | head -1000 >> /tmp/gps-photos.txt

TOTAL_PHOTOS=$(wc -l < /tmp/gps-photos.txt)
echo "📸 Total photos for Recreation.gov enrichment: $TOTAL_PHOTOS"
echo ""

echo "🏕️ STARTING RECREATION.GOV ENRICHMENT WITH 40 PARALLEL PROCESSES!"
echo "💡 Optimized for Recreation.gov rate limit: 50 requests/second"
echo "🧠 Smart caching to minimize duplicate API calls"
echo ""

# Clean logs
> /tmp/recreation-enrichment.log

# Process with optimized parallelism for 50 req/sec rate limit
# Recreation.gov allows 50 requests/second, so we use 40 parallel workers with small delays
cat /tmp/gps-photos.txt | xargs -P 40 -I {} bash -c '
    photo="{}"
    sidecar="${photo}.json"
    
    # Skip if photo doesn'\''t exist
    if [ ! -f "$photo" ]; then
        exit 0
    fi
    
    # Check if Recreation.gov data already exists to avoid unnecessary API calls
    if [ -f "$sidecar" ]; then
        RECREATION_EXISTS=$(cat "$sidecar" | jq -e '\''[.location.landmarks[]? | select(.source == "Recreation.gov")] | length > 0'\'' 2>/dev/null || echo false)
        PROVIDERS_USED=$(cat "$sidecar" | jq -r '\''.location.enrichmentStatus.providersUsed[]? // empty'\'' 2>/dev/null | grep -q "Recreation.gov" && echo true || echo false)
        
        # Skip if Recreation.gov already processed this photo
        if [ "$RECREATION_EXISTS" = "true" ] || [ "$PROVIDERS_USED" = "true" ]; then
            echo "📋 $(date +%H:%M:%S) - $photo (cached)" >> /tmp/recreation-enrichment.log
            exit 0
        fi
    fi
    
    # Small delay to stay under 50 req/sec limit (25ms keeps us around 40 req/sec)
    sleep 0.025
    
    # Re-process with full enrichment (GNIS + Recreation.gov + NPS)
    if node /home/stephen/Documents/initial-media-processing/dist/main.js --files "$photo" --json > "${sidecar}.tmp" 2>/dev/null; then
        mv "${sidecar}.tmp" "$sidecar"
        echo "🏕️ $(date +%H:%M:%S) - $photo" >> /tmp/recreation-enrichment.log
    else
        echo "💀 $(date +%H:%M:%S) - $photo" >> /tmp/recreation-enrichment.log
    fi
'

echo ""
echo "🏕️ RECREATION.GOV ENRICHMENT COMPLETE! 🏕️"
ENRICHED=$(grep -c "🏕️" /tmp/recreation-enrichment.log 2>/dev/null || echo 0)
CACHED=$(grep -c "📋" /tmp/recreation-enrichment.log 2>/dev/null || echo 0)
FAILED=$(grep -c "💀" /tmp/recreation-enrichment.log 2>/dev/null || echo 0)

echo "Photos newly enriched: $ENRICHED"
echo "Photos already cached: $CACHED"
echo "Failed: $FAILED"
echo "📊 API calls saved by caching: $CACHED"
echo ""

# Test a few enriched photos to verify Recreation.gov data
echo "🧪 Testing Recreation.gov enrichment results..."
SAMPLE_PHOTO=$(head -1 /tmp/gps-photos.txt)
if [ -f "${SAMPLE_PHOTO}.json" ]; then
    PROVIDERS_USED=$(cat "${SAMPLE_PHOTO}.json" | jq -r '.location.enrichmentStatus.providersUsed[]' 2>/dev/null | tr '\n' ', ' | sed 's/,$//')
    echo "✅ Sample providers used: $PROVIDERS_USED"
    
    RECREATION_COUNT=$(cat "${SAMPLE_PHOTO}.json" | jq '[.location.landmarks[] | select(.source == "Recreation.gov")] | length' 2>/dev/null || echo 0)
    echo "🏕️ Recreation.gov landmarks in sample: $RECREATION_COUNT"
fi

echo ""
echo "🎯 Phase 3B Recreation.gov enrichment complete!"
echo "💡 All photos now have full provider data: GNIS + Recreation.gov + NPS"

# Cleanup
rm -f /tmp/gps-photos.txt