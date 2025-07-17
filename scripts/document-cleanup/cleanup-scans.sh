#!/bin/bash

# Document Cleanup Script
# Cleans up scanned documents: auto-rotate, remove shadows, enhance contrast, straighten

set -e

SCAN_DIR="/photos/staging/scans"
RAW_DIR="$SCAN_DIR/raw"
PROCESSED_DIR="$SCAN_DIR/processed"
METADATA_DIR="$SCAN_DIR/metadata"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
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

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    log_error "ImageMagick is not installed. Please install it first:"
    log_error "  Ubuntu/Debian: sudo apt-get install imagemagick"
    log_error "  macOS: brew install imagemagick"
    exit 1
fi

# Create directories if they don't exist
mkdir -p "$RAW_DIR" "$PROCESSED_DIR" "$METADATA_DIR"

# Function to clean up a single image
cleanup_image() {
    local input_file="$1"
    local filename=$(basename "$input_file")
    local name_without_ext="${filename%.*}"
    local extension="${filename##*.}"
    
    local output_file="$PROCESSED_DIR/${name_without_ext}_cleaned.${extension}"
    
    log_info "Processing: $filename"
    
    # Check if already processed
    if [[ -f "$output_file" ]]; then
        log_warn "Already processed: $filename (skipping)"
        return 0
    fi
    
    # ImageMagick processing pipeline
    convert "$input_file" \
        -auto-orient \
        -background white \
        -deskew 40% \
        -trim +repage \
        -bordercolor white -border 10x10 \
        -contrast-stretch 0.5%x0.5% \
        -sharpen 0x1 \
        -quality 95 \
        "$output_file"
    
    if [[ $? -eq 0 ]]; then
        log_info "✓ Cleaned: $filename → $(basename "$output_file")"
        
        # Generate basic metadata
        local metadata_file="$METADATA_DIR/${name_without_ext}_metadata.json"
        generate_metadata "$input_file" "$output_file" "$metadata_file"
    else
        log_error "✗ Failed to process: $filename"
        return 1
    fi
}

# Function to generate basic metadata
generate_metadata() {
    local input_file="$1"
    local output_file="$2"
    local metadata_file="$3"
    
    local input_size=$(identify -ping -format "%wx%h" "$input_file" 2>/dev/null || echo "unknown")
    local output_size=$(identify -ping -format "%wx%h" "$output_file" 2>/dev/null || echo "unknown")
    local file_size=$(stat -f%z "$output_file" 2>/dev/null || stat -c%s "$output_file" 2>/dev/null || echo "unknown")
    
    cat > "$metadata_file" << EOF
{
  "original_file": "$(basename "$input_file")",
  "processed_file": "$(basename "$output_file")",
  "processing_date": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")",
  "original_dimensions": "$input_size",
  "processed_dimensions": "$output_size",
  "file_size_bytes": $file_size,
  "processing_steps": [
    "auto-orient",
    "deskew",
    "trim",
    "border",
    "contrast-stretch",
    "sharpen"
  ],
  "status": "cleaned",
  "manual_metadata": {
    "document_type": "",
    "date_created": "",
    "people": [],
    "description": "",
    "tags": []
  }
}
EOF
    
    log_info "✓ Metadata created: $(basename "$metadata_file")"
}

# Main processing function
main() {
    log_info "Starting document cleanup process..."
    log_info "Source directory: $SCAN_DIR"
    log_info "Processed output: $PROCESSED_DIR"
    log_info "Metadata output: $METADATA_DIR"
    
    # Count files to process
    local total_files=0
    local processed_files=0
    local failed_files=0
    
    # Process files directly in scan directory (not in subdirectories)
    for file in "$SCAN_DIR"/*.{jpg,jpeg,png,tiff,tif,bmp} 2>/dev/null; do
        if [[ -f "$file" ]]; then
            ((total_files++))
            if cleanup_image "$file"; then
                ((processed_files++))
            else
                ((failed_files++))
            fi
        fi
    done
    
    # Also process files in raw directory if they exist
    if [[ -d "$RAW_DIR" ]]; then
        for file in "$RAW_DIR"/*.{jpg,jpeg,png,tiff,tif,bmp} 2>/dev/null; do
            if [[ -f "$file" ]]; then
                ((total_files++))
                if cleanup_image "$file"; then
                    ((processed_files++))
                else
                    ((failed_files++))
                fi
            fi
        done
    fi
    
    log_info "Processing complete!"
    log_info "Total files: $total_files"
    log_info "Successfully processed: $processed_files"
    if [[ $failed_files -gt 0 ]]; then
        log_warn "Failed: $failed_files"
    fi
    
    if [[ $processed_files -gt 0 ]]; then
        log_info ""
        log_info "Next steps:"
        log_info "1. Review cleaned images in: $PROCESSED_DIR"
        log_info "2. Edit metadata files in: $METADATA_DIR"
        log_info "3. Run split-documents.sh if any images contain multiple documents"
        log_info "4. Run create-metadata.sh for batch metadata updates"
    fi
}

# Handle command line arguments
case "${1:-}" in
    -h|--help)
        echo "Usage: $0 [options]"
        echo "Options:"
        echo "  -h, --help    Show this help message"
        echo "  --dry-run     Show what would be processed without doing it"
        echo ""
        echo "This script processes scanned documents in: $SCAN_DIR"
        echo "Output goes to: $PROCESSED_DIR"
        echo "Metadata goes to: $METADATA_DIR"
        exit 0
        ;;
    --dry-run)
        log_info "DRY RUN - would process these files:"
        for file in "$SCAN_DIR"/*.{jpg,jpeg,png,tiff,tif,bmp} "$RAW_DIR"/*.{jpg,jpeg,png,tiff,tif,bmp} 2>/dev/null; do
            if [[ -f "$file" ]]; then
                echo "  - $(basename "$file")"
            fi
        done
        exit 0
        ;;
    *)
        main "$@"
        ;;
esac