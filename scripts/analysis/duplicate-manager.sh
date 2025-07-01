#!/bin/bash

# Duplicate Manager - Unified script for all duplicate detection and analysis
#
# Usage:
#   ./duplicate-manager.sh [MODE] [OPTIONS]
#
# Modes:
#   analyze        - Analyze duplicates and generate report
#   verify-simple  - Simple duplicate verification
#   verify-visual  - Create visual verification HTML page
#   create-large   - Report on large duplicate files
#   help          - Show this help
#
# Options:
#   --year YEAR        - Focus on specific year (e.g., 2024)
#   --min-size SIZE    - Minimum file size for large duplicates (default: 50MB)
#   --output-dir DIR   - Output directory (default: /tmp/duplicate-analysis)
#   --photos-dir DIR   - Photos directory to analyze (default: /photos)
#   --help            - Show this help

set -e

# Default configuration
PHOTOS_DIR="/photos"
OUTPUT_DIR="/tmp/duplicate-analysis"
YEAR=""
MIN_SIZE="50M"
MODE=""

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        analyze|verify-simple|verify-visual|create-large)
            MODE="$1"
            shift
            ;;
        --year)
            YEAR="$2"
            shift 2
            ;;
        --min-size)
            MIN_SIZE="$2"
            shift 2
            ;;
        --output-dir)
            OUTPUT_DIR="$2"
            shift 2
            ;;
        --photos-dir)
            PHOTOS_DIR="$2"
            shift 2
            ;;
        --help)
            echo "Duplicate Manager - Unified Duplicate Detection and Analysis"
            echo ""
            echo "Usage: $0 [MODE] [OPTIONS]"
            echo ""
            echo "Modes:"
            echo "  analyze        - Analyze duplicates and generate report"
            echo "  verify-simple  - Simple duplicate verification"
            echo "  verify-visual  - Create visual verification HTML page"
            echo "  create-large   - Report on large duplicate files"
            echo ""
            echo "Options:"
            echo "  --year YEAR        - Focus on specific year (e.g., 2024)"
            echo "  --min-size SIZE    - Minimum file size for large duplicates (default: 50M)"
            echo "  --output-dir DIR   - Output directory (default: /tmp/duplicate-analysis)"
            echo "  --photos-dir DIR   - Photos directory to analyze (default: /photos)"
            echo ""
            echo "Examples:"
            echo "  $0 analyze --year 2024"
            echo "  $0 verify-visual --output-dir ./duplicates"
            echo "  $0 create-large --min-size 100M"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            echo "Use --help for usage information"
            exit 1
            ;;
    esac
done

# Require mode
if [[ -z "$MODE" ]]; then
    echo "Error: Mode required. Use --help for usage information"
    exit 1
fi

# Create output directory
mkdir -p "$OUTPUT_DIR"
cd "$OUTPUT_DIR"

echo "=== Duplicate Manager - Mode: $MODE ==="
echo "Photos Directory: $PHOTOS_DIR"
echo "Output Directory: $OUTPUT_DIR"
if [[ -n "$YEAR" ]]; then
    echo "Year Filter: $YEAR"
fi
echo "Started: $(date)"
echo ""

case "$MODE" in
    "analyze")
        echo "Duplicate Analysis Report"
        echo "========================"
        
        # Build file search pattern
        if [[ -n "$YEAR" ]]; then
            echo "Finding $YEAR media files..."
            find "$PHOTOS_DIR" -path "*$YEAR*" -type f \( -name "*.jpg" -o -name "*.JPG" -o -name "*.HEIC" -o -name "*.heic" -o -name "*.MOV" -o -name "*.mov" -o -name "*.MP4" -o -name "*.mp4" -o -name "*.jpeg" -o -name "*.JPEG" -o -name "*.png" -o -name "*.PNG" -o -name "*.gif" -o -name "*.GIF" \) > "${YEAR}-files.txt"
            files_list="${YEAR}-files.txt"
        else
            echo "Finding all media files..."
            find "$PHOTOS_DIR" -type f \( -name "*.jpg" -o -name "*.JPG" -o -name "*.HEIC" -o -name "*.heic" -o -name "*.MOV" -o -name "*.mov" -o -name "*.MP4" -o -name "*.mp4" -o -name "*.jpeg" -o -name "*.JPEG" -o -name "*.png" -o -name "*.PNG" -o -name "*.gif" -o -name "*.GIF" \) > "all-files.txt"
            files_list="all-files.txt"
        fi
        
        total_files=$(wc -l < "$files_list")
        echo "Found $total_files files"
        
        echo ""
        echo "Computing MD5 hashes..."
        while read file; do
            if [[ -f "$file" ]]; then
                md5sum "$file" 2>/dev/null || echo "ERROR: $file"
            fi
        done < "$files_list" > hashes.txt
        
        echo ""
        echo "Analyzing duplicates..."
        
        # Find duplicates by hash
        awk '{print $1}' hashes.txt | sort | uniq -d > duplicate-hashes.txt
        
        duplicate_count=$(wc -l < duplicate-hashes.txt)
        echo "Found $duplicate_count unique duplicate hash groups"
        
        # Generate detailed duplicate report
        echo "=== DUPLICATE ANALYSIS REPORT ===" > duplicate-report.txt
        echo "Generated: $(date)" >> duplicate-report.txt
        echo "Files analyzed: $total_files" >> duplicate-report.txt
        echo "Duplicate groups: $duplicate_count" >> duplicate-report.txt
        echo "" >> duplicate-report.txt
        
        total_duplicate_files=0
        total_wasted_space=0
        
        while read hash; do
            echo "Hash: $hash" >> duplicate-report.txt
            grep "^$hash " hashes.txt >> duplicate-report.txt
            
            # Count files and calculate wasted space
            file_count=$(grep "^$hash " hashes.txt | wc -l)
            if [[ $file_count -gt 1 ]]; then
                # Get file size (all duplicates have same size)
                first_file=$(grep "^$hash " hashes.txt | head -1 | cut -d' ' -f2-)
                if [[ -f "$first_file" ]]; then
                    file_size=$(stat -c%s "$first_file" 2>/dev/null || echo 0)
                    wasted_space=$((file_size * (file_count - 1)))
                    total_wasted_space=$((total_wasted_space + wasted_space))
                    total_duplicate_files=$((total_duplicate_files + file_count - 1))
                    
                    echo "  Files: $file_count, Wasted space: $(numfmt --to=iec $wasted_space)" >> duplicate-report.txt
                fi
            fi
            echo "" >> duplicate-report.txt
        done < duplicate-hashes.txt
        
        echo "=== SUMMARY ===" >> duplicate-report.txt
        echo "Total duplicate files: $total_duplicate_files" >> duplicate-report.txt
        echo "Total wasted space: $(numfmt --to=iec $total_wasted_space)" >> duplicate-report.txt
        
        echo ""
        echo "Analysis complete!"
        echo "Report saved to: $OUTPUT_DIR/duplicate-report.txt"
        echo "Total wasted space: $(numfmt --to=iec $total_wasted_space)"
        ;;
        
    "verify-simple")
        echo "Simple Duplicate Verification"
        echo "============================"
        
        echo "Finding all media files..."
        find "$PHOTOS_DIR" -type f \( -name "*.jpg" -o -name "*.JPG" -o -name "*.HEIC" -o -name "*.heic" -o -name "*.MOV" -o -name "*.mov" -o -name "*.MP4" -o -name "*.mp4" \) | head -1000 > sample-files.txt
        
        echo "Computing hashes for sample files..."
        while read file; do
            if [[ -f "$file" ]]; then
                md5sum "$file" 2>/dev/null
            fi
        done < sample-files.txt | sort > sample-hashes.txt
        
        echo "Finding duplicates in sample..."
        awk '{print $1}' sample-hashes.txt | sort | uniq -d > sample-duplicates.txt
        
        duplicate_count=$(wc -l < sample-duplicates.txt)
        echo "Found $duplicate_count duplicate groups in sample"
        
        if [[ $duplicate_count -gt 0 ]]; then
            echo ""
            echo "Sample duplicates:"
            while read hash; do
                echo "Hash: $hash"
                grep "^$hash " sample-hashes.txt | head -3
                echo ""
            done < sample-duplicates.txt | head -20
        fi
        
        echo "Simple verification complete!"
        ;;
        
    "verify-visual")
        echo "Visual Duplicate Verification"
        echo "============================"
        
        echo "Creating visual verification page..."
        
        # Find some duplicates to display
        find "$PHOTOS_DIR" -type f \( -name "*.jpg" -o -name "*.JPG" -o -name "*.HEIC" -o -name "*.heic" \) | head -500 > visual-sample.txt
        
        while read file; do
            if [[ -f "$file" ]]; then
                md5sum "$file" 2>/dev/null
            fi
        done < visual-sample.txt | sort > visual-hashes.txt
        
        awk '{print $1}' visual-hashes.txt | sort | uniq -d | head -10 > visual-duplicates.txt
        
        # Create HTML page
        cat > visual-duplicates.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Visual Duplicate Verification</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .duplicate-group { border: 1px solid #ccc; margin: 20px 0; padding: 15px; }
        .duplicate-group h3 { color: #333; }
        .file-info { margin: 10px 0; padding: 10px; background: #f5f5f5; }
        .file-path { font-family: monospace; font-size: 0.9em; color: #666; }
        img { max-width: 200px; max-height: 150px; margin: 5px; border: 1px solid #ddd; }
    </style>
</head>
<body>
    <h1>Visual Duplicate Verification</h1>
    <p>Generated: <strong>$(date)</strong></p>
    <p>This page shows potential duplicate images for manual verification.</p>
    
EOF

        # Add duplicate groups to HTML
        group_num=1
        while read hash; do
            echo "    <div class='duplicate-group'>" >> visual-duplicates.html
            echo "        <h3>Duplicate Group $group_num</h3>" >> visual-duplicates.html
            echo "        <p><strong>Hash:</strong> <code>$hash</code></p>" >> visual-duplicates.html
            
            grep "^$hash " visual-hashes.txt | while read line; do
                file_path=$(echo "$line" | cut -d' ' -f2-)
                echo "        <div class='file-info'>" >> visual-duplicates.html
                echo "            <div class='file-path'>$file_path</div>" >> visual-duplicates.html
                
                # Add image if it's a supported format
                if [[ "$file_path" =~ \.(jpg|JPG|jpeg|JPEG)$ ]]; then
                    echo "            <img src='file://$file_path' alt='$file_path' onerror=\"this.style.display='none'\">" >> visual-duplicates.html
                fi
                
                echo "        </div>" >> visual-duplicates.html
            done
            
            echo "    </div>" >> visual-duplicates.html
            group_num=$((group_num + 1))
        done < visual-duplicates.txt
        
        echo "</body></html>" >> visual-duplicates.html
        
        echo "Visual verification page created: $OUTPUT_DIR/visual-duplicates.html"
        echo "Open in browser to view potential duplicates"
        ;;
        
    "create-large")
        echo "Large Duplicate Files Report"
        echo "==========================="
        
        echo "Finding large files (>= $MIN_SIZE)..."
        find "$PHOTOS_DIR" -type f -size "+$MIN_SIZE" \( -name "*.jpg" -o -name "*.JPG" -o -name "*.HEIC" -o -name "*.heic" -o -name "*.MOV" -o -name "*.mov" -o -name "*.MP4" -o -name "*.mp4" \) > large-files.txt
        
        large_count=$(wc -l < large-files.txt)
        echo "Found $large_count large files"
        
        if [[ $large_count -eq 0 ]]; then
            echo "No large files found with minimum size $MIN_SIZE"
            exit 0
        fi
        
        echo "Computing hashes for large files..."
        while read file; do
            if [[ -f "$file" ]]; then
                echo "Processing: $(basename "$file")"
                md5sum "$file" 2>/dev/null
            fi
        done < large-files.txt > large-hashes.txt
        
        echo "Finding large duplicates..."
        awk '{print $1}' large-hashes.txt | sort | uniq -d > large-duplicate-hashes.txt
        
        large_dup_count=$(wc -l < large-duplicate-hashes.txt)
        echo "Found $large_dup_count large duplicate groups"
        
        if [[ $large_dup_count -gt 0 ]]; then
            echo "=== LARGE DUPLICATE FILES REPORT ===" > large-duplicates-report.txt
            echo "Generated: $(date)" >> large-duplicates-report.txt
            echo "Minimum size: $MIN_SIZE" >> large-duplicates-report.txt
            echo "Large files found: $large_count" >> large-duplicates-report.txt
            echo "Large duplicate groups: $large_dup_count" >> large-duplicates-report.txt
            echo "" >> large-duplicates-report.txt
            
            total_large_wasted=0
            
            while read hash; do
                echo "Hash: $hash" >> large-duplicates-report.txt
                grep "^$hash " large-hashes.txt >> large-duplicates-report.txt
                
                # Calculate wasted space
                file_count=$(grep "^$hash " large-hashes.txt | wc -l)
                first_file=$(grep "^$hash " large-hashes.txt | head -1 | cut -d' ' -f2-)
                if [[ -f "$first_file" ]]; then
                    file_size=$(stat -c%s "$first_file" 2>/dev/null || echo 0)
                    wasted_space=$((file_size * (file_count - 1)))
                    total_large_wasted=$((total_large_wasted + wasted_space))
                    
                    echo "  Files: $file_count, Size each: $(numfmt --to=iec $file_size), Wasted: $(numfmt --to=iec $wasted_space)" >> large-duplicates-report.txt
                fi
                echo "" >> large-duplicates-report.txt
            done < large-duplicate-hashes.txt
            
            echo "=== SUMMARY ===" >> large-duplicates-report.txt
            echo "Total wasted space from large duplicates: $(numfmt --to=iec $total_large_wasted)" >> large-duplicates-report.txt
            
            echo ""
            echo "Large duplicates report saved to: $OUTPUT_DIR/large-duplicates-report.txt"
            echo "Total wasted space from large duplicates: $(numfmt --to=iec $total_large_wasted)"
        else
            echo "No large duplicate files found!"
        fi
        ;;
        
    *)
        echo "Error: Unknown mode '$MODE'"
        exit 1
        ;;
esac

echo ""
echo "Duplicate Manager completed successfully!"
echo "Results in: $OUTPUT_DIR"