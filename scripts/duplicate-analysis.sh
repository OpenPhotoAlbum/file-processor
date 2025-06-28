#!/bin/bash
# duplicate-analysis.sh - REPORT ONLY, NO DELETIONS

echo "=== Duplicate Analysis Report - 2024 Photos ==="
echo "Started: $(date)"
echo

# Work in temp directory
mkdir -p /tmp/duplicate-analysis
cd /tmp/duplicate-analysis

# Find all 2024 media files
echo "Finding 2024 media files..."
find /photos/staging/google-takeout -path "*2024*" -type f \( -name "*.jpg" -o -name "*.JPG" -o -name "*.HEIC" -o -name "*.heic" -o -name "*.MOV" -o -name "*.mov" -o -name "*.MP4" -o -name "*.mp4" -o -name "*.jpeg" -o -name "*.JPEG" \) > 2024-files.txt

total_files=$(cat 2024-files.txt | wc -l)
echo "Found $total_files files in 2024 directories"
echo

if [ $total_files -eq 0 ]; then
    echo "No 2024 files found. Check if the path structure is correct."
    echo "Looking for directories containing '2024' in the path..."
    find /photos/staging/google-takeout -type d -path "*2024*" | head -10
    exit 1
fi

# Phase 1: Size analysis
echo "Phase 1: Analyzing file sizes..."
while read filepath; do
    if [ -f "$filepath" ]; then
        size=$(stat -c%s "$filepath" 2>/dev/null)
        if [ $? -eq 0 ]; then
            echo "$size $filepath"
        fi
    fi
done < 2024-files.txt > size-index.txt

# Find duplicate sizes
echo "Finding files with identical sizes..."
awk '{print $1}' size-index.txt | sort -n | uniq -d > duplicate-sizes.txt
potential_dupes=$(cat duplicate-sizes.txt | wc -l)
echo "Found $potential_dupes different file sizes that appear multiple times"
echo

if [ $potential_dupes -eq 0 ]; then
    echo "No potential duplicates found by file size."
    echo "Analysis complete - no duplicates detected in 2024 files."
    exit 0
fi

# Phase 2: Hash analysis (only for potential duplicates)
echo "Phase 2: Hashing potential duplicates..."
echo "Processing $potential_dupes size groups..."
echo

# Initialize duplicate counter
total_duplicate_pairs=0

while read size; do
    # Get all files of this size
    grep "^$size " size-index.txt > same-size-files.txt
    file_count=$(cat same-size-files.txt | wc -l)
    
    if [ $file_count -gt 1 ]; then
        echo "  Checking $file_count files of size $size bytes..."
        
        # Hash all files of this size
        while read sz filepath; do
            if [ -f "$filepath" ]; then
                hash=$(md5sum "$filepath" 2>/dev/null | cut -d' ' -f1)
                if [ $? -eq 0 ]; then
                    echo "$hash $filepath"
                fi
            fi
        done < same-size-files.txt | sort > same-size-hashes.txt
        
        # Find duplicate hashes and count pairs in this size group
        awk '{
            hash = $1
            # Reconstruct full file path (everything after first space)
            filepath = ""
            for (i = 2; i <= NF; i++) {
                if (i > 2) filepath = filepath " "
                filepath = filepath $i
            }
            
            if (hash == prev_hash && prev_file != "") {
                print "DUPLICATE_PAIR: " prev_file " <--> " filepath
                pairs_in_group++
            }
            prev_hash = hash
            prev_file = filepath
        } END {
            if (pairs_in_group > 0) {
                print "SIZE_GROUP_PAIRS: " pairs_in_group
            }
        }' same-size-hashes.txt >> duplicate-report.txt
        
        # Count pairs found in this group
        group_pairs=$(grep "SIZE_GROUP_PAIRS:" duplicate-report.txt | tail -1 | awk '{print $2}')
        if [ ! -z "$group_pairs" ]; then
            total_duplicate_pairs=$((total_duplicate_pairs + group_pairs))
        fi
    fi
done < duplicate-sizes.txt

echo

# Generate summary report
echo "=== DUPLICATE ANALYSIS SUMMARY ==="
echo "Total files analyzed: $total_files"
echo "Files with duplicate sizes: $(awk '{print $1}' size-index.txt | sort -n | uniq -c | awk '$1 > 1 {sum += $1} END {print sum+0}')"
echo "Duplicate pairs found: $total_duplicate_pairs"

if [ $total_duplicate_pairs -gt 0 ]; then
    # Estimate space savings (average 5MB per photo)
    space_mb=$((total_duplicate_pairs * 5))
    space_gb=$((space_mb / 1024))
    echo "Estimated space savings: ${space_mb}MB (~${space_gb}GB)"
    echo
    echo "=== SAMPLE DUPLICATES (first 10) ==="
    grep "DUPLICATE_PAIR:" duplicate-report.txt | head -10
    echo
    if [ $total_duplicate_pairs -gt 10 ]; then
        echo "... and $((total_duplicate_pairs - 10)) more duplicate pairs"
        echo
    fi
else
    echo "No exact duplicates found!"
    echo
fi

echo "=== FILES CREATED ==="
echo "All analysis files saved in: /tmp/duplicate-analysis/"
echo "- 2024-files.txt: All 2024 files found ($total_files files)"
echo "- duplicate-report.txt: All duplicate pairs found"
echo "- size-index.txt: File sizes for all files"
echo "- duplicate-sizes.txt: Sizes that appear multiple times"
echo
echo "=== NEXT STEPS ==="
if [ $total_duplicate_pairs -gt 0 ]; then
    echo "1. Review duplicate pairs in duplicate-report.txt"
    echo "2. Decide which duplicates to keep (better folder names, metadata)"
    echo "3. Consider running full collection analysis if results look good"
else
    echo "1. 2024 photos appear to have no duplicates"
    echo "2. Consider testing another year or running full collection analysis"
fi
echo
echo "Completed: $(date)"