#!/bin/bash

# Photo Splitting Script - Optimized for photos on white scanner backgrounds
# Detects and splits multiple photos from scanner bed

set -e

SCAN_DIR="/photos/staging/scans"
PROCESSED_DIR="$SCAN_DIR/processed"
SPLIT_DIR="$SCAN_DIR/split"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

log_debug() {
    echo -e "${BLUE}[DEBUG]${NC} $1"
}

# Create directories
mkdir -p "$SPLIT_DIR"

# Function to detect photos on white scanner background
detect_photos_on_scanner() {
    local input_file="$1"
    local temp_dir=$(mktemp -d)
    local basename_file=$(basename "$input_file" .jpg)
    
    log_info "Analyzing photos in: $(basename "$input_file")"
    
    # Get image dimensions
    local dimensions=$(identify -ping -format "%wx%h" "$input_file")
    log_debug "Image dimensions: $dimensions"
    
    # Create mask for non-white areas (photos)
    local mask_file="$temp_dir/mask.png"
    
    # Create mask for photo detection - be more selective about white areas
    # Use a lower threshold to better separate photos from white scanner background
    convert "$input_file" \
        -colorspace RGB \
        -threshold 90% \
        -negate \
        -morphology close rectangle:3x3 \
        -morphology open rectangle:2x2 \
        "$mask_file"
    
    log_debug "Created mask for photo detection"
    
    # Find connected components (photos)
    local components_file="$temp_dir/components.txt"
    convert "$mask_file" \
        -define connected-components:verbose=true \
        -define connected-components:area-threshold=10000 \
        -connected-components 8 \
        null: 2> "$components_file"
    
    log_debug "Component analysis complete"
    
    # Parse components and extract bounding boxes
    local components=()
    while IFS= read -r line; do
        if [[ $line =~ ^[1-9][0-9]*: ]]; then
            # Extract bounding box: "1: 1234x567+100+200 ..."
            local bbox=$(echo "$line" | grep -oE '[0-9]+x[0-9]+\+[0-9]+\+[0-9]+')
            local area=$(echo "$line" | grep -oE '[0-9]+x[0-9]+\+[0-9]+\+[0-9]+' | cut -d'x' -f1)
            local height=$(echo "$line" | grep -oE '[0-9]+x[0-9]+\+[0-9]+\+[0-9]+' | cut -d'x' -f2 | cut -d'+' -f1)
            
            if [[ -n "$bbox" ]]; then
                local width=$(echo "$bbox" | cut -d'x' -f1)
                local height=$(echo "$bbox" | cut -d'x' -f2 | cut -d'+' -f1)
                local area=$((width * height))
                
                # Filter by size - photos should be reasonably large but not too restrictive
                if [[ $width -ge 300 && $height -ge 300 && $area -ge 100000 ]]; then
                    components+=("$bbox")
                    log_debug "Found photo region: ${bbox} (${area} pixels)"
                fi
            fi
        fi
    done < "$components_file"
    
    log_info "Found ${#components[@]} photo regions"
    
    # Sort components by position (left to right, top to bottom)
    if [[ ${#components[@]} -gt 1 ]]; then
        # Simple sort by x-coordinate (left to right)
        IFS=$'\n' sorted_components=($(sort -t+ -k2n <<<"${components[*]}"))
        components=("${sorted_components[@]}")
    fi
    
    # Show detected regions for verification
    if [[ ${#components[@]} -gt 0 ]]; then
        log_info "Detected regions (left to right):"
        local i=1
        for bbox in "${components[@]}"; do
            local width=$(echo "$bbox" | cut -d'x' -f1)
            local height=$(echo "$bbox" | cut -d'x' -f2 | cut -d'+' -f1)
            local x=$(echo "$bbox" | cut -d'+' -f2)
            local y=$(echo "$bbox" | cut -d'+' -f3)
            log_info "  Photo $i: ${width}x${height} at position ($x,$y)"
            ((i++))
        done
    fi
    
    # Extract the photos
    if [[ ${#components[@]} -gt 0 ]]; then
        extract_photos "$input_file" "${components[@]}"
    else
        log_warn "No photo regions detected"
    fi
    
    # Cleanup
    rm -rf "$temp_dir"
}

# Function to extract photos with padding
extract_photos() {
    local input_file="$1"
    shift
    local regions=("$@")
    
    local basename_file=$(basename "$input_file")
    local name_without_ext="${basename_file%.*}"
    local extension="${basename_file##*.}"
    
    log_info "Extracting ${#regions[@]} photos from $(basename "$input_file")"
    
    local photo=1
    for region in "${regions[@]}"; do
        local output_file="$SPLIT_DIR/${name_without_ext}_photo_$(printf "%02d" $photo).${extension}"
        
        log_debug "Extracting photo $photo: $region"
        
        # Extract with padding and cleanup
        convert "$input_file" \
            -crop "$region" \
            -fuzz 10% \
            -trim +repage \
            -bordercolor white -border 20x20 \
            -quality 95 \
            "$output_file"
        
        if [[ $? -eq 0 ]]; then
            local final_size=$(identify -ping -format "%wx%h" "$output_file")
            log_info "✓ Created photo $photo: $(basename "$output_file") (${final_size})"
        else
            log_error "✗ Failed to extract photo $photo"
        fi
        
        ((photo++))
    done
}

# Process a single file
process_file() {
    local input_file="$1"
    
    if [[ ! -f "$input_file" ]]; then
        log_error "File not found: $input_file"
        return 1
    fi
    
    log_info "Processing: $(basename "$input_file")"
    detect_photos_on_scanner "$input_file"
}

# Main function
main() {
    local target_file="${1:-}"
    
    if [[ -n "$target_file" ]]; then
        # Process specific file
        local full_path="$PROCESSED_DIR/$target_file"
        process_file "$full_path"
    else
        # Process all files in processed directory
        log_info "Processing all files in: $PROCESSED_DIR"
        local count=0
        
        for file in "$PROCESSED_DIR"/*.jpg "$PROCESSED_DIR"/*.jpeg "$PROCESSED_DIR"/*.png "$PROCESSED_DIR"/*.tiff "$PROCESSED_DIR"/*.tif; do
            if [[ -f "$file" ]]; then
                process_file "$file"
                ((count++))
            fi
        done
        
        if [[ $count -eq 0 ]]; then
            log_warn "No image files found in $PROCESSED_DIR"
        else
            log_info "Processed $count files"
        fi
    fi
    
    log_info "Results saved to: $SPLIT_DIR"
}

# Show usage if help requested
if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    echo "Usage: $0 [filename]"
    echo ""
    echo "Splits photos from scanner bed images with white backgrounds"
    echo ""
    echo "Examples:"
    echo "  $0                    # Process all files in processed/"
    echo "  $0 test-split.jpg     # Process specific file"
    echo ""
    echo "Input:  $PROCESSED_DIR"
    echo "Output: $SPLIT_DIR"
    exit 0
fi

main "$@"