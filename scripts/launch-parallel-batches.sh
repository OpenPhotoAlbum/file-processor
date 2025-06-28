#!/bin/bash

# Launch 4 parallel batch processing instances

SCRIPT_DIR="/home/stephen/Documents/initial-media-processing/scripts"
BATCH_DIR="/tmp/phase2-batches"

echo "Launching parallel batch processing..."

# Create file batches first
echo "Creating file batches..."
"${SCRIPT_DIR}/create-file-batches.sh"

echo ""
echo "Launching 4 parallel batch processors..."

# Launch 4 batch processors in parallel
"${SCRIPT_DIR}/phase2-batch.sh" 1 "${BATCH_DIR}/batch-1.txt" &
echo "Started batch 1 (PID: $!)"

"${SCRIPT_DIR}/phase2-batch.sh" 2 "${BATCH_DIR}/batch-2.txt" &
echo "Started batch 2 (PID: $!)"

"${SCRIPT_DIR}/phase2-batch.sh" 3 "${BATCH_DIR}/batch-3.txt" &
echo "Started batch 3 (PID: $!)"

"${SCRIPT_DIR}/phase2-batch.sh" 4 "${BATCH_DIR}/batch-4.txt" &
echo "Started batch 4 (PID: $!)"

echo ""
echo "All 4 batches launched!"
echo "Monitor progress with:"
echo "  tail -f /photos/phase2-batch-1.log"
echo "  tail -f /photos/phase2-batch-2.log"
echo "  tail -f /photos/phase2-batch-3.log"
echo "  tail -f /photos/phase2-batch-4.log"
echo ""
echo "Check running processes:"
echo "  ps aux | grep phase2-batch"