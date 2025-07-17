#!/bin/bash

# Move all files that start with "ROTATE_" to the rotate directory

SOURCE_DIR="/photos/staging/scans/scan-test"
ROTATE_DIR="/photos/staging/scans/scan-test/rotate"

mkdir -p "$ROTATE_DIR"

echo "Looking for files marked with ROTATE_ prefix..."

count=0
for file in "$SOURCE_DIR"/ROTATE_*; do
    if [ -f "$file" ]; then
        # Remove the ROTATE_ prefix from filename
        basename=$(basename "$file")
        new_name="${basename#ROTATE_}"
        
        echo "Moving: $basename -> $new_name"
        mv "$file" "$ROTATE_DIR/$new_name"
        ((count++))
    fi
done

echo "Moved $count files to rotate directory"