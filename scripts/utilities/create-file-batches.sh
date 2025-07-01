#!/bin/bash

# Create 4 file batches for parallel processing

SOURCE_BASE="/photos/staging/google-takeout/Takeout/Google Photos"
BATCH_DIR="/tmp/phase2-batches"

mkdir -p "${BATCH_DIR}"

echo "Creating file batches..."

# Find all remaining image files
find "${SOURCE_BASE}" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.heic" -o -name "*.png" \) > "${BATCH_DIR}/all-files.txt"

total_files=$(wc -l < "${BATCH_DIR}/all-files.txt")
files_per_batch=$((total_files / 8))

echo "Total files: ${total_files}"
echo "Files per batch: ${files_per_batch}"

# Split into 8 batches
split -l "${files_per_batch}" "${BATCH_DIR}/all-files.txt" "${BATCH_DIR}/batch-"

# Rename to more readable names
mv "${BATCH_DIR}/batch-aa" "${BATCH_DIR}/batch-1.txt" 2>/dev/null || true
mv "${BATCH_DIR}/batch-ab" "${BATCH_DIR}/batch-2.txt" 2>/dev/null || true
mv "${BATCH_DIR}/batch-ac" "${BATCH_DIR}/batch-3.txt" 2>/dev/null || true
mv "${BATCH_DIR}/batch-ad" "${BATCH_DIR}/batch-4.txt" 2>/dev/null || true
mv "${BATCH_DIR}/batch-ae" "${BATCH_DIR}/batch-5.txt" 2>/dev/null || true
mv "${BATCH_DIR}/batch-af" "${BATCH_DIR}/batch-6.txt" 2>/dev/null || true
mv "${BATCH_DIR}/batch-ag" "${BATCH_DIR}/batch-7.txt" 2>/dev/null || true
mv "${BATCH_DIR}/batch-ah" "${BATCH_DIR}/batch-8.txt" 2>/dev/null || true

echo "Created batches:"
for i in {1..8}; do
    if [ -f "${BATCH_DIR}/batch-${i}.txt" ]; then
        count=$(wc -l < "${BATCH_DIR}/batch-${i}.txt")
        echo "  Batch ${i}: ${count} files"
    fi
done

echo "Batch files ready in: ${BATCH_DIR}"