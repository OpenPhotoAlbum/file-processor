#!/bin/bash

# Live Photo Manager - Unified script for all Live Photo operations
# Combines functionality from multiple live photo detection scripts
#
# Usage:
#   ./live-photo-manager.sh [MODE] [OPTIONS]
#
# Modes:
#   detect-complete    - Comprehensive detection using multiple methods
#   detect-content-id  - Detection via ContentIdentifier matching
#   detect-fast        - Quick detection for rapid scanning
#   list-quick         - Quick listing of found Live Photos
#   find-and-reprocess - Find and reprocess Live Photos
#
# Options:
#   --output-dir DIR   - Directory for output files (default: project root)
#   --photos-dir DIR   - Photos directory to scan (default: /photos)
#   --help            - Show this help

set -e

# Default configuration
PHOTOS_DIR="/photos"
PROJECT_ROOT="/home/stephen/Documents/initial-media-processing"
OUTPUT_DIR="$PROJECT_ROOT"
MODE=""

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        detect-complete|detect-content-id|detect-fast|list-quick|find-and-reprocess)
            MODE="$1"
            shift
            ;;
        --output-dir)
            OUTPUT_DIR="$2"
            shift 2
            ;;
        --photos-dir)
            PHOTOS_DIR="$2"
            shift 2
            ;;
        --help)
            echo "Live Photo Manager - Unified Live Photo Operations"
            echo ""
            echo "Usage: $0 [MODE] [OPTIONS]"
            echo ""
            echo "Modes:"
            echo "  detect-complete    - Comprehensive detection using multiple methods"
            echo "  detect-content-id  - Detection via ContentIdentifier matching"
            echo "  detect-fast        - Quick detection for rapid scanning"
            echo "  list-quick         - Quick listing of found Live Photos"
            echo "  find-and-reprocess - Find and reprocess Live Photos"
            echo ""
            echo "Options:"
            echo "  --output-dir DIR   - Directory for output files (default: $PROJECT_ROOT)"
            echo "  --photos-dir DIR   - Photos directory to scan (default: /photos)"
            echo "  --help            - Show this help"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            echo "Use --help for usage information"
            exit 1
            ;;
    esac
done

# Require mode
if [[ -z "$MODE" ]]; then
    echo "Error: Mode required. Use --help for usage information"
    exit 1
fi

echo "=== Live Photo Manager - Mode: $MODE ==="
echo "Photos Directory: $PHOTOS_DIR"
echo "Output Directory: $OUTPUT_DIR"
echo ""

case "$MODE" in
    "detect-complete")
        echo "Comprehensive Live Photo Detection"
        echo "=================================="
        
        RESULTS_FILE="$OUTPUT_DIR/live-photos-complete.txt"
        MISSING_VIDEOS="$OUTPUT_DIR/live-photos-missing-videos.txt"
        
        # Clear output files
        > "$RESULTS_FILE"
        > "$MISSING_VIDEOS"
        
        echo "Step 1: Finding images with Live Photo metadata..."
        find "$PHOTOS_DIR" -type f \( -iname "*.heic" -o -iname "*.jpg" -o -iname "*.jpeg" \) | while read file; do
            # Check for Live Photo indicator in EXIF
            if exiftool "$file" | grep -q "Live Photo"; then
                echo "$file" >> "$RESULTS_FILE"
                echo "Found Live Photo: $file"
            fi
        done
        
        echo ""
        echo "Step 2: Finding corresponding MOV files..."
        while read image_file; do
            # Look for corresponding MOV file
            base_name=$(basename "$image_file" | sed 's/\.[^.]*$//')
            dir_name=$(dirname "$image_file")
            
            # Check for MOV with same base name
            if [[ -f "$dir_name/$base_name.MOV" ]]; then
                echo "$dir_name/$base_name.MOV" >> "$RESULTS_FILE"
                echo "Found corresponding video: $dir_name/$base_name.MOV"
            else
                echo "$image_file -> MISSING VIDEO" >> "$MISSING_VIDEOS"
            fi
        done < <(grep -v "\.MOV$" "$RESULTS_FILE" || true)
        
        echo ""
        echo "Step 3: Finding short MOV files (potential Live Photos)..."
        find "$PHOTOS_DIR" -type f -iname "*.mov" | while read mov_file; do
            # Check if MOV file is short (Live Photos are typically 1-3 seconds)
            duration=$(ffprobe -v quiet -show_entries format=duration -of csv=p=0 "$mov_file" 2>/dev/null || echo "0")
            if (( $(echo "$duration < 4" | bc -l) )); then
                echo "$mov_file (duration: ${duration}s)" >> "$RESULTS_FILE"
                echo "Found short MOV: $mov_file (${duration}s)"
            fi
        done
        
        echo ""
        echo "Results written to: $RESULTS_FILE"
        echo "Missing videos written to: $MISSING_VIDEOS"
        echo "Total Live Photos found: $(wc -l < "$RESULTS_FILE")"
        ;;
        
    "detect-content-id")
        echo "Live Photo Detection via ContentIdentifier"
        echo "========================================="
        
        RESULTS_FILE="$OUTPUT_DIR/live-photos-content-id.txt"
        > "$RESULTS_FILE"
        
        echo "Step 1: Extracting ContentIdentifier from MOV files..."
        find "$PHOTOS_DIR" -type f -iname "*.mov" | while read mov_file; do
            content_id=$(exiftool -ContentIdentifier "$mov_file" 2>/dev/null | cut -d: -f2- | xargs)
            if [[ -n "$content_id" ]]; then
                echo "$mov_file|$content_id" >> "$RESULTS_FILE"
                echo "Found MOV with ContentID: $(basename "$mov_file")"
            fi
        done
        
        echo ""
        echo "Step 2: Looking for matching Media Group UUIDs in images..."
        while IFS='|' read mov_file content_id; do
            # Search for images with matching Media Group UUID
            find "$PHOTOS_DIR" -type f \( -iname "*.heic" -o -iname "*.jpg" -o -iname "*.jpeg" \) | while read image_file; do
                media_uuid=$(exiftool -MediaGroupUUID "$image_file" 2>/dev/null | cut -d: -f2- | xargs)
                if [[ "$media_uuid" == "$content_id" ]]; then
                    echo "MATCH: $image_file <-> $mov_file" >> "$RESULTS_FILE"
                    echo "Matched: $(basename "$image_file") <-> $(basename "$mov_file")"
                fi
            done
        done < <(grep "|" "$RESULTS_FILE" || true)
        
        echo ""
        echo "Results written to: $RESULTS_FILE"
        ;;
        
    "detect-fast")
        echo "Fast Live Photo Detection"
        echo "========================"
        
        RESULTS_FILE="$OUTPUT_DIR/live-photos-fast.txt"
        > "$RESULTS_FILE"
        
        echo "Scanning for Live Photo indicators..."
        find "$PHOTOS_DIR" -type f \( -iname "*.heic" -o -iname "*.jpg" \) -exec exiftool -LivePhotoVideoIndex {} \; | grep -B1 "Live Photo Video Index" | grep "File:" | cut -d: -f2- | xargs -I {} echo {} >> "$RESULTS_FILE"
        
        echo "Fast scan complete. Results in: $RESULTS_FILE"
        echo "Live Photos found: $(wc -l < "$RESULTS_FILE")"
        ;;
        
    "list-quick")
        echo "Quick Live Photo Listing"
        echo "======================="
        
        RESULTS_FILE="$OUTPUT_DIR/live-photos-quick-list.txt"
        > "$RESULTS_FILE"
        
        # Quick listing using simple file pattern matching
        find "$PHOTOS_DIR" -type f -name "*LIVE*" >> "$RESULTS_FILE"
        find "$PHOTOS_DIR" -type f -name "*Live*" >> "$RESULTS_FILE"
        
        # Look for HEIC/MOV pairs in same directory
        find "$PHOTOS_DIR" -type f -iname "*.heic" | while read heic_file; do
            base_name=$(basename "$heic_file" .HEIC)
            dir_name=$(dirname "$heic_file")
            if [[ -f "$dir_name/$base_name.MOV" ]]; then
                echo "$heic_file" >> "$RESULTS_FILE"
                echo "$dir_name/$base_name.MOV" >> "$RESULTS_FILE"
            fi
        done
        
        # Sort and deduplicate
        sort "$RESULTS_FILE" | uniq > "$RESULTS_FILE.tmp" && mv "$RESULTS_FILE.tmp" "$RESULTS_FILE"
        
        echo "Quick listing complete. Results in: $RESULTS_FILE"
        echo "Files found: $(wc -l < "$RESULTS_FILE")"
        ;;
        
    "find-and-reprocess")
        echo "Find and Reprocess Live Photos"
        echo "============================="
        
        RESULTS_FILE="$OUTPUT_DIR/live-photos-reprocess.txt"
        > "$RESULTS_FILE"
        
        echo "Finding Live Photos for reprocessing..."
        
        # Find all Live Photos and check if they need reprocessing
        find "$PHOTOS_DIR" -type f \( -iname "*.heic" -o -iname "*.jpg" \) | while read image_file; do
            if exiftool "$image_file" | grep -q "Live Photo"; then
                # Check if there's a corresponding JSON sidecar
                json_file="${image_file}.json"
                if [[ ! -f "$json_file" ]] || ! grep -q "livePhoto" "$json_file" 2>/dev/null; then
                    echo "$image_file" >> "$RESULTS_FILE"
                    echo "Needs reprocessing: $(basename "$image_file")"
                fi
            fi
        done
        
        echo ""
        echo "Live Photos needing reprocessing: $(wc -l < "$RESULTS_FILE")"
        echo "Results written to: $RESULTS_FILE"
        echo ""
        echo "To reprocess these files, run:"
        echo "  cd $PROJECT_ROOT"
        echo "  while read file; do node dist/main.js -f \"\$file\" --output-db; done < \"$RESULTS_FILE\""
        ;;
        
    *)
        echo "Error: Unknown mode '$MODE'"
        exit 1
        ;;
esac

echo ""
echo "Live Photo Manager completed successfully!"