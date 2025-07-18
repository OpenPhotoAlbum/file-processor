#!/bin/bash

# Quick and dirty photo grouping for batch GPS application
SCAN_DIR="/photos/staging/scans/scanned"

echo "=== SCANNED PHOTO GROUPS ==="
echo

# Create temp files for processing
temp_file=$(mktemp)
groups_file=$(mktemp)

# Get all filenames and extract descriptions
find "$SCAN_DIR" -maxdepth 1 -name "*.jpg" -exec basename {} \; | \
while read filename; do
    # Extract the descriptive part (after timestamp, before file number)
    # Pattern: YYYY-MM-DD-timestamp-description-###.jpg
    desc=$(echo "$filename" | sed 's/^[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}-[0-9]\{13\}-//; s/-[0-9]\{3\}\.jpg$//')
    
    # Skip files where description is empty or just numbers (like 000, 001, etc.)
    if [[ -n "$desc" && ! "$desc" =~ ^[0-9]+\.jpg$ && ! "$desc" =~ ^[0-9]+$ ]]; then
        echo "$desc|$SCAN_DIR/$filename"
    fi
done > "$temp_file"

# Group files by description and count them
while IFS='|' read desc filepath; do
    echo "$desc"
done < "$temp_file" | sort | uniq -c | sort -nr > "$groups_file"

# Output groups sorted by count (highest first)
while read count desc; do
    echo "=== $desc ($count files) ==="
    
    # Get files for this group and sort by year, adding blank lines between years
    prev_year=""
    year_files=()
    current_year=""
    
    grep "^$desc|" "$temp_file" | cut -d'|' -f2 | sort | \
    while IFS= read -r filepath; do
        # Extract year from filepath
        year=$(basename "$filepath" | cut -d'-' -f1)
        
        # If year changed, output previous year's command and start new year
        if [[ -n "$prev_year" && "$year" != "$prev_year" ]]; then
            echo
            echo "# Copy this to set GPS for $desc $prev_year:"
            echo "# Apply GPS coords [lat,lng or location] to $desc $prev_year"
            echo
        fi
        
        echo "$filepath"
        prev_year="$year"
    done
    
    # Output command for the last year
    if [[ -n "$prev_year" ]]; then
        echo
        echo "# Copy this to set GPS for $desc $prev_year:"
        echo "# Apply GPS coords [lat,lng or location] to $desc $prev_year"
    fi
    
    echo
done < "$groups_file"

# Cleanup
rm "$temp_file" "$groups_file"