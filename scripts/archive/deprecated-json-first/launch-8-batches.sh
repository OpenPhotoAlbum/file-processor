#!/bin/bash

# Launch 8 parallel batch processing instances in background

SCRIPT_DIR="/home/stephen/Documents/initial-media-processing/scripts"
BATCH_DIR="/tmp/phase2-batches"

echo "=== Launching 8-Batch Parallel Processing ==="

# Create file batches first
echo "Creating 8 file batches..."
"${SCRIPT_DIR}/create-file-batches.sh"

echo ""
echo "Launching 8 parallel batch processors in background..."

# Launch 8 batch processors in background
"${SCRIPT_DIR}/phase2-batch.sh" 1 "${BATCH_DIR}/batch-1.txt" > /tmp/batch-1-output.log 2>&1 &
PID1=$!
echo "Started batch 1 (PID: $PID1)"

"${SCRIPT_DIR}/phase2-batch.sh" 2 "${BATCH_DIR}/batch-2.txt" > /tmp/batch-2-output.log 2>&1 &
PID2=$!
echo "Started batch 2 (PID: $PID2)"

"${SCRIPT_DIR}/phase2-batch.sh" 3 "${BATCH_DIR}/batch-3.txt" > /tmp/batch-3-output.log 2>&1 &
PID3=$!
echo "Started batch 3 (PID: $PID3)"

"${SCRIPT_DIR}/phase2-batch.sh" 4 "${BATCH_DIR}/batch-4.txt" > /tmp/batch-4-output.log 2>&1 &
PID4=$!
echo "Started batch 4 (PID: $PID4)"

"${SCRIPT_DIR}/phase2-batch.sh" 5 "${BATCH_DIR}/batch-5.txt" > /tmp/batch-5-output.log 2>&1 &
PID5=$!
echo "Started batch 5 (PID: $PID5)"

"${SCRIPT_DIR}/phase2-batch.sh" 6 "${BATCH_DIR}/batch-6.txt" > /tmp/batch-6-output.log 2>&1 &
PID6=$!
echo "Started batch 6 (PID: $PID6)"

"${SCRIPT_DIR}/phase2-batch.sh" 7 "${BATCH_DIR}/batch-7.txt" > /tmp/batch-7-output.log 2>&1 &
PID7=$!
echo "Started batch 7 (PID: $PID7)"

"${SCRIPT_DIR}/phase2-batch.sh" 8 "${BATCH_DIR}/batch-8.txt" > /tmp/batch-8-output.log 2>&1 &
PID8=$!
echo "Started batch 8 (PID: $PID8)"

echo ""
echo "🚀 All 8 batches launched in background!"
echo ""
echo "Process IDs:"
echo "  Batch 1: $PID1"
echo "  Batch 2: $PID2" 
echo "  Batch 3: $PID3"
echo "  Batch 4: $PID4"
echo "  Batch 5: $PID5"
echo "  Batch 6: $PID6"
echo "  Batch 7: $PID7"
echo "  Batch 8: $PID8"
echo ""
echo "Monitor progress with:"
echo "  ${SCRIPT_DIR}/monitor-batches.sh"
echo ""
echo "Check all processes:"
echo "  ps aux | grep phase2-batch"
echo ""
echo "Kill all if needed:"
echo "  pkill -f phase2-batch"