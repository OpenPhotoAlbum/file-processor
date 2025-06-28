#!/bin/bash

# Phase 2: Directory Restructuring Script
# Moves files from chaotic Google Takeout structure to organized /photos/archive/YYYY/ structure
# Renames files to YYYY-MM-DD_HH-MM-SS_NNN.ext format with synchronized sidecars

set -e

# Configuration
PROJECT_ROOT="/home/stephen/Documents/initial-media-processing"
WORK_DIR="/tmp/phase2-test"
SOURCE_DIR="${WORK_DIR}/source"
ARCHIVE_DIR="${WORK_DIR}/archive"
COLLECTIONS_DIR="${WORK_DIR}/collections"
LOG_FILE="${WORK_DIR}/restructure.log"

# Create directories
mkdir -p "${ARCHIVE_DIR}" "${COLLECTIONS_DIR}"

# Function to sanitize directory names for collections
sanitize_collection_name() {
    local name="$1"
    # Replace spaces with underscores
    name="${name// /_}"
    # Remove or replace special characters, keep alphanumeric, underscore, hyphen
    name=$(echo "$name" | sed 's/[^a-zA-Z0-9_-]//g')
    # Remove multiple consecutive underscores
    name=$(echo "$name" | sed 's/__*/_/g')
    # Remove leading/trailing underscores
    name=$(echo "$name" | sed 's/^_*//;s/_*$//')
    echo "$name"
}

# Function to check if album name should be preserved in collections
should_create_collection() {
    local album_name="$1"
    
    # Skip generic/auto-generated names
    if [[ "$album_name" =~ ^Photos\ from\ [0-9]{4}$ ]]; then
        return 1  # Skip "Photos from YYYY"
    fi
    if [[ "$album_name" =~ ^Untitled ]]; then
        return 1  # Skip "Untitled(*)"
    fi
    if [[ "$album_name" == "Archive" || "$album_name" == "Album" ]]; then
        return 1  # Skip generic names
    fi
    
    return 0  # Create collection
}

# Initialize log
echo "Phase 2 Restructuring Started: $(date)" > "${LOG_FILE}"
echo "Source: ${SOURCE_DIR}" >> "${LOG_FILE}"
echo "Archive: ${ARCHIVE_DIR}" >> "${LOG_FILE}"
echo "---" >> "${LOG_FILE}"

# Process each image file (for test, we'll simulate original album structure)
find "${SOURCE_DIR}" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.heic" -o -name "*.png" \) | while read -r image_file; do
    echo "Processing: $(basename "${image_file}")" | tee -a "${LOG_FILE}"
    
    # Extract timestamp using our CLI
    timestamp=$(cd "${PROJECT_ROOT}" && node dist/main.js --files "${image_file}" --timestamp-only --quiet)
    
    if [ $? -ne 0 ] || [ -z "${timestamp}" ]; then
        echo "  ERROR: Failed to extract timestamp" | tee -a "${LOG_FILE}"
        continue
    fi
    
    echo "  Timestamp: ${timestamp}" | tee -a "${LOG_FILE}"
    
    # Extract year for directory structure
    year=$(echo "${timestamp}" | cut -d'-' -f1)
    
    # Create year directory
    year_dir="${ARCHIVE_DIR}/${year}"
    mkdir -p "${year_dir}"
    
    # Get file extension
    filename=$(basename "${image_file}")
    extension="${filename##*.}"
    
    # Generate new filename with collision handling
    counter=1
    new_filename="${timestamp}_$(printf "%03d" ${counter}).${extension}"
    new_filepath="${year_dir}/${new_filename}"
    
    # Handle filename collisions
    while [ -f "${new_filepath}" ]; do
        counter=$((counter + 1))
        new_filename="${timestamp}_$(printf "%03d" ${counter}).${extension}"
        new_filepath="${year_dir}/${new_filename}"
    done
    
    echo "  New name: ${new_filename}" | tee -a "${LOG_FILE}"
    
    # Move the image file
    cp "${image_file}" "${new_filepath}"
    echo "  Moved image: ${image_file} -> ${new_filepath}" >> "${LOG_FILE}"
    
    # Handle sidecar files
    sidecar_extensions=("supplemental-metadata.json" "suppl.json" "supplemen.json" "json")
    for ext in "${sidecar_extensions[@]}"; do
        sidecar_file="${image_file}.${ext}"
        if [ -f "${sidecar_file}" ]; then
            new_sidecar="${year_dir}/${timestamp}_$(printf "%03d" ${counter}).${extension}.json"
            cp "${sidecar_file}" "${new_sidecar}"
            echo "  Moved sidecar: ${sidecar_file} -> ${new_sidecar}" >> "${LOG_FILE}"
        fi
    done
    
    # Create collection symlinks (simulate album "Photos from 2019" for test)
    album_name="Photos from 2019"
    if should_create_collection "$album_name"; then
        sanitized_name=$(sanitize_collection_name "$album_name")
        collection_dir="${COLLECTIONS_DIR}/${sanitized_name}"
        mkdir -p "${collection_dir}"
        
        # Create relative symlink to archive
        relative_path="../../archive/${year}/${new_filename}"
        symlink_path="${collection_dir}/${new_filename}"
        
        if [ ! -e "${symlink_path}" ]; then
            ln -s "${relative_path}" "${symlink_path}"
            echo "  Created collection symlink: ${symlink_path}" >> "${LOG_FILE}"
            
            # Also symlink the sidecar if it exists
            sidecar_name="${timestamp}_$(printf "%03d" ${counter}).${extension}.json"
            if [ -f "${year_dir}/${sidecar_name}" ]; then
                sidecar_relative="../../archive/${year}/${sidecar_name}"
                ln -s "${sidecar_relative}" "${collection_dir}/${sidecar_name}"
                echo "  Created sidecar symlink: ${collection_dir}/${sidecar_name}" >> "${LOG_FILE}"
            fi
        fi
    fi
    
    echo "  ✓ Completed" | tee -a "${LOG_FILE}"
done

echo "---" >> "${LOG_FILE}"
echo "Phase 2 Restructuring Completed: $(date)" >> "${LOG_FILE}"

# Show results
echo ""
echo "=== RESTRUCTURING COMPLETE ==="
echo "Archive structure:"
find "${ARCHIVE_DIR}" -type f | sort
echo ""
echo "Collections structure:"
find "${COLLECTIONS_DIR}" -type l | sort
echo ""
echo "Collection name examples:"
echo "  'ABC's with Amelia' -> 'ABCs_with_Amelia'"
echo "  'Father's Day 2020 - Merrimack River' -> 'Fathers_Day_2020_-_Merrimack_River'"
echo ""
echo "Log file: ${LOG_FILE}"