#!/bin/bash

# Quick script to list all potential Live Photos based on duration and existing metadata

echo "=== Quick Live Photo List Generation ==="
echo ""

PHOTOS_DIR="/photos"
OUTPUT_FILE="/home/stephen/Documents/initial-media-processing/live-photos-quick-list.txt"

# Clear output
> "$OUTPUT_FILE"

echo "Finding short videos (< 4 seconds) that might be Live Photos..."

# Find all short MOV/MP4 files
find "$PHOTOS_DIR" \( -name "*.mov" -o -name "*.MOV" -o -name "*.mp4" -o -name "*.MP4" \) | while read -r video; do
    # Quick duration check
    duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$video" 2>/dev/null)
    
    if [ -n "$duration" ] && (( $(echo "$duration < 4" | bc -l 2>/dev/null || echo 0) )); then
        echo "$video" >> "$OUTPUT_FILE"
        printf "."
    fi
done

echo ""
echo ""

TOTAL=$(wc -l < "$OUTPUT_FILE")
echo "Found $TOTAL potential Live Photo videos"
echo "List saved to: $OUTPUT_FILE"
echo ""

# Show some statistics
echo "By extension:"
echo "- .mov: $(grep -c "\.mov$" "$OUTPUT_FILE")"
echo "- .MOV: $(grep -c "\.MOV$" "$OUTPUT_FILE")"
echo "- .mp4: $(grep -c "\.mp4$" "$OUTPUT_FILE")"
echo "- .MP4: $(grep -c "\.MP4$" "$OUTPUT_FILE")"
echo ""

echo "By year:"
for year in 2023 2024 2025; do
    count=$(grep -c "/$year/" "$OUTPUT_FILE")
    [ "$count" -gt 0 ] && echo "- $year: $count"
done

echo ""
echo "Sample files:"
head -10 "$OUTPUT_FILE" | while read -r video; do
    duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$video" 2>/dev/null)
    echo "- $(basename "$video") (${duration}s)"
done