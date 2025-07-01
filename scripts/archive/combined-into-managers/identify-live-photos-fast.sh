#!/bin/bash

# Fast Live Photo identification using existing JSON metadata
# Checks for Live Photo markers in our processed metadata

echo "=== Fast Live Photo Identification (using JSON metadata) ==="
echo ""

PHOTOS_DIR="/photos"
OUTPUT_FILE="/home/stephen/Documents/initial-media-processing/live-photos-fast.txt"

# Find all video JSON files and check for Live Photo indicators
echo "Scanning video metadata files..."

find "$PHOTOS_DIR" -name "*.mov.json" -o -name "*.MOV.json" | while read -r json_file; do
    video_file="${json_file%.json}"
    
    # Extract relevant metadata using jq
    result=$(jq -r '
        .results[0].metadata as $m |
        {
            duration: ($m.technical."QuickTime:Duration" // $m.technical."Duration" // null),
            hasLiveIndicator: (
                [$m.technical | to_entries[] | select(.key | test("ContentIdentifier|MediaGroupUUID|LivePhoto|StillImageTime"; "i"))] | length > 0
            ),
            contentId: ($m.technical."QuickTime:ContentIdentifier" // $m.technical."ContentIdentifier" // null),
            mediaGroupUUID: ($m.technical."QuickTime:MediaGroupUUID" // $m.technical."MediaGroupUUID" // null),
            stillImageTime: ($m.technical."QuickTime:StillImageTime" // null),
            makerNotes: ([$m.technical | to_entries[] | select(.key | contains("Apple"))] | length)
        } |
        if .duration != null and (.duration | tonumber < 5) and (.hasLiveIndicator or .makerNotes > 3) then
            {
                isLivePhoto: true,
                duration: .duration,
                contentId: .contentId,
                mediaGroupUUID: .mediaGroupUUID,
                stillImageTime: .stillImageTime
            }
        else
            {isLivePhoto: false}
        end
    ' "$json_file" 2>/dev/null)
    
    if [ $? -eq 0 ] && [ -n "$result" ]; then
        is_live=$(echo "$result" | jq -r '.isLivePhoto')
        
        if [ "$is_live" = "true" ]; then
            duration=$(echo "$result" | jq -r '.duration // "unknown"')
            content_id=$(echo "$result" | jq -r '.contentId // "none"')
            media_group=$(echo "$result" | jq -r '.mediaGroupUUID // "none"')
            still_time=$(echo "$result" | jq -r '.stillImageTime // "none"')
            
            # Check for corresponding image
            base_name="${video_file%.*}"
            image_found="NONE"
            
            if [ -f "${base_name}.HEIC" ] || [ -f "${base_name}.heic" ]; then
                image_found="HEIC"
            elif [ -f "${base_name}.JPG" ] || [ -f "${base_name}.jpg" ]; then
                image_found="JPEG"
            fi
            
            echo "${video_file}|${duration}|${image_found}|${content_id}|${media_group}|${still_time}"
        fi
    fi
done | tee "$OUTPUT_FILE"

# Count and summarize results
echo ""
echo "=== Summary ==="
TOTAL=$(wc -l < "$OUTPUT_FILE")
WITH_HEIC=$(grep -c "|HEIC|" "$OUTPUT_FILE")
WITH_JPEG=$(grep -c "|JPEG|" "$OUTPUT_FILE")
NO_IMAGE=$(grep -c "|NONE|" "$OUTPUT_FILE")

echo "Total Live Photos found: $TOTAL"
echo "- With HEIC image: $WITH_HEIC"
echo "- With JPEG image: $WITH_JPEG"
echo "- Missing image pair: $NO_IMAGE"

# Show some examples with their metadata
if [ "$TOTAL" -gt 0 ]; then
    echo ""
    echo "Sample Live Photos with metadata:"
    echo "================================="
    head -5 "$OUTPUT_FILE" | while IFS='|' read -r video duration image content_id media_group still_time; do
        echo "$(basename "$video")"
        echo "  Duration: ${duration}s"
        echo "  Image pair: $image"
        [ "$content_id" != "none" ] && echo "  Content ID: $content_id"
        [ "$media_group" != "none" ] && echo "  Media Group UUID: $media_group"
        [ "$still_time" != "none" ] && echo "  Still Image Time: $still_time"
        echo ""
    done
fi

# Create detailed CSV
CSV_FILE="/home/stephen/Documents/initial-media-processing/live-photos-detailed.csv"
echo "video_path,duration,image_type,content_id,media_group_uuid,still_image_time" > "$CSV_FILE"
cat "$OUTPUT_FILE" | while IFS='|' read -r video duration image content_id media_group still_time; do
    echo "\"$video\",$duration,$image,\"$content_id\",\"$media_group\",\"$still_time\"" >> "$CSV_FILE"
done

echo ""
echo "Results saved to:"
echo "- $OUTPUT_FILE"
echo "- $CSV_FILE"