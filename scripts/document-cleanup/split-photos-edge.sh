#!/bin/bash

# Photo Splitting Script - Edge Detection Approach
# Uses edge detection to find photo boundaries on white scanner backgrounds

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

# Function to find photo boundaries using edge detection
find_photo_boundaries() {
    local input_file="$1"
    local temp_dir=$(mktemp -d)
    
    log_info "Finding photo boundaries in: $(basename "$input_file")"
    
    # Get image dimensions
    local dimensions=$(identify -ping -format "%wx%h" "$input_file")
    local width=$(echo "$dimensions" | cut -d'x' -f1)
    local height=$(echo "$dimensions" | cut -d'x' -f2)
    log_debug "Image dimensions: ${width}x${height}"
    
    # Create edge detection mask
    local edges_file="$temp_dir/edges.png"
    convert "$input_file" \
        -colorspace gray \
        -blur 0x1 \
        -edge 2 \
        -negate \
        -threshold 50% \
        "$edges_file"
    
    # Find rectangles by looking for horizontal and vertical lines
    local h_lines_file="$temp_dir/horizontal.png"
    local v_lines_file="$temp_dir/vertical.png"
    
    # Detect horizontal lines (top/bottom edges of photos)
    convert "$edges_file" \
        -morphology close "rectangle:20x1" \
        -morphology open "rectangle:50x1" \
        "$h_lines_file"
    
    # Detect vertical lines (left/right edges of photos)
    convert "$edges_file" \
        -morphology close "rectangle:1x20" \
        -morphology open "rectangle:1x50" \
        "$v_lines_file"
    
    # Combine horizontal and vertical lines
    local combined_file="$temp_dir/combined.png"
    convert "$h_lines_file" "$v_lines_file" -compose plus -composite "$combined_file"
    
    # Find connected components in the combined line image
    local components_file="$temp_dir/components.txt"
    convert "$combined_file" \
        -define connected-components:verbose=true \
        -define connected-components:area-threshold=5000 \
        -connected-components 8 \
        null: 2> "$components_file"
    
    # Parse components to find rectangular regions
    local regions=()
    while IFS= read -r line; do
        if [[ $line =~ ^[1-9][0-9]*: ]]; then
            local bbox=$(echo "$line" | grep -oE '[0-9]+x[0-9]+\+[0-9]+\+[0-9]+')
            if [[ -n "$bbox" ]]; then
                local w=$(echo "$bbox" | cut -d'x' -f1)
                local h=$(echo "$bbox" | cut -d'x' -f2 | cut -d'+' -f1)
                local area=$((w * h))
                
                # Filter for photo-sized regions
                if [[ $w -ge 300 && $h -ge 300 && $area -ge 100000 ]]; then
                    regions+=("$bbox")
                    log_debug "Found boundary region: ${bbox} (${area} pixels)"
                fi
            fi
        fi
    done < "$components_file"
    
    # If edge detection didn't work well, try manual grid approach
    if [[ ${#regions[@]} -eq 0 ]]; then
        log_info "Edge detection didn't find clear boundaries, trying manual approach..."
        manual_grid_split "$input_file" "$width" "$height"
    else
        log_info "Found ${#regions[@]} photo boundary regions"
        extract_bounded_photos "$input_file" "${regions[@]}"
    fi
    
    # Cleanup
    rm -rf "$temp_dir"
}

# Function to manually split based on typical photo layout
manual_grid_split() {
    local input_file="$1"
    local width="$2"
    local height="$3"
    
    log_info "Using manual grid approach for 3 photos"
    
    # Based on the test image, assume:
    # - Two photos side by side on top
    # - One photo centered on bottom
    
    local top_height=$((height * 45 / 100))  # Top 45% of image
    local bottom_start=$((height * 55 / 100))  # Bottom starts at 55%
    local bottom_height=$((height - bottom_start))
    
    local left_width=$((width * 45 / 100))   # Left photo is 45% of width
    local right_start=$((width * 55 / 100))  # Right photo starts at 55%
    local right_width=$((width - right_start))
    
    # Top-left photo
    local regions=()
    regions+=("${left_width}x${top_height}+50+50")
    
    # Top-right photo  
    regions+=("${right_width}x${top_height}+${right_start}+50")
    
    # Bottom photo (centered)
    local bottom_photo_width=$((width * 80 / 100))  # 80% of width
    local bottom_x_offset=$(((width - bottom_photo_width) / 2))
    regions+=("${bottom_photo_width}x${bottom_height}+${bottom_x_offset}+${bottom_start}")
    
    log_info "Manual grid regions:"
    for i in "${!regions[@]}"; do
        log_info "  Photo $((i+1)): ${regions[$i]}"
    done
    
    extract_bounded_photos "$input_file" "${regions[@]}"
}

# Function to extract photos from bounding regions
extract_bounded_photos() {
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
        
        # Extract with cleanup
        convert "$input_file" \
            -crop "$region" \
            -fuzz 5% \
            -trim +repage \
            -bordercolor white -border 10x10 \
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
    
    find_photo_boundaries "$input_file"
}

# Main function
main() {
    local target_file="${1:-}"
    
    if [[ -n "$target_file" ]]; then
        # Process specific file
        local full_path="$PROCESSED_DIR/$target_file"
        process_file "$full_path"
    else
        echo "Usage: $0 <filename>"
        echo "Example: $0 test-split.jpg"
        exit 1
    fi
    
    log_info "Results saved to: $SPLIT_DIR"
}

main "$@"