#!/bin/bash
# visual-duplicate-verification.sh - Create HTML page to visually verify duplicates

echo "Creating visual duplicate verification page..."

# Create output directory
mkdir -p /tmp/duplicate-verification
cd /tmp/duplicate-verification

# Start HTML file
cat > duplicate-verification.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Duplicate Verification</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .duplicate-set { border: 1px solid #ccc; margin: 20px 0; padding: 15px; }
        .duplicate-pair { display: flex; gap: 20px; margin: 10px 0; }
        .file-info { flex: 1; }
        .file-path { font-size: 12px; color: #666; word-break: break-all; }
        .file-size { font-weight: bold; color: #333; }
        img { max-width: 200px; max-height: 200px; border: 1px solid #ddd; }
        .same { background-color: #e8f5e8; }
        .different { background-color: #ffe8e8; }
    </style>
</head>
<body>
    <h1>Visual Duplicate Verification</h1>
    <p>First 10 duplicate sets from rmlint analysis</p>
EOF

# Process duplicates and create visual comparison
echo "Processing duplicate sets..."

# Get duplicate data and group by hash
cat /home/stephen/Documents/initial-media-processing/duplicates.json | jq -r '
  [.[] | select(.type=="duplicate_file")] | 
  group_by(.checksum) | 
  .[:10] | 
  .[] | 
  {
    checksum: .[0].checksum,
    size: .[0].size,
    files: [.[] | .path]
  }
' > duplicate-sets.json

# Process each duplicate set
set_number=1
while read -r duplicate_set; do
    echo "Processing set $set_number..."
    
    checksum=$(echo "$duplicate_set" | jq -r '.checksum')
    size=$(echo "$duplicate_set" | jq -r '.size')
    files=$(echo "$duplicate_set" | jq -r '.files[]')
    
    echo "<div class='duplicate-set'>" >> duplicate-verification.html
    echo "<h3>Duplicate Set $set_number (Hash: ${checksum:0:12}...)</h3>" >> duplicate-verification.html
    echo "<p><strong>File Size:</strong> $(echo "$size" | numfmt --to=iec) ($size bytes)</p>" >> duplicate-verification.html
    
    file_count=1
    while IFS= read -r file_path; do
        if [ -f "$file_path" ]; then
            filename=$(basename "$file_path")
            directory=$(dirname "$file_path" | sed 's|.*/Google Photos/||')
            
            echo "<div class='duplicate-pair'>" >> duplicate-verification.html
            echo "<div class='file-info'>" >> duplicate-verification.html
            echo "<div class='file-path'><strong>File $file_count:</strong> $directory/$filename</div>" >> duplicate-verification.html
            
            # Check if it's an image we can display
            if [[ "$file_path" =~ \.(jpg|jpeg|png|JPG|JPEG|PNG)$ ]]; then
                # Create relative path for HTML
                rel_path=$(realpath --relative-to=/tmp/duplicate-verification "$file_path")
                echo "<img src='$rel_path' alt='$filename' onerror='this.style.display=\"none\"'>" >> duplicate-verification.html
            else
                echo "<div style='border: 1px solid #ddd; padding: 20px; background: #f5f5f5;'>$filename ($(file -b "$file_path" 2>/dev/null || echo "Unknown file type"))</div>" >> duplicate-verification.html
            fi
            
            echo "</div>" >> duplicate-verification.html
            echo "</div>" >> duplicate-verification.html
            
            file_count=$((file_count + 1))
        fi
    done <<< "$files"
    
    echo "</div>" >> duplicate-verification.html
    echo "<hr>" >> duplicate-verification.html
    
    set_number=$((set_number + 1))
done < <(cat duplicate-sets.json | jq -c '.[]')

# Close HTML
cat >> duplicate-verification.html << 'EOF'
</body>
</html>
EOF

echo "=== Visual Verification Created ==="
echo "Open this file in your browser:"
echo "file:///tmp/duplicate-verification/duplicate-verification.html"
echo
echo "Or view with:"
echo "firefox /tmp/duplicate-verification/duplicate-verification.html"
echo
echo "This will show you the first 10 duplicate sets side-by-side for visual comparison."