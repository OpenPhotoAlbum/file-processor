#!/bin/bash

# Reorganize the ~700 files already moved to add monthly bucketing
# Converts /photos/archive/YYYY/YYYY-MM-DD_... to /photos/archive/YYYY/MM/yyyy-mm-dd_...

set -e

ARCHIVE_BASE="/photos/archive"
LOG_FILE="/photos/reorganize-existing.log"

echo "Reorganizing existing archive files to monthly structure..." | tee "${LOG_FILE}"
echo "Started: $(date)" >> "${LOG_FILE}"

# Find all files in the flat year directories (not already in monthly subdirs)
find "${ARCHIVE_BASE}" -maxdepth 2 -type f \( -name "[0-9][0-9][0-9][0-9]-*.jpg" -o -name "[0-9][0-9][0-9][0-9]-*.jpeg" -o -name "[0-9][0-9][0-9][0-9]-*.heic" -o -name "[0-9][0-9][0-9][0-9]-*.HEIC" -o -name "[0-9][0-9][0-9][0-9]-*.png" -o -name "[0-9][0-9][0-9][0-9]-*.json" \) | while read -r file; do
    filename=$(basename "${file}")
    year_dir=$(dirname "${file}")
    year=$(basename "${year_dir}")
    
    # Extract month from filename (YYYY-MM-DD format)
    if [[ "$filename" =~ ^([0-9]{4})-([0-9]{2})-([0-9]{2})_ ]]; then
        file_year="${BASH_REMATCH[1]}"
        file_month="${BASH_REMATCH[2]}"
        
        # Convert to lowercase
        lowercase_filename=$(echo "$filename" | tr '[:upper:]' '[:lower:]')
        
        # Create monthly directory
        monthly_dir="${year_dir}/${file_month}"
        mkdir -p "${monthly_dir}"
        
        # Move file to monthly subdirectory with lowercase name
        new_path="${monthly_dir}/${lowercase_filename}"
        
        if [ ! -f "${new_path}" ]; then
            mv "${file}" "${new_path}"
            echo "Moved: ${file} -> ${new_path}" >> "${LOG_FILE}"
        else
            echo "Skip (exists): ${new_path}" >> "${LOG_FILE}"
        fi
    else
        echo "Skip (bad format): ${filename}" >> "${LOG_FILE}"
    fi
done

echo "Completed: $(date)" >> "${LOG_FILE}"
echo "Reorganization complete! Check ${LOG_FILE} for details."

# Show new structure
echo ""
echo "New monthly structure:"
find "${ARCHIVE_BASE}" -type d -name "[0-9][0-9]" | head -10 | while read -r month_dir; do
    count=$(find "${month_dir}" -type f -name "*.jpg" | wc -l)
    echo "  ${month_dir}: ${count} files"
done