#!/bin/bash
# create-visual-duplicates-page.sh - Simple HTML page with images for visual verification

echo "Creating visual duplicates verification page..."

# Create output directory
mkdir -p /tmp/visual-duplicates
cd /tmp/visual-duplicates

# Start HTML file
cat > visual-duplicates.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Visual Duplicate Verification</title>
    <style>
        body { 
            font-family: Arial, sans-serif; 
            margin: 20px; 
            background: #f5f5f5;
        }
        .duplicate-set { 
            background: white;
            border: 1px solid #ddd; 
            margin: 20px 0; 
            padding: 15px; 
            border-radius: 5px;
        }
        .file-group { 
            display: flex; 
            gap: 20px; 
            margin: 10px 0; 
            flex-wrap: wrap;
        }
        .file-item { 
            flex: 1; 
            min-width: 300px;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 3px;
        }
        .file-path { 
            font-size: 11px; 
            color: #666; 
            word-break: break-all; 
            margin-bottom: 10px;
            background: #f8f8f8;
            padding: 5px;
            border-radius: 2px;
        }
        .file-size { 
            font-weight: bold; 
            color: #333; 
            margin-bottom: 10px;
        }
        img { 
            max-width: 250px; 
            max-height: 200px; 
            border: 1px solid #ddd; 
            display: block;
            margin: 5px 0;
        }
        .not-image {
            background: #e8e8e8;
            padding: 20px;
            text-align: center;
            color: #666;
            border: 1px dashed #999;
        }
        h1 { color: #333; }
        h3 { color: #555; margin-top: 0; }
        .stats {
            background: #e8f4f8;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h1>Visual Duplicate Verification</h1>
    <div class="stats">
        <strong>First 10 duplicate sets from rmlint analysis</strong><br>
        Use this to visually confirm that the detected duplicates are actually identical images.
    </div>
EOF

echo "Getting first 10 duplicate sets..."

# Get first 10 duplicate sets and process them
cat /home/stephen/Documents/initial-media-processing/duplicates.json | jq -r '
  [.[] | select(.type=="duplicate_file")] | 
  group_by(.checksum) | 
  .[:10] | 
  to_entries[] | 
  {
    set_number: (.key + 1),
    checksum: .value[0].checksum,
    size: .value[0].size,
    files: [.value[] | {path: .path, size: .size}]
  }
' > duplicate-sets.json

set_count=0
while read -r duplicate_set; do
    set_count=$((set_count + 1))
    
    checksum=$(echo "$duplicate_set" | jq -r '.checksum')
    size=$(echo "$duplicate_set" | jq -r '.size')
    
    echo "<div class='duplicate-set'>" >> visual-duplicates.html
    echo "<h3>Duplicate Set $set_count</h3>" >> visual-duplicates.html
    echo "<p><strong>Size:</strong> $(echo "$size" | numfmt --to=iec) ($size bytes)</p>" >> visual-duplicates.html
    echo "<p><strong>Hash:</strong> ${checksum:0:16}...</p>" >> visual-duplicates.html
    
    echo "<div class='file-group'>" >> visual-duplicates.html
    
    # Process each file in the duplicate set
    echo "$duplicate_set" | jq -r '.files[] | .path' | while read -r file_path; do
        if [ -f "$file_path" ]; then
            filename=$(basename "$file_path")
            directory=$(dirname "$file_path" | sed 's|.*/Google Photos/||')
            
            echo "<div class='file-item'>" >> visual-duplicates.html
            echo "<div class='file-path'>$directory/<strong>$filename</strong></div>" >> visual-duplicates.html
            
            # Check if it's an image we can display
            if [[ "$file_path" =~ \.(jpg|jpeg|png|JPG|JPEG|PNG)$ ]]; then
                echo "<img src=\"file://$file_path\" alt=\"$filename\" onerror=\"this.style.display='none'; this.nextSibling.style.display='block';\">" >> visual-duplicates.html
                echo "<div class='not-image' style='display:none;'>Image failed to load</div>" >> visual-duplicates.html
            elif [[ "$file_path" =~ \.(mov|mp4|MOV|MP4)$ ]]; then
                echo "<div class='not-image'>📹 Video file: $filename</div>" >> visual-duplicates.html
            else
                echo "<div class='not-image'>📄 $(file -b "$file_path" 2>/dev/null || echo "Other file"): $filename</div>" >> visual-duplicates.html
            fi
            
            echo "</div>" >> visual-duplicates.html
        else
            echo "<div class='file-item'>" >> visual-duplicates.html
            echo "<div class='file-path' style='color: red;'>❌ FILE NOT FOUND: $file_path</div>" >> visual-duplicates.html
            echo "</div>" >> visual-duplicates.html
        fi
    done
    
    echo "</div>" >> visual-duplicates.html
    echo "</div>" >> visual-duplicates.html
    
    if [ $set_count -ge 10 ]; then
        break
    fi
done < <(cat duplicate-sets.json | jq -c '.[]' 2>/dev/null || echo '{}')

# Close HTML
cat >> visual-duplicates.html << 'EOF'
    <div style="margin-top: 40px; padding: 20px; background: #f0f0f0; border-radius: 5px;">
        <h3>How to Use This Page</h3>
        <ul>
            <li>Each "Duplicate Set" shows files that rmlint detected as identical</li>
            <li>Images should look exactly the same across each set</li>
            <li>Different file paths indicate where Google stored the same image</li>
            <li>If images look different, there might be a false positive</li>
        </ul>
    </div>
</body>
</html>
EOF

echo "=== Visual Verification Page Created ==="
echo "Open this file in your browser:"
echo "file:///tmp/visual-duplicates/visual-duplicates.html"
echo
echo "Or run:"
echo "firefox /tmp/visual-duplicates/visual-duplicates.html"
echo
echo "This will show the first 10 duplicate sets with actual images for visual comparison."