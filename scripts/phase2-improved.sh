#!/bin/bash

# Phase 2: Improved Directory Restructuring Script
# Enhancements:
# - Monthly bucketing (YYYY/MM/)
# - Lowercase filenames and collections
# - Historical photo handling (Photos from YYYY albums)
# - 2010 cutoff for authentic vs scan dates

set -e

# Configuration
PROJECT_ROOT="/home/stephen/Documents/initial-media-processing"
SOURCE_BASE="/photos/staging/google-takeout/Takeout/Google Photos"
ARCHIVE_BASE="/photos/archive"
COLLECTIONS_BASE="/photos/collections"
LOG_FILE="/photos/phase2-improved.log"

# Safety check
if [ ! -d "${SOURCE_BASE}" ]; then
    echo "ERROR: Source directory does not exist: ${SOURCE_BASE}"
    exit 1
fi

echo "Phase 2 Improved Restructuring"
echo "==============================="
echo "Enhancements:"
echo "- Monthly bucketing (YYYY/MM/)"
echo "- Lowercase filenames"
echo "- Historical photo handling"
echo "- 2010 cutoff for scan vs authentic dates"
echo ""
echo "Source: ${SOURCE_BASE}"
echo "Archive: ${ARCHIVE_BASE}"
echo "Collections: ${COLLECTIONS_BASE}"
echo "Log: ${LOG_FILE}"
echo ""
read -p "Continue? (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Aborted."
    exit 1
fi

# Create directories
mkdir -p "${ARCHIVE_BASE}" "${COLLECTIONS_BASE}"

# Function to sanitize and lowercase names
sanitize_name() {
    local name="$1"
    # Convert to lowercase
    name=$(echo "$name" | tr '[:upper:]' '[:lower:]')
    # Replace spaces with underscores
    name="${name// /_}"
    # Remove special characters, keep alphanumeric, underscore, hyphen
    name=$(echo "$name" | sed 's/[^a-z0-9_-]//g')
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

# Function to determine final year (handles historical photos)
determine_year_and_timestamp() {
    local album_name="$1"
    local original_timestamp="$2"
    
    # Extract year from album name if it matches "Photos from YYYY"
    local album_year=""
    if [[ "$album_name" =~ ^Photos\ from\ ([0-9]{4})$ ]]; then
        album_year="${BASH_REMATCH[1]}"
    fi
    
    # Get year from EXIF timestamp
    local exif_year=$(echo "$original_timestamp" | cut -d'-' -f1)
    
    # Choose year: use EXIF if ≤2010 (historical), otherwise use album year for scanned photos
    if [ -n "$album_year" ] && [ "$exif_year" -gt 2010 ]; then
        # Modern scan/digitization date (2011+), use album year
        echo "${album_year}" "${album_year}-01-01_00-00-00"
    else
        # Historical EXIF (≤2010) or no album override
        echo "${exif_year}" "${original_timestamp}"
    fi
}

# Initialize log
echo "Phase 2 Improved Restructuring Started: $(date)" > "${LOG_FILE}"
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
        sanitized_album=$(sanitize_name "${album_name}")
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
        original_timestamp=$(cd "${PROJECT_ROOT}" && node dist/main.js --files "${image_file}" --timestamp-only --quiet 2>/dev/null)
        
        if [ $? -ne 0 ] || [ -z "${original_timestamp}" ]; then
            echo "    ERROR: Failed to extract timestamp for ${image_file}" | tee -a "${LOG_FILE}"
            continue
        fi
        
        # Determine final year and timestamp (handles historical photos)
        read -r final_year final_timestamp <<< $(determine_year_and_timestamp "${album_name}" "${original_timestamp}")
        
        echo "    Original timestamp: ${original_timestamp}" >> "${LOG_FILE}"
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
        if [ "$create_collection" = true ]; then
            # Create relative symlink to archive (adjust for monthly subdirs)
            relative_path="../../../archive/${final_year}/${final_month}/${new_filename}"
            symlink_path="${collection_dir}/${new_filename}"
            
            if [ ! -e "${symlink_path}" ]; then
                ln -s "${relative_path}" "${symlink_path}"
                echo "    Created collection symlink: ${symlink_path}" >> "${LOG_FILE}"
                
                # Also symlink the sidecar if it exists
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
    done
    
    # Remove empty album directory
    rmdir "${album_dir}" 2>/dev/null || echo "  Note: Album directory not empty: ${album_dir}" >> "${LOG_FILE}"
    
    echo "  Album completed: ${album_name}" | tee -a "${LOG_FILE}"
done

echo "---" >> "${LOG_FILE}"
echo "Phase 2 Improved Restructuring Completed: $(date)" >> "${LOG_FILE}"

# Generate summary
echo ""
echo "=== RESTRUCTURING COMPLETE ==="
echo "Archive structure:"
find "${ARCHIVE_BASE}" -type d -name "[0-9][0-9]" | head -10 | while read -r month_dir; do
    year_month=$(echo "$month_dir" | sed 's|.*/\([0-9]\{4\}\)/\([0-9]\{2\}\)|\1-\2|')
    count=$(find "${month_dir}" -name "*.jpg" -o -name "*.jpeg" -o -name "*.heic" -o -name "*.png" | wc -l)
    echo "  ${year_month}: ${count} photos"
done

echo ""
echo "Collections created:"
ls -1 "${COLLECTIONS_BASE}" 2>/dev/null | head -10
if [ $(ls -1 "${COLLECTIONS_BASE}" 2>/dev/null | wc -l) -gt 10 ]; then
    echo "... and $(($(ls -1 "${COLLECTIONS_BASE}" | wc -l) - 10)) more"
fi

echo ""
echo "Final counts:"
echo "  Archive photos: $(find "${ARCHIVE_BASE}" -name "*.jpg" -o -name "*.jpeg" -o -name "*.heic" -o -name "*.png" | wc -l)"
echo "  Collection symlinks: $(find "${COLLECTIONS_BASE}" -type l -name "*.jpg" -o -name "*.jpeg" -o -name "*.heic" -o -name "*.png" | wc -l)"
echo ""
echo "Log file: ${LOG_FILE}"