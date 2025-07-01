#!/bin/bash

# Phase 2: Batch Directory Restructuring Script
# Processes a specific list of files for parallel execution

set -e

# Check arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <batch_number> <file_list>"
    echo "Example: $0 1 /tmp/phase2-batches/batch-1.txt"
    exit 1
fi

BATCH_NUM="$1"
FILE_LIST="$2"

if [ ! -f "${FILE_LIST}" ]; then
    echo "ERROR: File list does not exist: ${FILE_LIST}"
    exit 1
fi

# Configuration
PROJECT_ROOT="/home/stephen/Documents/initial-media-processing"
ARCHIVE_BASE="/photos/archive"
COLLECTIONS_BASE="/photos/collections"
LOG_FILE="/photos/phase2-batch-${BATCH_NUM}.log"

echo "Phase 2 Batch ${BATCH_NUM} Restructuring"
echo "========================================"
echo "File list: ${FILE_LIST}"
echo "Log: ${LOG_FILE}"

# Create directories
mkdir -p "${ARCHIVE_BASE}" "${COLLECTIONS_BASE}"

# Function to sanitize and lowercase names
sanitize_name() {
    local name="$1"
    name=$(echo "$name" | tr '[:upper:]' '[:lower:]')
    name="${name// /_}"
    name=$(echo "$name" | sed 's/[^a-z0-9_-]//g')
    name=$(echo "$name" | sed 's/__*/_/g')
    name=$(echo "$name" | sed 's/^_*//;s/_*$//')
    echo "$name"
}

# Function to check if album name should be preserved in collections
should_create_collection() {
    local album_name="$1"
    if [[ "$album_name" =~ ^Photos\ from\ [0-9]{4}$ ]]; then
        return 1
    fi
    if [[ "$album_name" =~ ^Untitled ]]; then
        return 1
    fi
    if [[ "$album_name" == "Archive" || "$album_name" == "Album" ]]; then
        return 1
    fi
    return 0
}

# Function to determine final year (handles historical photos)
determine_year_and_timestamp() {
    local album_name="$1"
    local original_timestamp="$2"
    
    local album_year=""
    if [[ "$album_name" =~ ^Photos\ from\ ([0-9]{4})$ ]]; then
        album_year="${BASH_REMATCH[1]}"
    fi
    
    local exif_year=$(echo "$original_timestamp" | cut -d'-' -f1)
    
    if [ -n "$album_year" ] && [ "$exif_year" -gt 2010 ]; then
        echo "${album_year}" "${album_year}-01-01_00-00-00"
    else
        echo "${exif_year}" "${original_timestamp}"
    fi
}

# Initialize log
echo "Phase 2 Batch ${BATCH_NUM} Started: $(date)" > "${LOG_FILE}"
echo "File list: ${FILE_LIST}" >> "${LOG_FILE}"
echo "---" >> "${LOG_FILE}"

# Count total files
total_files=$(wc -l < "${FILE_LIST}")
processed=0

echo "Total files in batch: ${total_files}"

# Process each file from the list
while read -r image_file; do
    processed=$((processed + 1))
    filename=$(basename "${image_file}")
    
    # Progress indicator every 50 files
    if [ $((processed % 50)) -eq 0 ]; then
        echo "  Batch ${BATCH_NUM} Progress: ${processed}/${total_files} ($(( processed * 100 / total_files ))%)"
    fi
    
    echo "  Processing: ${filename}" >> "${LOG_FILE}"
    
    # Get album name from path
    album_dir=$(dirname "${image_file}")
    album_name=$(basename "${album_dir}")
    
    # Extract timestamp using our CLI
    original_timestamp=$(cd "${PROJECT_ROOT}" && node dist/main.js --files "${image_file}" --timestamp-only --quiet 2>/dev/null)
    
    if [ $? -ne 0 ] || [ -z "${original_timestamp}" ]; then
        echo "    ERROR: Failed to extract timestamp for ${image_file}" | tee -a "${LOG_FILE}"
        continue
    fi
    
    # Determine final year and timestamp (handles historical photos)
    read -r final_year final_timestamp <<< $(determine_year_and_timestamp "${album_name}" "${original_timestamp}")
    
    echo "    Final timestamp: ${final_timestamp} (year: ${final_year})" >> "${LOG_FILE}"
    
    # Extract month from final timestamp
    final_month=$(echo "${final_timestamp}" | cut -d'-' -f2)
    
    # Create year/month directory structure
    monthly_dir="${ARCHIVE_BASE}/${final_year}/${final_month}"
    mkdir -p "${monthly_dir}"
    
    # Get file extension and convert to lowercase
    extension=$(echo "${filename##*.}" | tr '[:upper:]' '[:lower:]')
    
    # Generate new lowercase filename with collision handling
    counter=1
    new_filename=$(echo "${final_timestamp}_$(printf "%03d" ${counter}).${extension}" | tr '[:upper:]' '[:lower:]')
    new_filepath="${monthly_dir}/${new_filename}"
    
    # Handle filename collisions
    while [ -f "${new_filepath}" ]; do
        counter=$((counter + 1))
        new_filename=$(echo "${final_timestamp}_$(printf "%03d" ${counter}).${extension}" | tr '[:upper:]' '[:lower:]')
        new_filepath="${monthly_dir}/${new_filename}"
    done
    
    echo "    New path: ${new_filepath}" >> "${LOG_FILE}"
    
    # Move the image file
    mv "${image_file}" "${new_filepath}"
    echo "    Moved image: ${image_file} -> ${new_filepath}" >> "${LOG_FILE}"
    
    # Handle sidecar files
    sidecar_extensions=("supplemental-metadata.json" "suppl.json" "supplemen.json" "json")
    for ext in "${sidecar_extensions[@]}"; do
        sidecar_file="${image_file}.${ext}"
        if [ -f "${sidecar_file}" ]; then
            sidecar_filename=$(echo "${final_timestamp}_$(printf "%03d" ${counter}).${extension}.json" | tr '[:upper:]' '[:lower:]')
            new_sidecar="${monthly_dir}/${sidecar_filename}"
            mv "${sidecar_file}" "${new_sidecar}"
            echo "    Moved sidecar: ${sidecar_file} -> ${new_sidecar}" >> "${LOG_FILE}"
        fi
    done
    
    # Create collection symlinks if needed
    if should_create_collection "${album_name}"; then
        sanitized_album=$(sanitize_name "${album_name}")
        collection_dir="${COLLECTIONS_BASE}/${sanitized_album}"
        mkdir -p "${collection_dir}"
        
        relative_path="../../../archive/${final_year}/${final_month}/${new_filename}"
        symlink_path="${collection_dir}/${new_filename}"
        
        if [ ! -e "${symlink_path}" ]; then
            ln -s "${relative_path}" "${symlink_path}"
            echo "    Created collection symlink: ${symlink_path}" >> "${LOG_FILE}"
            
            sidecar_filename=$(echo "${final_timestamp}_$(printf "%03d" ${counter}).${extension}.json" | tr '[:upper:]' '[:lower:]')
            if [ -f "${monthly_dir}/${sidecar_filename}" ]; then
                sidecar_relative="../../../archive/${final_year}/${final_month}/${sidecar_filename}"
                sidecar_symlink="${collection_dir}/${sidecar_filename}"
                ln -s "${sidecar_relative}" "${sidecar_symlink}"
                echo "    Created sidecar symlink: ${sidecar_symlink}" >> "${LOG_FILE}"
            fi
        fi
    fi
    
    echo "    ✓ Completed" >> "${LOG_FILE}"
done < "${FILE_LIST}"

echo "---" >> "${LOG_FILE}"
echo "Phase 2 Batch ${BATCH_NUM} Completed: $(date)" >> "${LOG_FILE}"

echo ""
echo "=== BATCH ${BATCH_NUM} COMPLETE ==="
echo "Processed: ${processed} files"
echo "Log file: ${LOG_FILE}"