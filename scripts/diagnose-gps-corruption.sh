#!/bin/bash
#
# GPS Coordinate Corruption Diagnostic Script
# 
# This script identifies media files that may be affected by the GPS longitude 
# sign corruption bug where Western Hemisphere coordinates appear as positive
# longitude values instead of negative.
#
# Usage: ./scripts/diagnose-gps-corruption.sh [directory]
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
PHOTOS_DIR="${1:-/photos}"

echo "🔍 GPS Coordinate Corruption Diagnostic"
echo "======================================="
echo "Scanning directory: $PHOTOS_DIR"
echo "Looking for potential GPS coordinate corruption..."
echo ""

# Check if photos directory exists
if [ ! -d "$PHOTOS_DIR" ]; then
    echo "❌ Directory not found: $PHOTOS_DIR"
    echo "Usage: $0 [directory]"
    exit 1
fi

# Output files
RESULTS_DIR="$PROJECT_DIR/diagnostic-results"
mkdir -p "$RESULTS_DIR"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
SUSPICIOUS_FILE="$RESULTS_DIR/suspicious-gps-coordinates-$TIMESTAMP.txt"
DETAILED_REPORT="$RESULTS_DIR/gps-corruption-analysis-$TIMESTAMP.json"
SUMMARY_REPORT="$RESULTS_DIR/gps-corruption-summary-$TIMESTAMP.txt"

echo "📁 Results will be saved to:"
echo "   Suspicious files: $SUSPICIOUS_FILE"
echo "   Detailed analysis: $DETAILED_REPORT"
echo "   Summary report: $SUMMARY_REPORT"
echo ""

# Find all video and image files with GPS data
echo "📋 Step 1: Finding media files with GPS metadata..."

# Use exiftool to find files with GPS coordinates
TEMP_GPS_FILES="/tmp/files_with_gps_$TIMESTAMP.txt"

find "$PHOTOS_DIR" -type f \( \
    -iname "*.mp4" -o -iname "*.mov" -o -iname "*.avi" -o -iname "*.mkv" -o \
    -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.heic" -o -iname "*.png" -o \
    -iname "*.tiff" -o -iname "*.webp" \
\) -print0 | \
xargs -0 -P 8 -I {} sh -c 'exiftool -q -q -GPSLatitude -GPSLongitude "{}" 2>/dev/null | grep -q "GPS" && echo "{}"' > "$TEMP_GPS_FILES" 2>/dev/null

TOTAL_GPS_FILES=$(wc -l < "$TEMP_GPS_FILES")
echo "   Found $TOTAL_GPS_FILES files with GPS metadata"

if [ "$TOTAL_GPS_FILES" -eq 0 ]; then
    echo "✅ No files with GPS metadata found. Nothing to diagnose."
    rm -f "$TEMP_GPS_FILES"
    exit 0
fi

echo ""
echo "🔍 Step 2: Analyzing GPS coordinates for potential corruption..."
echo "   (Looking for positive longitude in Western Hemisphere)"

# Initialize counters
SUSPICIOUS_COUNT=0
CHECKED_COUNT=0
declare -a SUSPICIOUS_FILES=()

# Process files and look for suspicious coordinates
{
    echo "["
    FIRST=true
    
    while IFS= read -r file; do
        CHECKED_COUNT=$((CHECKED_COUNT + 1))
        
        # Show progress every 100 files
        if [ $((CHECKED_COUNT % 100)) -eq 0 ]; then
            echo "   Progress: $CHECKED_COUNT/$TOTAL_GPS_FILES files checked..." >&2
        fi
        
        # Extract GPS coordinates
        GPS_DATA=$(exiftool -json -GPSLatitude -GPSLongitude -GPSLatitudeRef -GPSLongitudeRef "$file" 2>/dev/null)
        
        if [ -n "$GPS_DATA" ] && [ "$GPS_DATA" != "[]" ]; then
            # Parse coordinates - looking for patterns that suggest corruption
            LAT=$(echo "$GPS_DATA" | jq -r '.[0].GPSLatitude // empty' 2>/dev/null)
            LON=$(echo "$GPS_DATA" | jq -r '.[0].GPSLongitude // empty' 2>/dev/null)
            LAT_REF=$(echo "$GPS_DATA" | jq -r '.[0].GPSLatitudeRef // empty' 2>/dev/null)
            LON_REF=$(echo "$GPS_DATA" | jq -r '.[0].GPSLongitudeRef // empty' 2>/dev/null)
            
            # Extract numeric values from coordinate strings
            LAT_NUM=""
            LON_NUM=""
            
            if [[ "$LAT" =~ ^[0-9.-]+$ ]]; then
                LAT_NUM="$LAT"
            elif [[ "$LAT" =~ ^([0-9.]+) ]]; then
                LAT_NUM="${BASH_REMATCH[1]}"
            fi
            
            if [[ "$LON" =~ ^[0-9.-]+$ ]]; then
                LON_NUM="$LON"
            elif [[ "$LON" =~ ^([0-9.]+) ]]; then
                LON_NUM="${BASH_REMATCH[1]}"
            fi
            
            # Check for suspicious patterns
            SUSPICIOUS=""
            REASON=""
            
            if [ -n "$LAT_NUM" ] && [ -n "$LON_NUM" ]; then
                # Pattern 1: North American latitude (30-70°N) with positive longitude (should be negative)
                if (( $(echo "$LAT_NUM >= 30 && $LAT_NUM <= 70" | bc -l) )) && (( $(echo "$LON_NUM > 0 && $LON_NUM < 180" | bc -l) )); then
                    # Check if this looks like a Western Hemisphere location incorrectly marked as Eastern
                    if [[ "$LON" =~ [Ww] ]] || [ "$LON_REF" = "West" ] || [ "$LON_REF" = "W" ]; then
                        SUSPICIOUS="high"
                        REASON="Western longitude marked with positive value and West reference"
                    elif [ "$LON_REF" = "null" ] || [ -z "$LON_REF" ]; then
                        # Longitude in range that could be North America if sign were flipped
                        if (( $(echo "$LON_NUM >= 60 && $LON_NUM <= 130" | bc -l) )); then
                            SUSPICIOUS="high"
                            REASON="North American latitude with positive longitude (no reference) - likely Western Hemisphere"
                        fi
                    fi
                fi
                
                # Pattern 2: European latitude with suspicious positive longitude
                if (( $(echo "$LAT_NUM >= 45 && $LAT_NUM <= 65" | bc -l) )) && (( $(echo "$LON_NUM > 40 && $LON_NUM < 100" | bc -l) )); then
                    if [[ "$LON" =~ [Ww] ]] || [ "$LON_REF" = "West" ] || [ "$LON_REF" = "W" ]; then
                        SUSPICIOUS="medium"
                        REASON="European/North Atlantic coordinates with West reference but positive longitude"
                    fi
                fi
            fi
            
            if [ -n "$SUSPICIOUS" ]; then
                SUSPICIOUS_COUNT=$((SUSPICIOUS_COUNT + 1))
                SUSPICIOUS_FILES+=("$file")
                echo "$file" >> "$SUSPICIOUS_FILE"
                
                # Add to JSON report
                if [ "$FIRST" = false ]; then
                    echo ","
                fi
                FIRST=false
                
                echo "  {"
                echo "    \"file\": \"$file\","
                echo "    \"latitude\": \"$LAT\","
                echo "    \"longitude\": \"$LON\","
                echo "    \"latitudeRef\": \"$LAT_REF\","
                echo "    \"longitudeRef\": \"$LON_REF\","
                echo "    \"suspicionLevel\": \"$SUSPICIOUS\","
                echo "    \"reason\": \"$REASON\","
                echo "    \"numericLatitude\": $LAT_NUM,"
                echo "    \"numericLongitude\": $LON_NUM"
                echo "  }"
            fi
        fi
    done < "$TEMP_GPS_FILES"
    
    echo ""
    echo "]"
} > "$DETAILED_REPORT"

echo ""
echo "📊 Step 3: Generating summary report..."

# Generate summary report
{
    echo "GPS Coordinate Corruption Analysis Report"
    echo "========================================"
    echo "Generated: $(date)"
    echo "Scanned directory: $PHOTOS_DIR"
    echo ""
    echo "SUMMARY STATISTICS:"
    echo "  Total media files with GPS: $TOTAL_GPS_FILES"
    echo "  Files checked: $CHECKED_COUNT"
    echo "  Suspicious coordinates found: $SUSPICIOUS_COUNT"
    echo "  Corruption rate: $(echo "scale=2; $SUSPICIOUS_COUNT * 100 / $TOTAL_GPS_FILES" | bc -l)%"
    echo ""
    
    if [ "$SUSPICIOUS_COUNT" -gt 0 ]; then
        echo "HIGH PRIORITY FILES (likely corruption):"
        echo "---------------------------------------"
        jq -r '.[] | select(.suspicionLevel == "high") | "  \(.file) - \(.reason)"' "$DETAILED_REPORT" 2>/dev/null || echo "  (See detailed report for high priority files)"
        echo ""
        
        MEDIUM_COUNT=$(jq '[.[] | select(.suspicionLevel == "medium")] | length' "$DETAILED_REPORT" 2>/dev/null || echo "0")
        if [ "$MEDIUM_COUNT" -gt 0 ]; then
            echo "MEDIUM PRIORITY FILES (possible corruption):"
            echo "-------------------------------------------"
            jq -r '.[] | select(.suspicionLevel == "medium") | "  \(.file) - \(.reason)"' "$DETAILED_REPORT" 2>/dev/null || echo "  (See detailed report for medium priority files)"
            echo ""
        fi
        
        echo "RECOMMENDATIONS:"
        echo "  1. Review files listed above for coordinate accuracy"
        echo "  2. Test a few files with the updated GPS parsing code"
        echo "  3. Consider batch reprocessing if corruption is widespread"
        echo "  4. Files: $SUSPICIOUS_FILE"
        echo "  5. Detailed analysis: $DETAILED_REPORT"
    else
        echo "✅ No suspicious GPS coordinates detected."
        echo "   All files appear to have correct coordinate signs."
    fi
    
    echo ""
    echo "NEXT STEPS:"
    echo "  - Review detailed report: $DETAILED_REPORT"
    echo "  - Test suspicious files with: node dist/main.js -f <file> --json"
    echo "  - Batch reprocess if needed: find /photos -name '*.json' | xargs rm && npm run process-all"
    
} > "$SUMMARY_REPORT"

# Cleanup
rm -f "$TEMP_GPS_FILES"

# Display summary
echo "✅ Analysis complete!"
echo ""
cat "$SUMMARY_REPORT"

echo ""
echo "📄 Generated files:"
echo "   📋 Summary: $SUMMARY_REPORT"
echo "   📊 Detailed JSON: $DETAILED_REPORT"
if [ "$SUSPICIOUS_COUNT" -gt 0 ]; then
    echo "   ⚠️  Suspicious files: $SUSPICIOUS_FILE"
fi