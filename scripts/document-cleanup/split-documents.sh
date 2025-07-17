#!/bin/bash

# Document Splitting Script
# Detects and splits multiple documents in single scans

set -e

SCAN_DIR="/photos/staging/scans"
PROCESSED_DIR="$SCAN_DIR/processed"
SPLIT_DIR="$SCAN_DIR/split"
METADATA_DIR="$SCAN_DIR/metadata"

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

# Check dependencies
check_dependencies() {
    local missing_deps=()
    
    if ! command -v convert &> /dev/null; then
        missing_deps+=("imagemagick")
    fi
    
    if ! command -v python3 &> /dev/null; then
        missing_deps+=("python3")
    fi
    
    if [[ ${#missing_deps[@]} -gt 0 ]]; then
        log_error "Missing dependencies: ${missing_deps[*]}"
        log_error "Please install missing dependencies first"
        exit 1
    fi
}

# Create directories
mkdir -p "$SPLIT_DIR" "$METADATA_DIR"

# Function to detect document boundaries using connected components
detect_documents() {
    local input_file="$1"
    local temp_dir=$(mktemp -d)
    local basename_file=$(basename "$input_file" .jpg)
    
    log_debug "Analyzing: $input_file"
    
    # Create binary mask to find document boundaries
    local mask_file="$temp_dir/mask.png"
    convert "$input_file" \
        -colorspace gray \
        -threshold 85% \
        -morphology close rectangle:5x5 \
        -negate \
        "$mask_file"
    
    # Use connected components to find separate documents
    local components_file="$temp_dir/components.txt"
    convert "$mask_file" \
        -define connected-components:verbose=true \
        -connected-components 8 \
        null: 2> "$components_file"
    
    # Parse components (skip background component 0)
    local components=()
    while IFS= read -r line; do
        if [[ $line =~ ^[1-9][0-9]*: ]]; then
            # Extract bounding box: "1: 1234x567+100+200 ..."
            local bbox=$(echo "$line" | grep -oE '[0-9]+x[0-9]+\+[0-9]+\+[0-9]+')
            if [[ -n "$bbox" ]]; then
                components+=("$bbox")
            fi
        fi
    done < "$components_file"
    
    log_debug "Found ${#components[@]} potential document regions"
    
    # Filter components by size (must be reasonably large)
    local min_width=200
    local min_height=200
    local valid_components=()
    
    for bbox in "${components[@]}"; do
        local width=$(echo "$bbox" | cut -d'x' -f1)
        local height=$(echo "$bbox" | cut -d'x' -f2 | cut -d'+' -f1)
        
        if [[ $width -ge $min_width && $height -ge $min_height ]]; then
            valid_components+=("$bbox")
        fi
    done
    
    log_info "Found ${#valid_components[@]} valid document regions in $(basename "$input_file")"
    
    # If multiple valid components, split the image
    if [[ ${#valid_components[@]} -gt 1 ]]; then
        split_image "$input_file" "${valid_components[@]}"
    else
        log_info "Single document detected, no splitting needed"
        # Copy to split directory with original name
        cp "$input_file" "$SPLIT_DIR/$(basename "$input_file")"
    fi
    
    # Cleanup
    rm -rf "$temp_dir"
}

# Function to split image based on detected regions
split_image() {
    local input_file="$1"
    shift
    local regions=("$@")
    
    local basename_file=$(basename "$input_file")
    local name_without_ext="${basename_file%.*}"
    local extension="${basename_file##*.}"
    
    log_info "Splitting $(basename "$input_file") into ${#regions[@]} documents"
    
    local part=1
    for region in "${regions[@]}"; do
        local output_file="$SPLIT_DIR/${name_without_ext}_part_$(printf "%02d" $part).${extension}"
        
        log_debug "Extracting region $part: $region"
        
        # Extract region with some padding
        convert "$input_file" \
            -crop "$region" \
            -trim +repage \
            -bordercolor white -border 10x10 \
            "$output_file"
        
        if [[ $? -eq 0 ]]; then
            log_info "✓ Created: $(basename "$output_file")"
            
            # Generate metadata for split document
            generate_split_metadata "$input_file" "$output_file" "$part" "${#regions[@]}"
        else
            log_error "✗ Failed to create: $(basename "$output_file")"
        fi
        
        ((part++))
    done
}

# Function to generate metadata for split documents
generate_split_metadata() {
    local original_file="$1"
    local split_file="$2"
    local part_number="$3"
    local total_parts="$4"
    
    local name_without_ext=$(basename "$split_file" | sed 's/\.[^.]*$//')
    local metadata_file="$METADATA_DIR/${name_without_ext}_metadata.json"
    
    local dimensions=$(identify -ping -format "%wx%h" "$split_file" 2>/dev/null || echo "unknown")
    local file_size=$(stat -f%z "$split_file" 2>/dev/null || stat -c%s "$split_file" 2>/dev/null || echo "unknown")
    
    cat > "$metadata_file" << EOF
{
  "original_scan": "$(basename "$original_file")",
  "split_file": "$(basename "$split_file")",
  "part_number": $part_number,
  "total_parts": $total_parts,
  "split_date": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")",
  "dimensions": "$dimensions",
  "file_size_bytes": $file_size,
  "processing_steps": [
    "document_detection",
    "region_extraction",
    "trim",
    "border"
  ],
  "status": "split",
  "manual_metadata": {
    "document_type": "",
    "date_created": "",
    "people": [],
    "description": "",
    "tags": [],
    "page_number": "",
    "related_documents": []
  }
}
EOF
    
    log_debug "✓ Metadata created: $(basename "$metadata_file")"
}

# Interactive mode for manual cropping
interactive_crop() {
    local input_file="$1"
    
    log_info "Interactive cropping mode for: $(basename "$input_file")"
    log_info "This will open the image. Note down coordinates for manual cropping."
    
    # Show image dimensions
    local dimensions=$(identify -ping -format "%wx%h" "$input_file")
    log_info "Image dimensions: $dimensions"
    
    echo "Manual cropping format: WIDTHxHEIGHT+X_OFFSET+Y_OFFSET"
    echo "Example: 800x600+100+50 (800px wide, 600px tall, starting at x=100, y=50)"
    echo ""
    echo "Enter crop regions (one per line, empty line to finish):"
    
    local regions=()
    while IFS= read -r line; do
        if [[ -z "$line" ]]; then
            break
        fi
        
        # Validate crop format
        if [[ $line =~ ^[0-9]+x[0-9]+\+[0-9]+\+[0-9]+$ ]]; then
            regions+=("$line")
            log_info "Added region: $line"
        else
            log_warn "Invalid format: $line (use WIDTHxHEIGHT+X+Y)"
        fi
    done
    
    if [[ ${#regions[@]} -gt 0 ]]; then
        split_image "$input_file" "${regions[@]}"
    else
        log_info "No regions specified, skipping"
    fi
}

# Main processing function
main() {
    check_dependencies
    
    local mode="${1:-auto}"
    local target_file="${2:-}"
    
    case "$mode" in
        auto)
            log_info "Starting automatic document splitting..."
            log_info "Processing directory: $PROCESSED_DIR"
            log_info "Output directory: $SPLIT_DIR"
            
            local total_files=0
            local processed_files=0
            
            for file in "$PROCESSED_DIR"/*.{jpg,jpeg,png,tiff,tif} 2>/dev/null; do
                if [[ -f "$file" ]]; then
                    ((total_files++))
                    detect_documents "$file"
                    ((processed_files++))
                fi
            done
            
            log_info "Processing complete!"
            log_info "Total files: $total_files"
            log_info "Processed files: $processed_files"
            ;;
            
        manual)
            if [[ -z "$target_file" ]]; then
                log_error "Manual mode requires a target file"
                log_error "Usage: $0 manual <filename>"
                exit 1
            fi
            
            local full_path="$PROCESSED_DIR/$target_file"
            if [[ ! -f "$full_path" ]]; then
                log_error "File not found: $full_path"
                exit 1
            fi
            
            interactive_crop "$full_path"
            ;;
            
        *)
            echo "Usage: $0 [auto|manual] [filename]"
            echo ""
            echo "Modes:"
            echo "  auto     - Automatic document detection and splitting"
            echo "  manual   - Interactive manual cropping"
            echo ""
            echo "Examples:"
            echo "  $0 auto                           # Process all files automatically"
            echo "  $0 manual scanned_page_01.jpg     # Manually crop specific file"
            exit 1
            ;;
    esac
}

main "$@"