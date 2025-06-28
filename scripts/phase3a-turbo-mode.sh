#!/bin/bash

# Phase 3A: TURBO MODE - Maximum Parallel Processing
# Splits remaining work into tiny batches for maximum CPU utilization

set -euo pipefail

# TURBO Configuration - MAXIMUM OVERDRIVE!
TURBO_BATCH_SIZE=25    # Even smaller batches for max parallelism
MAX_PARALLEL=120       # REALLY unleash the 20-core beast!
CLI_COMMAND="node /home/stephen/Documents/initial-media-processing/dist/main.js"
PHOTOS_BASE="/photos/archive"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m'

log_turbo() { echo -e "${PURPLE}[TURBO]${NC} $1"; }
log_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }

# Find remaining photos that need processing
find_remaining_photos() {
    log_turbo "Scanning for remaining photos that need enriched sidecars..."
    
    local temp_dir="/tmp/phase3a-turbo"
    rm -rf "$temp_dir"
    mkdir -p "$temp_dir"
    
    local remaining_photos="$temp_dir/remaining_photos.txt"
    
    # Find photos without enriched sidecars (fixed output handling)
    find "$PHOTOS_BASE" -type f \( -name "*.jpg" -o -name "*.heic" -o -name "*.png" -o -name "*.jpeg" \) > "$temp_dir/all_photos.txt"
    
    while read -r photo; do
        local sidecar="${photo}.json"
        if [ ! -f "$sidecar" ] || ! grep -q '"landmarks"' "$sidecar" 2>/dev/null; then
            echo "$photo" >> "$remaining_photos"
        fi
    done < "$temp_dir/all_photos.txt"
    
    local remaining_count=$(wc -l < "$remaining_photos" 2>/dev/null || echo 0)
    log_turbo "Found $remaining_count photos still needing processing"
    
    if [ "$remaining_count" -eq 0 ]; then
        log_success "No remaining photos! All enriched sidecars complete!"
        return 1
    fi
    
    echo "$temp_dir"
}

# Create turbo batches
create_turbo_batches() {
    local temp_dir="$1"
    local remaining_photos="$temp_dir/remaining_photos.txt"
    
    log_turbo "Creating TURBO batches (size: $TURBO_BATCH_SIZE, max parallel: $MAX_PARALLEL)"
    
    # Split into tiny batches
    split -l "$TURBO_BATCH_SIZE" "$remaining_photos" "$temp_dir/turbo_"
    
    # Rename to numbered format
    local batch_count=0
    for batch_file in "$temp_dir"/turbo_*; do
        if [ -f "$batch_file" ] && [[ "$batch_file" != *.txt ]]; then
            ((batch_count++))
            local batch_num=$(printf "%03d" $batch_count)
            mv "$batch_file" "$temp_dir/turbo_${batch_num}.txt"
        fi
    done
    
    log_turbo "Created $batch_count TURBO batches!"
    echo "$batch_count"
}

# Process a single turbo batch
process_turbo_batch() {
    local batch_file="$1"
    local batch_name=$(basename "$batch_file" .txt)
    local log_file="/tmp/${batch_name}_turbo.log"
    
    local processed=0
    local total=$(wc -l < "$batch_file")
    
    while IFS= read -r photo_path; do
        if [ -f "$photo_path" ]; then
            if $CLI_COMMAND --files "$photo_path" --json > "${photo_path}.json" 2>>"$log_file"; then
                ((processed++))
                echo "✓ TURBO: $photo_path" >> /tmp/phase3a-turbo-progress.log
            else
                echo "✗ TURBO: $photo_path" >> /tmp/phase3a-turbo-progress.log
            fi
        fi
    done < "$batch_file"
    
    echo "🚀 $batch_name: $processed/$total completed" >> /tmp/phase3a-turbo-progress.log
    rm -f "$batch_file"  # Clean up
}

# Launch turbo processing with controlled parallelism
launch_turbo_processing() {
    local temp_dir="$1"
    local total_batches="$2"
    
    log_turbo "🚀 LAUNCHING MAXIMUM OVERDRIVE! Up to $MAX_PARALLEL parallel batches"
    log_turbo "🔥 This will MAX OUT your 20-core machine! 🔥"
    
    # Process batches with controlled parallelism
    local active_jobs=0
    
    for batch_file in "$temp_dir"/turbo_*.txt; do
        if [ -f "$batch_file" ]; then
            # Wait if we've hit the parallel limit
            while [ "$active_jobs" -ge "$MAX_PARALLEL" ]; do
                wait -n  # Wait for any job to complete
                ((active_jobs--))
            done
            
            # Launch new batch
            process_turbo_batch "$batch_file" &
            ((active_jobs++))
            
            # Progress indicator
            local completed_batches=$((total_batches - $(ls "$temp_dir"/turbo_*.txt 2>/dev/null | wc -l)))
            if (( completed_batches % 10 == 0 )); then
                log_turbo "Launched $completed_batches/$total_batches batches..."
            fi
        fi
    done
    
    # Wait for all remaining jobs
    wait
    log_turbo "All TURBO batches launched!"
}

# Generate turbo summary
generate_turbo_summary() {
    log_turbo "Generating TURBO MODE summary..."
    
    local turbo_completed=$(grep -c "✓ TURBO:" /tmp/phase3a-turbo-progress.log 2>/dev/null || echo 0)
    local turbo_errors=$(grep -c "✗ TURBO:" /tmp/phase3a-turbo-progress.log 2>/dev/null || echo 0)
    local original_completed=$(grep -c "✓ Completed:" /tmp/phase3a-progress.log 2>/dev/null || echo 0)
    
    local total_completed=$((original_completed + turbo_completed))
    local total_errors=$((turbo_errors))
    
    echo
    log_success "🚀 TURBO MODE COMPLETE!"
    echo "================================="
    echo "Original processing: $original_completed photos"
    echo "TURBO processing: $turbo_completed photos"
    echo "Total completed: $total_completed photos"
    echo "Total errors: $total_errors"
    echo "Performance: MAXIMUM OVERDRIVE! 🔥"
    echo
    
    # Final verification
    local final_sidecars=$(find /photos/archive -name "*.json" -exec grep -l '"landmarks"' {} \; 2>/dev/null | wc -l)
    log_success "Final enriched sidecars: $final_sidecars"
}

# Main turbo execution
main() {
    log_turbo "🚀 INITIATING TURBO MODE! 🚀"
    log_turbo "Your 20-core machine is about to get a WORKOUT!"
    echo
    
    if temp_dir=$(find_remaining_photos); then
        batch_count=$(create_turbo_batches "$temp_dir")
        launch_turbo_processing "$temp_dir" "$batch_count"
        generate_turbo_summary
        
        # Cleanup
        rm -rf "$temp_dir"
        rm -f /tmp/turbo_*.log
    fi
    
    echo
    log_turbo "🎯 TURBO MODE MISSION ACCOMPLISHED!"
}

# Error handling
trap 'log_turbo "TURBO interrupted! Some batches may still be running."; exit 1' INT TERM

# ENGAGE TURBO MODE!
main "$@"