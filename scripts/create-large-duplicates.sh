#!/bin/bash
# create-large-duplicates.sh - Generate large HTML page with 200+ duplicates

echo "Creating large duplicates HTML page..."

cat > /tmp/large-duplicates.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Large Duplicate Verification (300+ duplicates)</title>
    <style>
        body { 
            font-family: Arial, sans-serif; 
            margin: 8px; 
            background: #f5f5f5;
            font-size: 11px;
        }
        .duplicate-set { 
            background: white;
            border: 1px solid #ccc; 
            margin: 8px 0; 
            padding: 8px; 
            border-radius: 3px;
            display: inline-block;
            width: 300px;
            vertical-align: top;
        }
        .file-path { 
            font-size: 9px; 
            color: #666; 
            word-break: break-all; 
            margin-bottom: 4px;
            background: #f8f8f8;
            padding: 2px;
            border-radius: 2px;
        }
        img { 
            max-width: 120px; 
            max-height: 90px; 
            border: 1px solid #ddd; 
            display: block;
            margin: 2px 0;
        }
        .not-image {
            background: #e8e8e8;
            padding: 8px;
            text-align: center;
            color: #666;
            border: 1px dashed #999;
            font-size: 9px;
        }
        h4 {
            margin: 2px 0 4px 0;
            font-size: 12px;
            color: #333;
        }
        .stats {
            background: #e8f4f8;
            padding: 10px;
            border-radius: 3px;
            margin-bottom: 15px;
            font-size: 11px;
        }
    </style>
</head>
<body>
    <h1>Large Scale Duplicate Verification</h1>
    <div class="stats">
        <strong>First 300 duplicate files from rmlint</strong><br>
        Compact grid view for quick visual scanning. Each box shows one duplicate file.
    </div>
EOF

echo "Adding duplicate files to HTML..."

# Get first 300 duplicate files and add them to HTML
cat /home/stephen/Documents/initial-media-processing/duplicates.json | \
jq -r '.[] | select(.type=="duplicate_file") | .path' | \
head -300 | \
while read file_path; do
    if [ -f "$file_path" ]; then
        filename=$(basename "$file_path")
        directory=$(dirname "$file_path" | sed 's|.*/Google Photos/||')
        
        echo "    <div class=\"duplicate-set\">" >> /tmp/large-duplicates.html
        echo "        <h4>$filename</h4>" >> /tmp/large-duplicates.html
        echo "        <div class=\"file-path\">$directory</div>" >> /tmp/large-duplicates.html
        
        if [[ "$file_path" =~ \.(jpg|jpeg|png|JPG|JPEG|PNG)$ ]]; then
            echo "        <img src=\"file://$file_path\" alt=\"$filename\">" >> /tmp/large-duplicates.html
        elif [[ "$file_path" =~ \.(mov|mp4|MOV|MP4)$ ]]; then
            echo "        <div class=\"not-image\">📹 Video: $filename</div>" >> /tmp/large-duplicates.html
        else
            echo "        <div class=\"not-image\">📄 Other: $filename</div>" >> /tmp/large-duplicates.html
        fi
        
        echo "    </div>" >> /tmp/large-duplicates.html
    fi
done

echo "</body></html>" >> /tmp/large-duplicates.html

echo "=== Large Duplicates Page Created ==="
echo "File: /tmp/large-duplicates.html"
echo "Open with: firefox /tmp/large-duplicates.html"
echo "Shows first 300 duplicate files in compact grid layout"