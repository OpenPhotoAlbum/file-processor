#!/bin/bash
#
# Quick GPS Corruption Check
# Uses existing JSON metadata files to quickly identify potential GPS coordinate corruption
#

set -e

PHOTOS_DIR="${1:-/photos}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

echo "🔍 Quick GPS Corruption Check"
echo "============================="
echo "Scanning existing metadata files in: $PHOTOS_DIR"
echo ""
echo "🎯 NOTE: GPS corruption was found to be VIDEO-SPECIFIC"
echo "   • Video files (MP4/MOV): 20.2% corruption rate identified"
echo "   • Image files (JPG/JPEG): Always processed correctly"
echo ""

# Find existing JSON metadata files
JSON_FILES=$(find "$PHOTOS_DIR" -name "*.json" | head -100)
JSON_COUNT=$(echo "$JSON_FILES" | wc -l)

if [ -z "$JSON_FILES" ] || [ "$JSON_COUNT" -eq 0 ]; then
    echo "❌ No JSON metadata files found in $PHOTOS_DIR"
    echo "   Run metadata extraction first, then rerun this diagnostic."
    exit 1
fi

echo "📋 Found $JSON_COUNT JSON metadata files (checking first 100)"
echo ""

# Initialize counters
SUSPICIOUS_COUNT=0
TOTAL_WITH_GPS=0
CHECKED_COUNT=0

echo "🔍 Analyzing GPS coordinates..."
echo ""

# Check each JSON file for suspicious GPS coordinates
while IFS= read -r json_file; do
    if [ -f "$json_file" ]; then
        CHECKED_COUNT=$((CHECKED_COUNT + 1))
        
        # Extract GPS coordinates from JSON
        GPS_DATA=$(jq -r '
            if type == "object" then
                if .location?.primary then .location.primary
                elif .results?[0]?.metadata?.location?.primary then .results[0].metadata.location.primary
                else empty end
            else empty end
        ' "$json_file" 2>/dev/null)
        
        if [ -n "$GPS_DATA" ] && [ "$GPS_DATA" != "null" ]; then
            TOTAL_WITH_GPS=$((TOTAL_WITH_GPS + 1))
            
            LAT=$(echo "$GPS_DATA" | jq -r '.latitude // empty')
            LON=$(echo "$GPS_DATA" | jq -r '.longitude // empty')
            
            if [ -n "$LAT" ] && [ -n "$LON" ]; then
                # Check for suspicious patterns (North American latitude with positive longitude)
                if (( $(echo "$LAT >= 30 && $LAT <= 70" | bc -l) )) && (( $(echo "$LON > 0 && $LON < 180" | bc -l) )); then
                    # Specifically look for longitude values that would make sense as negative (North America)
                    if (( $(echo "$LON >= 60 && $LON <= 130" | bc -l) )); then
                        SUSPICIOUS_COUNT=$((SUSPICIOUS_COUNT + 1))
                        
                        # Get source file path
                        SOURCE_FILE=$(jq -r '
                            if .file?.path then .file.path
                            elif .results?[0]?.metadata?.file?.path then .results[0].metadata.file.path
                            elif .results?[0]?.filePath then .results[0].filePath
                            else "unknown" end
                        ' "$json_file" 2>/dev/null)
                        
                        echo "⚠️  SUSPICIOUS: $SOURCE_FILE"
                        echo "   📍 Coordinates: $LAT, $LON (should probably be $LAT, -$LON)"
                        echo "   📄 Metadata: $json_file"
                        echo ""
                    fi
                fi
            fi
        fi
        
        # Progress indicator
        if [ $((CHECKED_COUNT % 20)) -eq 0 ]; then
            echo "   Progress: $CHECKED_COUNT files checked, $TOTAL_WITH_GPS with GPS, $SUSPICIOUS_COUNT suspicious..."
        fi
    fi
done <<< "$JSON_FILES"

echo ""
echo "📊 SUMMARY RESULTS"
echo "=================="
echo "  JSON files checked: $CHECKED_COUNT"
echo "  Files with GPS data: $TOTAL_WITH_GPS"
echo "  Suspicious coordinates: $SUSPICIOUS_COUNT"

if [ "$TOTAL_WITH_GPS" -gt 0 ]; then
    CORRUPTION_RATE=$(echo "scale=1; $SUSPICIOUS_COUNT * 100 / $TOTAL_WITH_GPS" | bc -l)
    echo "  Potential corruption rate: $CORRUPTION_RATE%"
else
    echo "  Potential corruption rate: N/A (no GPS data found)"
fi

echo ""

if [ "$SUSPICIOUS_COUNT" -gt 0 ]; then
    echo "🚨 FINDINGS:"
    echo "   $SUSPICIOUS_COUNT files have coordinates that appear corrupted"
    echo "   These show North American latitudes with positive longitude"
    echo "   (Should be negative longitude for Western Hemisphere)"
    echo ""
    echo "💡 NEXT STEPS:"
    echo "   1. Test one suspicious file with the GPS fix:"
    echo "      node dist/main.js -f <suspicious-file> --json | jq '.location.primary'"
    echo ""
    echo "   2. If coordinates are now correct, consider batch reprocessing:"
    echo "      find /photos -name '*.json' -delete"
    echo "      # Re-run your processing pipeline with the GPS fix"
    echo ""
    echo "   3. For targeted reprocessing with merge (preserves other metadata):"
    echo "      # Process each suspicious file with --merge flag"
    echo "      node dist/main.js -f <file> -o <file>.json --merge"
else
    echo "✅ GOOD NEWS:"
    echo "   No suspicious GPS coordinates detected in existing metadata!"
    echo "   Either files don't have the corruption pattern, or"
    echo "   they've already been processed with the GPS fix."
    echo ""
    echo "📋 REMINDER: Only VIDEO files were affected by this bug"
    echo "   Image files (JPG/JPEG) always processed GPS coordinates correctly."
fi

echo ""
echo "🔧 GPS Fix Status: Applied in commit 4b67d8a"
echo "📋 For detailed analysis, run: ./scripts/diagnose-gps-corruption.sh"