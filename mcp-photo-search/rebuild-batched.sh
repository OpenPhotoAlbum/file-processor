#!/bin/bash

# Photo Search MCP - Batched Rebuild Script
# Safely rebuilds the photo metadata database in chunks to prevent IDE crashes

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Configuration
PHOTOS_DIR="/photos"
BATCH_SIZE=50
MAX_FILES_PER_SESSION=1000
VENV_PYTHON="./venv/bin/python"

echo "🚀 Starting Photo Search MCP batched rebuild..."
echo "📁 Photos directory: $PHOTOS_DIR"
echo "📦 Batch size: $BATCH_SIZE files"
echo "🎯 Max files per session: $MAX_FILES_PER_SESSION"
echo ""

# Check if virtual environment exists
if [ ! -f "$VENV_PYTHON" ]; then
    echo "❌ Virtual environment not found at $VENV_PYTHON"
    echo "💡 Run: npm run mcp-photo:setup"
    exit 1
fi

# Initialize database
echo "🔧 Initializing database..."
$VENV_PYTHON claude_brain.py init

# Count total files to process
echo "🔍 Counting files to process..."
TOTAL_JSON_FILES=$(find "$PHOTOS_DIR" -name "*.json" | wc -l)
echo "📊 Found $TOTAL_JSON_FILES JSON metadata files"

if [ "$TOTAL_JSON_FILES" -eq 0 ]; then
    echo "⚠️  No JSON files found in $PHOTOS_DIR"
    exit 0
fi

# Calculate number of sessions needed
SESSIONS_NEEDED=$(( (TOTAL_JSON_FILES + MAX_FILES_PER_SESSION - 1) / MAX_FILES_PER_SESSION ))
echo "🗂️  Will process in $SESSIONS_NEEDED session(s) of max $MAX_FILES_PER_SESSION files each"
echo ""

# Process in sessions
SESSION=1
PROCESSED_FILES=0

while [ $PROCESSED_FILES -lt $TOTAL_JSON_FILES ]; do
    echo "📋 Session $SESSION/$SESSIONS_NEEDED - Processing up to $MAX_FILES_PER_SESSION files..."
    
    # Run ingestion with limits
    $VENV_PYTHON claude_brain.py ingest "$PHOTOS_DIR" \
        --batch-size $BATCH_SIZE \
        --max-files $MAX_FILES_PER_SESSION
    
    # Update counters
    PROCESSED_FILES=$((PROCESSED_FILES + MAX_FILES_PER_SESSION))
    SESSION=$((SESSION + 1))
    
    # Don't exceed total files
    if [ $PROCESSED_FILES -gt $TOTAL_JSON_FILES ]; then
        PROCESSED_FILES=$TOTAL_JSON_FILES
    fi
    
    echo "✅ Session complete. Progress: $PROCESSED_FILES/$TOTAL_JSON_FILES files"
    
    # Brief pause between sessions to prevent overwhelming the system
    if [ $PROCESSED_FILES -lt $TOTAL_JSON_FILES ]; then
        echo "⏸️  Pausing 5 seconds before next session..."
        sleep 5
    fi
    echo ""
done

echo "🎉 Batched rebuild complete!"
echo "📊 Processed $TOTAL_JSON_FILES JSON metadata files"
echo ""
echo "🧪 Testing search functionality..."
$VENV_PYTHON claude_brain.py search "photo metadata" -n 3

echo ""
echo "✅ Photo Search MCP is ready!"
echo "💡 Start the server with: npm run mcp-photo:start"