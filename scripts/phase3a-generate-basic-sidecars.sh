#!/bin/bash

# Phase 3A: Generate Basic Enriched Sidecars (First Run)
# Processes entire photo collection with foundational metadata
# EXIF + GNIS + Municipal + Basic GPS data (NO Recreation.gov yet)

set -euo pipefail

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
CLI_COMMAND="node $PROJECT_ROOT/dist/main.js"
PHOTOS_BASE="/photos/archive"
BATCH_SIZE=500
PARALLEL_JOBS=4

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging functions
log_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1"; }

# Check if CLI is built
check_cli() {
    log_info "Checking CLI availability..."
    
    if [ ! -f "$PROJECT_ROOT/dist/main.js" ]; then
        log_error "CLI not built. Running npm run build..."
        cd "$PROJECT_ROOT"
        npm run build
    fi
    
    log_success "CLI ready"
}

# Create batch file lists
create_batch_files() {
    log_info "Creating batch file lists..."
    
    local temp_dir="/tmp/phase3a-batches"
    rm -rf "$temp_dir"
    mkdir -p "$temp_dir"
    
    # Find all photos without existing JSON sidecars
    log_info "Finding photos without enriched sidecars..."
    
    local photo_list="$temp_dir/photos_to_process.txt"
    find "$PHOTOS_BASE" -type f \( -name "*.jpg" -o -name "*.heic" -o -name "*.png" -o -name "*.jpeg" \) > "$temp_dir/all_photos.txt"
    
    while read -r photo; do
        local sidecar="${photo}.json"
        # Check if enriched sidecar exists (has our landmark/EXIF data)
        if [ ! -f "$sidecar" ] || ! grep -q '"landmarks"' "$sidecar" 2>/dev/null; then
            echo "$photo" >> "$photo_list"
        fi
    done < "$temp_dir/all_photos.txt"
    
    if [ ! -f "$photo_list" ] || [ ! -s "$photo_list" ]; then
        log_warning "No photos found that need processing"
        return 1
    fi
    
    local total_photos=$(wc -l < "$photo_list")
    log_info "Found $total_photos photos that need enriched sidecars"
    
    # Split into batches
    split -l "$BATCH_SIZE" "$photo_list" "$temp_dir/batch_"
    
    # Rename split files to numbered format
    local batch_count=0
    for batch_file in "$temp_dir"/batch_*; do
        if [ -f "$batch_file" ] && [[ "$batch_file" != *.txt ]]; then
            ((batch_count++))
            local batch_num=$(printf "%03d" $batch_count)
            mv "$batch_file" "$temp_dir/batch_${batch_num}.txt"
        fi
    done
    
    log_success "Created $batch_count batches of up to $BATCH_SIZE photos each"
    echo "$temp_dir"
}

# Process a single batch
process_batch() {
    local batch_file="$1"
    local batch_name=$(basename "$batch_file" .txt)
    local log_file="/tmp/phase3a-${batch_name}.log"
    
    log_info "Processing $batch_name..."
    
    local processed=0
    local errors=0
    local total=$(wc -l < "$batch_file")
    
    while IFS= read -r photo_path; do
        if [ -f "$photo_path" ]; then
            # Generate enriched sidecar using CLI
            if $CLI_COMMAND --files "$photo_path" --json > "${photo_path}.json" 2>>"$log_file"; then
                ((processed++))
                if (( processed % 50 == 0 )); then
                    log_info "$batch_name: $processed/$total completed"
                fi
            else
                ((errors++))
                log_warning "$batch_name: Error processing $photo_path"
            fi
        fi
    done < "$batch_file"
    
    log_success "$batch_name: Completed $processed/$total photos (${errors} errors)"
    
    # Clean up batch file
    rm -f "$batch_file"
}

# Process all batches in parallel
process_all_batches() {
    local batch_dir="$1"
    
    log_info "Starting parallel processing with $PARALLEL_JOBS workers..."
    
    # Process batches in parallel
    find "$batch_dir" -name "batch_*.txt" | head -n "$PARALLEL_JOBS" | while read -r batch_file; do
        process_batch "$batch_file" &
    done
    
    # Wait for first batch to complete, then start next ones
    while [ $(find "$batch_dir" -name "batch_*.txt" | wc -l) -gt 0 ]; do
        wait -n  # Wait for any background job to complete
        
        # Start next batch if available
        local next_batch=$(find "$batch_dir" -name "batch_*.txt" | head -n 1)
        if [ -n "$next_batch" ] && [ -f "$next_batch" ]; then
            process_batch "$next_batch" &
        fi
    done
    
    # Wait for all remaining jobs
    wait
}

# Generate summary report
generate_summary() {
    log_info "Generating summary report..."
    
    local total_photos=$(find "$PHOTOS_BASE" -type f \( -name "*.jpg" -o -name "*.heic" -o -name "*.png" -o -name "*.jpeg" \) | wc -l)
    local total_sidecars=$(find "$PHOTOS_BASE" -name "*.json" | wc -l)
    local coverage_percent=$(( total_sidecars * 100 / total_photos ))
    
    echo
    log_success "Phase 3A Basic Sidecar Generation Complete!"
    echo "================================="
    echo "Total photos: $total_photos"
    echo "Enriched sidecars: $total_sidecars"
    echo "Coverage: ${coverage_percent}%"
    echo
    
    if [ $coverage_percent -ge 95 ]; then
        log_success "Excellent coverage! Ready for Phase 2 (Recreation.gov enhancement)"
    elif [ $coverage_percent -ge 80 ]; then
        log_warning "Good coverage. May want to investigate missing sidecars before Phase 2"
    else
        log_error "Low coverage. Check for processing issues before continuing"
    fi
}

# Main execution
main() {
    log_info "Starting Phase 3A: Basic Enriched Sidecar Generation"
    log_info "Processing photos in: $PHOTOS_BASE"
    echo
    
    check_cli
    
    local batch_dir
    if batch_dir=$(create_batch_files); then
        process_all_batches "$batch_dir"
        generate_summary
        
        # Cleanup
        rm -rf "$batch_dir"
        rm -f /tmp/phase3a-batch_*.log
    else
        log_info "No photos need processing. All sidecars already exist!"
    fi
    
    echo
    log_success "Phase 3A completed!"
    log_info "Next step: Phase 2 - Smart Recreation.gov enhancement"
}

# Error handling
trap 'log_error "Script interrupted"; exit 1' INT TERM

# Run main function
main "$@"