#!/bin/bash

# Identify Live Photos - short videos with corresponding HEIC/JPG files
# Live Photos are typically 1.5-3 seconds long and have specific EXIF markers

echo "=== Live Photo Identification Script ==="
echo "Looking for Live Photos in /photos directory..."
echo ""

PHOTOS_DIR="/photos"
LIVE_PHOTOS_COUNT=0
SHORT_VIDEOS_COUNT=0
PAIRED_COUNT=0

# Temporary file to store results
TEMP_RESULTS=$(mktemp)
LIVE_PHOTOS_LIST=$(mktemp)
trap "rm -f $TEMP_RESULTS $LIVE_PHOTOS_LIST" EXIT

# Function to check video duration using ffprobe
get_video_duration() {
    local video_file="$1"
    ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$video_file" 2>/dev/null
}

# Function to check for Live Photo EXIF markers
check_live_photo_exif() {
    local video_file="$1"
    local json_file="${video_file}.json"
    
    if [ -f "$json_file" ]; then
        # Check for Live Photo indicators in metadata
        # Common indicators: Apple maker notes, content identifier, or specific tags
        local is_live=$(jq -r '
            .results[0].metadata.technical | 
            to_entries | 
            map(select(.key | test("Live|ContentIdentifier|MediaGroupUUID"; "i"))) | 
            length
        ' "$json_file" 2>/dev/null)
        
        if [ "$is_live" -gt 0 ]; then
            return 0
        fi
    fi
    
    # Also check with exiftool directly for Live Photo markers
    local live_markers=$(exiftool -ContentIdentifier -MediaGroupUUID -LivePhotoAuto "$video_file" 2>/dev/null | grep -v "^$" | wc -l)
    if [ "$live_markers" -gt 0 ]; then
        return 0
    fi
    
    return 1
}

# Function to find corresponding image file
find_image_pair() {
    local video_file="$1"
    local base_name="${video_file%.*}"
    
    # Check for HEIC first (most common for Live Photos)
    if [ -f "${base_name}.HEIC" ] || [ -f "${base_name}.heic" ]; then
        echo "HEIC"
        return 0
    fi
    
    # Then check for JPEG variants
    if [ -f "${base_name}.JPG" ] || [ -f "${base_name}.jpg" ] || [ -f "${base_name}.JPEG" ] || [ -f "${base_name}.jpeg" ]; then
        echo "JPEG"
        return 0
    fi
    
    echo "NONE"
    return 1
}

echo "Analyzing video files..."
echo "This may take a while..."
echo ""

# Find all MOV files (Live Photos are typically MOV format)
find "$PHOTOS_DIR" -type f \( -name "*.mov" -o -name "*.MOV" \) | while read -r video_file; do
    # Get video duration
    duration=$(get_video_duration "$video_file")
    
    if [ -n "$duration" ]; then
        # Check if duration is less than 5 seconds (typically 1.5-3 for Live Photos)
        if (( $(echo "$duration < 5" | bc -l) )); then
            SHORT_VIDEOS_COUNT=$((SHORT_VIDEOS_COUNT + 1))
            
            # Check for Live Photo EXIF markers
            if check_live_photo_exif "$video_file"; then
                LIVE_PHOTOS_COUNT=$((LIVE_PHOTOS_COUNT + 1))
                
                # Check for corresponding image
                image_type=$(find_image_pair "$video_file")
                if [ "$image_type" != "NONE" ]; then
                    PAIRED_COUNT=$((PAIRED_COUNT + 1))
                    echo "$video_file|$duration|$image_type|EXIF_CONFIRMED" >> "$LIVE_PHOTOS_LIST"
                else
                    echo "$video_file|$duration|NONE|EXIF_CONFIRMED" >> "$LIVE_PHOTOS_LIST"
                fi
            else
                # Still might be a Live Photo based on duration and pairing
                image_type=$(find_image_pair "$video_file")
                if [ "$image_type" != "NONE" ]; then
                    echo "$video_file|$duration|$image_type|DURATION_BASED" >> "$LIVE_PHOTOS_LIST"
                fi
            fi
        fi
    fi
    
    # Progress indicator
    printf "."
done

echo ""
echo ""
echo "=== Analysis Complete ==="
echo ""

# Count results
TOTAL_LIVE_PHOTOS=$(wc -l < "$LIVE_PHOTOS_LIST")
EXIF_CONFIRMED=$(grep -c "EXIF_CONFIRMED" "$LIVE_PHOTOS_LIST")
DURATION_BASED=$(grep -c "DURATION_BASED" "$LIVE_PHOTOS_LIST")

echo "Summary:"
echo "- Short videos (< 5 seconds): $SHORT_VIDEOS_COUNT"
echo "- Confirmed Live Photos (EXIF): $EXIF_CONFIRMED"
echo "- Probable Live Photos (duration + pair): $DURATION_BASED"
echo "- Total Live Photos identified: $TOTAL_LIVE_PHOTOS"
echo ""

if [ "$TOTAL_LIVE_PHOTOS" -gt 0 ]; then
    echo "Live Photos breakdown:"
    echo "- With HEIC pair: $(grep -c "|HEIC|" "$LIVE_PHOTOS_LIST")"
    echo "- With JPEG pair: $(grep -c "|JPEG|" "$LIVE_PHOTOS_LIST")"
    echo "- Without image pair: $(grep -c "|NONE|" "$LIVE_PHOTOS_LIST")"
    echo ""
    
    echo "Sample Live Photos found:"
    echo "========================="
    head -10 "$LIVE_PHOTOS_LIST" | while IFS='|' read -r video duration image_type detection; do
        echo "Video: $(basename "$video")"
        echo "  Duration: ${duration}s"
        echo "  Image pair: $image_type"
        echo "  Detection: $detection"
        echo ""
    done
    
    # Save full results
    OUTPUT_FILE="/home/stephen/Documents/initial-media-processing/live-photos-analysis.txt"
    cp "$LIVE_PHOTOS_LIST" "$OUTPUT_FILE"
    echo "Full results saved to: $OUTPUT_FILE"
    
    # Also create a CSV for easier analysis
    CSV_FILE="/home/stephen/Documents/initial-media-processing/live-photos-analysis.csv"
    echo "video_path,duration_seconds,image_type,detection_method,base_name" > "$CSV_FILE"
    while IFS='|' read -r video duration image_type detection; do
        base_name=$(basename "${video%.*}")
        echo "\"$video\",$duration,$image_type,$detection,\"$base_name\"" >> "$CSV_FILE"
    done < "$LIVE_PHOTOS_LIST"
    echo "CSV results saved to: $CSV_FILE"
fi

# Look for specific Live Photo EXIF tags in a sample
if [ "$TOTAL_LIVE_PHOTOS" -gt 0 ]; then
    echo ""
    echo "Checking EXIF tags in a sample Live Photo..."
    SAMPLE_VIDEO=$(head -1 "$LIVE_PHOTOS_LIST" | cut -d'|' -f1)
    if [ -f "$SAMPLE_VIDEO" ]; then
        echo "Sample: $(basename "$SAMPLE_VIDEO")"
        echo "Key EXIF fields that might indicate Live Photo:"
        exiftool "$SAMPLE_VIDEO" 2>/dev/null | grep -E -i "(Live|Content.*Identifier|MediaGroup|Apple|MakerNote)" | head -10
    fi
fi