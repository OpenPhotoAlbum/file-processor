#!/bin/bash

# Comprehensive Live Photo identification
# Searches for Live Photos by checking:
# 1. HEIC/JPG files with LivePhotoVideoIndex metadata
# 2. Corresponding MOV files
# 3. Short MOV files that might be Live Photos

echo "=== Comprehensive Live Photo Identification ==="
echo ""

PHOTOS_DIR="/photos"
RESULTS_FILE="/home/stephen/Documents/initial-media-processing/live-photos-complete.txt"
MISSING_VIDEOS="/home/stephen/Documents/initial-media-processing/live-photos-missing-videos.txt"

# Clear output files
> "$RESULTS_FILE"
> "$MISSING_VIDEOS"

echo "Step 1: Finding images with Live Photo metadata..."
echo "================================================="

# Find all HEIC and JPG files with LivePhotoVideoIndex
find "$PHOTOS_DIR" \( -name "*.HEIC.json" -o -name "*.heic.json" -o -name "*.JPG.json" -o -name "*.jpg.json" \) | while read -r json_file; do
    # Check for LivePhotoVideoIndex
    live_index=$(jq -r '.results[0].metadata.technical."MakerNotes:LivePhotoVideoIndex" // empty' "$json_file" 2>/dev/null)
    
    if [ -n "$live_index" ]; then
        image_file="${json_file%.json}"
        base_name="${image_file%.*}"
        image_ext="${image_file##*.}"
        
        # Check for corresponding MOV file
        mov_exists="NO"
        mov_duration="N/A"
        
        if [ -f "${base_name}.MOV" ]; then
            mov_exists="YES"
            mov_file="${base_name}.MOV"
            # Try to get duration from MOV metadata JSON if it exists
            if [ -f "${mov_file}.json" ]; then
                # Check if MOV has duration info (might need ffprobe)
                mov_duration="unknown"
            fi
        elif [ -f "${base_name}.mov" ]; then
            mov_exists="YES"
            mov_file="${base_name}.mov"
            mov_duration="unknown"
        fi
        
        echo "${base_name}|${image_ext}|${live_index}|${mov_exists}|${mov_duration}" >> "$RESULTS_FILE"
        
        if [ "$mov_exists" = "NO" ]; then
            echo "${base_name}|${image_ext}|${live_index}" >> "$MISSING_VIDEOS"
        fi
        
        # Progress indicator
        printf "."
    fi
done

echo ""
echo ""
echo "Step 2: Analyzing short MOV files without image pairs..."
echo "======================================================="

# Find MOV files without corresponding HEIC/JPG that have LivePhotoVideoIndex
find "$PHOTOS_DIR" \( -name "*.MOV" -o -name "*.mov" \) | while read -r mov_file; do
    base_name="${mov_file%.*}"
    
    # Check if there's NO corresponding image with LivePhotoVideoIndex
    has_live_image=false
    for ext in HEIC heic JPG jpg JPEG jpeg; do
        if [ -f "${base_name}.${ext}.json" ]; then
            live_index=$(jq -r '.results[0].metadata.technical."MakerNotes:LivePhotoVideoIndex" // empty' "${base_name}.${ext}.json" 2>/dev/null)
            if [ -n "$live_index" ]; then
                has_live_image=true
                break
            fi
        fi
    done
    
    if [ "$has_live_image" = false ]; then
        # Check if it's a short video (potential orphaned Live Photo)
        if command -v ffprobe &> /dev/null; then
            duration=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$mov_file" 2>/dev/null)
            if [ -n "$duration" ] && (( $(echo "$duration < 5" | bc -l 2>/dev/null || echo 0) )); then
                echo "${base_name}|MOV_ONLY|NO_IMAGE|ORPHANED|${duration}s" >> "$RESULTS_FILE"
                printf "o"
            fi
        fi
    fi
done

echo ""
echo ""
echo "=== Analysis Complete ==="
echo ""

# Generate summary
TOTAL_LIVE_PHOTOS=$(grep -v "MOV_ONLY" "$RESULTS_FILE" | wc -l)
COMPLETE_PAIRS=$(grep -c "|YES|" "$RESULTS_FILE")
MISSING_VIDEOS=$(grep -c "|NO|" "$RESULTS_FILE")
ORPHANED_VIDEOS=$(grep -c "MOV_ONLY" "$RESULTS_FILE")

echo "Summary:"
echo "- Live Photos (images with metadata): $TOTAL_LIVE_PHOTOS"
echo "  - Complete pairs (image + video): $COMPLETE_PAIRS"
echo "  - Missing video component: $MISSING_VIDEOS"
echo "- Orphaned short videos (possible Live Photos): $ORPHANED_VIDEOS"
echo ""

# Show breakdown by image type
echo "Live Photos by image format:"
echo "- HEIC: $(grep -c "|HEIC|" "$RESULTS_FILE")"
echo "- JPG: $(grep -c "|JPG|" "$RESULTS_FILE")"
echo "- JPEG: $(grep -c "|JPEG|" "$RESULTS_FILE")"
echo ""

# Show examples
if [ "$TOTAL_LIVE_PHOTOS" -gt 0 ]; then
    echo "Sample Live Photos:"
    echo "==================="
    head -5 "$RESULTS_FILE" | while IFS='|' read -r base image_ext live_index has_mov duration; do
        echo "$(basename "$base")"
        echo "  Image: ${image_ext}"
        echo "  LivePhotoVideoIndex: $live_index"
        echo "  Has MOV: $has_mov"
        [ "$duration" != "N/A" ] && echo "  Duration: $duration"
        echo ""
    done
fi

# Create detailed CSV
CSV_FILE="/home/stephen/Documents/initial-media-processing/live-photos-complete.csv"
echo "base_path,image_type,live_photo_index,has_video,video_duration,year,month" > "$CSV_FILE"
while IFS='|' read -r base image_ext live_index has_mov duration; do
    # Extract year and month from path
    year=$(echo "$base" | grep -oE '/([0-9]{4})/' | grep -oE '[0-9]{4}')
    month=$(echo "$base" | grep -oE '/[0-9]{4}/([0-9]{2})/' | grep -oE '[0-9]{2}$')
    echo "\"$base\",$image_ext,$live_index,$has_mov,$duration,$year,$month" >> "$CSV_FILE"
done < "$RESULTS_FILE"

echo "Results saved to:"
echo "- $RESULTS_FILE"
echo "- $CSV_FILE"
echo "- $MISSING_VIDEOS (Live Photos missing video component)"

# Additional Apple metadata fields to check (based on Apple documentation)
echo ""
echo "Checking for additional Apple Live Photo metadata fields..."
if [ "$TOTAL_LIVE_PHOTOS" -gt 0 ]; then
    SAMPLE_JSON=$(head -1 "$RESULTS_FILE" | cut -d'|' -f1).HEIC.json
    if [ -f "$SAMPLE_JSON" ]; then
        echo "Sample metadata from: $(basename "$SAMPLE_JSON")"
        jq '.results[0].metadata.technical | to_entries | map(select(.key | test("Asset|Media.*UUID|Content.*Identifier|Still|Maker"; "i"))) | .[0:10]' "$SAMPLE_JSON" 2>/dev/null
    fi
fi