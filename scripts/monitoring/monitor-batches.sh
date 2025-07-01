#!/bin/bash

# Monitor all batch progress

while true; do
    clear
    echo "=== Phase 2 Batch Progress Monitor ==="
    echo "Updated: $(date)"
    echo ""
    
    for i in {1..8}; do
        log_file="/photos/phase2-batch-${i}.log"
        batch_file="/tmp/phase2-batches/batch-${i}.txt"
        
        echo "=== Batch ${i} ==="
        
        if [ -f "${log_file}" ]; then
            # Get total files for this batch
            if [ -f "${batch_file}" ]; then
                total_files=$(wc -l < "${batch_file}")
            else
                total_files="unknown"
            fi
            
            # Count completed files from log
            completed_files=$(grep -c "✓ Completed" "${log_file}" 2>/dev/null || echo "0")
            
            # Calculate percentage
            if [ "${total_files}" != "unknown" ] && [ "${total_files}" -gt 0 ]; then
                percentage=$(( completed_files * 100 / total_files ))
                echo "Progress: ${completed_files}/${total_files} (${percentage}%)"
            else
                echo "Progress: ${completed_files} files completed"
            fi
            
            # Show latest status
            latest_line=$(tail -1 "${log_file}" | grep -E "(Processing:|ERROR:|Completed:|Started:)" || echo "")
            if [ -n "${latest_line}" ]; then
                echo "Status: ${latest_line}"
            fi
            echo ""
        else
            echo "Not started - log file not found"
            echo ""
        fi
    done
    
    # Show running processes
    echo "=== Running Processes ==="
    ps aux | grep "phase2-batch" | grep -v grep | awk '{print "Batch " $12 ": PID " $2 " - " $8}'
    
    echo ""
    echo "Press Ctrl+C to exit monitor"
    sleep 3
done