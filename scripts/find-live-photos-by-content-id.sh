#!/bin/bash

# Find Live Photos using ContentIdentifier matching theory
# Look for ContentIdentifier in MOV files and Media Group UUID in images

echo "=== Live Photo Detection via ContentIdentifier Matching ==="
echo ""

PHOTOS_DIR="/photos"
RESULTS_FILE="/home/stephen/Documents/initial-media-processing/live-photos-content-id.txt"

# Clear results
> "$RESULTS_FILE"

echo "Step 1: Extracting ContentIdentifier from MOV files..."
echo "====================================================="

# Create temp files for tracking
MOV_IDS=$(mktemp)
IMAGE_IDS=$(mktemp)
trap "rm -f $MOV_IDS $IMAGE_IDS" EXIT

# Find all MOV files and extract ContentIdentifier using embedded metadata
find "$PHOTOS_DIR" \( -name "*.mov" -o -name "*.MOV" \) | while read mov_file; do
    # Try to extract ContentIdentifier with embedded metadata
    content_id=$(exiftool -ee -ContentIdentifier -T "$mov_file" 2>/dev/null | grep -v '^$')
    
    # Also try different variations of the field name
    if [ -z "$content_id" ]; then
        content_id=$(exiftool -ee -a "$mov_file" 2>/dev/null | grep -i "content.*identifier" | head -1 | sed 's/.*: //')
    fi
    
    # Check for Live Photo Info as additional confirmation
    live_info=$(exiftool -ee -a "$mov_file" 2>/dev/null | grep -i "live.*photo.*info" | wc -l)
    
    if [ -n "$content_id" ] && [ "$content_id" != "-" ]; then
        echo "${mov_file}|${content_id}|${live_info}" >> "$MOV_IDS"
        printf "M"
    elif [ "$live_info" -gt 0 ]; then
        echo "${mov_file}|LIVE_INFO_ONLY|${live_info}" >> "$MOV_IDS"
        printf "L"
    else
        printf "."
    fi
done

echo ""
echo ""
echo "Step 2: Extracting Media Group UUID from image files..."
echo "======================================================"

# Find all image files and extract Media Group UUID
find "$PHOTOS_DIR" \( -name "*.HEIC" -o -name "*.heic" -o -name "*.JPG" -o -name "*.jpg" -o -name "*.PNG" -o -name "*.png" \) | while read image_file; do
    # Try various field names for the identifier
    media_uuid=$(exiftool -MediaGroupUUID -T "$image_file" 2>/dev/null | grep -v '^$')
    
    if [ -z "$media_uuid" ]; then
        media_uuid=$(exiftool -ContentIdentifier -T "$image_file" 2>/dev/null | grep -v '^$')
    fi
    
    if [ -z "$media_uuid" ]; then
        media_uuid=$(exiftool -a "$image_file" 2>/dev/null | grep -i -E "(media.*group|content.*identifier)" | head -1 | sed 's/.*: //')
    fi
    
    if [ -n "$media_uuid" ] && [ "$media_uuid" != "-" ]; then
        echo "${image_file}|${media_uuid}" >> "$IMAGE_IDS"
        printf "I"
    else
        printf "."
    fi
done

echo ""
echo ""
echo "Step 3: Matching ContentIdentifier pairs..."
echo "=========================================="

MOV_COUNT=$(wc -l < "$MOV_IDS")
IMAGE_COUNT=$(wc -l < "$IMAGE_IDS")

echo "Found $MOV_COUNT MOV files with identifiers"
echo "Found $IMAGE_COUNT image files with identifiers"
echo ""

# Match pairs
MATCHES=0
while IFS='|' read -r mov_file mov_id live_info; do
    if [ "$mov_id" != "LIVE_INFO_ONLY" ]; then
        # Look for matching image
        matching_image=$(grep "|${mov_id}$" "$IMAGE_IDS" | head -1 | cut -d'|' -f1)
        if [ -n "$matching_image" ]; then
            echo "${mov_file}|${matching_image}|${mov_id}|CONTENT_ID_MATCH|${live_info}" >> "$RESULTS_FILE"
            MATCHES=$((MATCHES + 1))
            echo "MATCH: $(basename "$mov_file") <-> $(basename "$matching_image")"
        fi
    else
        # For files with Live Photo Info but no ContentIdentifier, check for same base name
        base_name="${mov_file%.*}"
        for ext in HEIC heic JPG jpg PNG png; do
            if [ -f "${base_name}.${ext}" ]; then
                echo "${mov_file}|${base_name}.${ext}|NO_ID|LIVE_INFO_ONLY|${live_info}" >> "$RESULTS_FILE"
                MATCHES=$((MATCHES + 1))
                echo "LIVE INFO MATCH: $(basename "$mov_file") <-> $(basename "${base_name}.${ext}")"
                break
            fi
        done
    fi
done < "$MOV_IDS"

echo ""
echo "=== Results ==="
echo "Total Live Photo pairs found: $MATCHES"

if [ "$MATCHES" -gt 0 ]; then
    echo ""
    echo "Sample matches:"
    head -5 "$RESULTS_FILE" | while IFS='|' read -r mov_file image_file content_id match_type live_info; do
        echo "  Video: $(basename "$mov_file")"
        echo "  Image: $(basename "$image_file")"
        echo "  ID: $content_id"
        echo "  Match: $match_type"
        echo "  Live Info Count: $live_info"
        echo ""
    done
    
    echo "Full results saved to: $RESULTS_FILE"
fi

# Show some debug info
echo ""
echo "Debug - Sample MOV identifiers found:"
head -3 "$MOV_IDS"
echo ""
echo "Debug - Sample image identifiers found:"
head -3 "$IMAGE_IDS"