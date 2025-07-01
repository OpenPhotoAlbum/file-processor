#!/bin/bash

# Phase 2: Production Directory Restructuring Script
# Processes the full Google Photos collection
# Moves files from chaotic Google Takeout structure to organized /photos/archive/YYYY/ structure
# Renames files to YYYY-MM-DD_HH-MM-SS_NNN.ext format with synchronized sidecars
# Creates collections symlinks for meaningful album names

set -e

# Configuration
PROJECT_ROOT="/home/stephen/Documents/initial-media-processing"
SOURCE_BASE="/photos/staging/google-takeout/Takeout/Google Photos"
ARCHIVE_BASE="/photos/archive"
COLLECTIONS_BASE="/photos/collections"
LOG_FILE="/photos/phase2-restructure.log"

# Safety check
if [ ! -d "${SOURCE_BASE}" ]; then
    echo "ERROR: Source directory does not exist: ${SOURCE_BASE}"
    exit 1
fi

echo "Phase 2 Production Restructuring"
echo "================================="
echo "Source: ${SOURCE_BASE}"
echo "Archive: ${ARCHIVE_BASE}"
echo "Collections: ${COLLECTIONS_BASE}"
echo "Log: ${LOG_FILE}"
echo ""
read -p "This will process ~40K files. Continue? (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Aborted."
    exit 1
fi

# Create directories
mkdir -p "${ARCHIVE_BASE}" "${COLLECTIONS_BASE}"

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
echo "Phase 2 Production Restructuring Started: $(date)" > "${LOG_FILE}"
echo "Source: ${SOURCE_BASE}" >> "${LOG_FILE}"
echo "Archive: ${ARCHIVE_BASE}" >> "${LOG_FILE}"
echo "Collections: ${COLLECTIONS_BASE}" >> "${LOG_FILE}"
echo "---" >> "${LOG_FILE}"

# Track progress
total_files=$(find "${SOURCE_BASE}" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.heic" -o -name "*.png" \) | wc -l)
processed=0
echo "Total files to process: ${total_files}"

# Process each album directory
find "${SOURCE_BASE}" -mindepth 1 -maxdepth 1 -type d | while read -r album_dir; do
    album_name=$(basename "${album_dir}")
    echo "Processing album: ${album_name}" | tee -a "${LOG_FILE}"
    
    # Determine if this album should have a collection
    create_collection=false
    sanitized_album=""
    if should_create_collection "${album_name}"; then
        create_collection=true
        sanitized_album=$(sanitize_collection_name "${album_name}")
        collection_dir="${COLLECTIONS_BASE}/${sanitized_album}"
        mkdir -p "${collection_dir}"
        echo "  Will create collection: ${sanitized_album}" | tee -a "${LOG_FILE}"
    else
        echo "  Skipping collection (generic name)" >> "${LOG_FILE}"
    fi
    
    # Process each image file in this album
    find "${album_dir}" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.heic" -o -name "*.png" \) | while read -r image_file; do
        processed=$((processed + 1))
        filename=$(basename "${image_file}")
        
        # Progress indicator every 100 files
        if [ $((processed % 100)) -eq 0 ]; then
            echo "  Progress: ${processed}/${total_files} ($(( processed * 100 / total_files ))%)"
        fi
        
        echo "  Processing: ${filename}" >> "${LOG_FILE}"
        
        # Extract timestamp using our CLI
        timestamp=$(cd "${PROJECT_ROOT}" && node dist/main.js --files "${image_file}" --timestamp-only --quiet 2>/dev/null)
        
        if [ $? -ne 0 ] || [ -z "${timestamp}" ]; then
            echo "    ERROR: Failed to extract timestamp for ${image_file}" | tee -a "${LOG_FILE}"
            continue
        fi
        
        echo "    Timestamp: ${timestamp}" >> "${LOG_FILE}"
        
        # Extract year for directory structure
        year=$(echo "${timestamp}" | cut -d'-' -f1)
        
        # Create year directory
        year_dir="${ARCHIVE_BASE}/${year}"
        mkdir -p "${year_dir}"
        
        # Get file extension
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
        
        echo "    New name: ${new_filename}" >> "${LOG_FILE}"
        
        # Move the image file
        mv "${image_file}" "${new_filepath}"
        echo "    Moved image: ${image_file} -> ${new_filepath}" >> "${LOG_FILE}"
        
        # Handle sidecar files
        sidecar_extensions=("supplemental-metadata.json" "suppl.json" "supplemen.json" "json")
        for ext in "${sidecar_extensions[@]}"; do
            sidecar_file="${image_file}.${ext}"
            if [ -f "${sidecar_file}" ]; then
                new_sidecar="${year_dir}/${timestamp}_$(printf "%03d" ${counter}).${extension}.json"
                mv "${sidecar_file}" "${new_sidecar}"
                echo "    Moved sidecar: ${sidecar_file} -> ${new_sidecar}" >> "${LOG_FILE}"
            fi
        done
        
        # Create collection symlinks if needed
        if [ "$create_collection" = true ]; then
            # Create relative symlink to archive
            relative_path="../../archive/${year}/${new_filename}"
            symlink_path="${collection_dir}/${new_filename}"
            
            if [ ! -e "${symlink_path}" ]; then
                ln -s "${relative_path}" "${symlink_path}"
                echo "    Created collection symlink: ${symlink_path}" >> "${LOG_FILE}"
                
                # Also symlink the sidecar if it exists
                sidecar_name="${timestamp}_$(printf "%03d" ${counter}).${extension}.json"
                if [ -f "${year_dir}/${sidecar_name}" ]; then
                    sidecar_relative="../../archive/${year}/${sidecar_name}"
                    ln -s "${sidecar_relative}" "${collection_dir}/${sidecar_name}"
                    echo "    Created sidecar symlink: ${collection_dir}/${sidecar_name}" >> "${LOG_FILE}"
                fi
            fi
        fi
        
        echo "    ✓ Completed" >> "${LOG_FILE}"
    done
    
    # Remove empty album directory
    rmdir "${album_dir}" 2>/dev/null || echo "  Note: Album directory not empty (may contain other files): ${album_dir}" >> "${LOG_FILE}"
    
    echo "  Album completed: ${album_name}" | tee -a "${LOG_FILE}"
done

echo "---" >> "${LOG_FILE}"
echo "Phase 2 Production Restructuring Completed: $(date)" >> "${LOG_FILE}"

# Generate summary
echo ""
echo "=== RESTRUCTURING COMPLETE ==="
echo "Archive years created:"
ls -1 "${ARCHIVE_BASE}" | sort
echo ""
echo "Collections created:"
ls -1 "${COLLECTIONS_BASE}" 2>/dev/null | head -10
if [ $(ls -1 "${COLLECTIONS_BASE}" 2>/dev/null | wc -l) -gt 10 ]; then
    echo "... and $(($(ls -1 "${COLLECTIONS_BASE}" | wc -l) - 10)) more"
fi
echo ""
echo "Final file counts:"
echo "  Archive files: $(find "${ARCHIVE_BASE}" -type f | wc -l)"
echo "  Collection symlinks: $(find "${COLLECTIONS_BASE}" -type l | wc -l)"
echo ""
echo "Log file: ${LOG_FILE}"