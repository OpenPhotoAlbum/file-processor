#!/bin/bash
# simple-duplicate-verification.sh - Copy sample duplicates for easy visual verification

echo "Creating simple duplicate verification..."

# Create verification directory
mkdir -p /tmp/duplicate-verification/samples
cd /tmp/duplicate-verification

# Get first 5 duplicate sets
cat /home/stephen/Documents/initial-media-processing/duplicates.json | jq -r '
  [.[] | select(.type=="duplicate_file")] | 
  group_by(.checksum) | 
  .[:5] | 
  .[]
' > first-5-sets.json

echo "=== FIRST 5 DUPLICATE SETS ==="
echo

set_num=1
while read -r duplicate_set; do
    checksum=$(echo "$duplicate_set" | jq -r '.[0].checksum')
    size=$(echo "$duplicate_set" | jq -r '.[0].size')
    files=$(echo "$duplicate_set" | jq -r '.[] | .path')
    
    echo "--- Duplicate Set $set_num ---"
    echo "Hash: ${checksum:0:12}..."
    echo "Size: $(echo "$size" | numfmt --to=iec) ($size bytes)"
    echo "Files:"
    
    file_num=1
    while IFS= read -r file_path; do
        if [ -f "$file_path" ]; then
            # Show file info
            directory=$(dirname "$file_path" | sed 's|.*/Google Photos/||')
            filename=$(basename "$file_path")
            echo "  $file_num. $directory/$filename"
            
            # Copy to samples directory for viewing
            if [[ "$file_path" =~ \.(jpg|jpeg|png|JPG|JPEG|PNG)$ ]]; then
                sample_name="set${set_num}_file${file_num}_${filename}"
                cp "$file_path" "/tmp/duplicate-verification/samples/$sample_name"
                echo "     -> Copied to samples/$sample_name"
            fi
            
            file_num=$((file_num + 1))
        else
            echo "  $file_num. FILE NOT FOUND: $file_path"
            file_num=$((file_num + 1))
        fi
    done <<< "$files"
    
    echo
    set_num=$((set_num + 1))
done < <(cat first-5-sets.json | jq -c '.[]')

echo "=== VERIFICATION INSTRUCTIONS ==="
echo "1. Visual check: Open the samples directory:"
echo "   nautilus /tmp/duplicate-verification/samples"
echo
echo "2. Or view thumbnails:"
echo "   ls -la /tmp/duplicate-verification/samples/"
echo
echo "3. Files copied for easy comparison:"
ls -la /tmp/duplicate-verification/samples/ 2>/dev/null | grep -E '\.(jpg|jpeg|png|JPG|JPEG|PNG)$' | wc -l
echo "   image files ready for visual inspection"
echo
echo "=== SAMPLE HASH VERIFICATION ==="
echo "Verifying that copied files are actually identical:"
cd /tmp/duplicate-verification/samples
for file in set1_file*; do
    if [ -f "$file" ]; then
        hash=$(md5sum "$file" | cut -d' ' -f1)
        echo "$file: $hash"
    fi
done
echo
echo "If set1_file1, set1_file2, set1_file3 all have the same hash, they're true duplicates!"