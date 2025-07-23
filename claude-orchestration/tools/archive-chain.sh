#!/bin/bash
# Task Chain Archive Tool
# Usage: ./archive-chain.sh <chain_id>

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHAINS_DIR="$(dirname "$SCRIPT_DIR")/communication/task-chains"
ACTIVE_DIR="$CHAINS_DIR/active"
COMPLETED_DIR="$CHAINS_DIR/completed"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

usage() {
    echo "Usage: $0 <chain_id>"
    echo ""
    echo "Archives a completed task chain, moving it from active to completed directory."
    echo "This also cleans up related inbox entries for all assigned Claudes."
    echo ""
    echo "Examples:"
    echo "  $0 my-feature-2025-07-23"
    exit 1
}

# Check arguments
if [ $# -ne 1 ]; then
    usage
fi

CHAIN_ID="$1"
CHAIN_FILE="$ACTIVE_DIR/$CHAIN_ID.yaml"
ARCHIVE_FILE="$COMPLETED_DIR/$CHAIN_ID.yaml"

if [ ! -f "$CHAIN_FILE" ]; then
    echo -e "${RED}Error: Chain '$CHAIN_ID' not found${NC}"
    echo "Available active chains:"
    ls "$ACTIVE_DIR"/*.yaml 2>/dev/null | xargs -n1 basename | sed 's/.yaml$//' || echo "No active chains found"
    exit 1
fi

# Check if chain is complete
echo -e "${BLUE}Checking chain status...${NC}"

CHAIN_STATUS=$(python3 << EOF
import yaml
with open('$CHAIN_FILE', 'r') as f:
    chain = yaml.safe_load(f)
print(chain.get('status', 'unknown'))
EOF
)

echo "Chain status: $CHAIN_STATUS"

if [ "$CHAIN_STATUS" != "completed" ]; then
    echo -e "${YELLOW}Warning: Chain is not marked as completed (status: $CHAIN_STATUS)${NC}"
    read -p "Archive anyway? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Archive cancelled."
        exit 0
    fi
fi

# Create completed directory if it doesn't exist
mkdir -p "$COMPLETED_DIR"

# Move chain to completed directory
echo -e "${BLUE}Archiving chain '$CHAIN_ID'...${NC}"
cp "$CHAIN_FILE" "$ARCHIVE_FILE"

# Add archive metadata
python3 << EOF
import yaml
from datetime import datetime

# Load archived chain
with open('$ARCHIVE_FILE', 'r') as f:
    chain = yaml.safe_load(f)

# Add archive metadata
chain['archived'] = datetime.now().isoformat()
chain['archived_from'] = 'active'

# Save updated archived chain
with open('$ARCHIVE_FILE', 'w') as f:
    yaml.dump(chain, f, default_flow_style=False, sort_keys=False)
EOF

# Clean up inbox entries for all assigned Claudes
echo -e "${BLUE}Cleaning up Claude inboxes...${NC}"

python3 << EOF
import yaml
import os
import re
from datetime import datetime

# Load chain to get assigned Claudes
with open('$ARCHIVE_FILE', 'r') as f:
    chain = yaml.safe_load(f)

# Get all assigned Claudes
assigned_claudes = set()
for phase in chain.get('phases', []):
    assigned_to = phase.get('assigned_to', '')
    if assigned_to:
        assigned_claudes.add(assigned_to)

print(f"Cleaning inboxes for: {', '.join(assigned_claudes)}")

# Clean each Claude's inbox
for claude_id in assigned_claudes:
    inbox_file = f"$CHAINS_DIR/../{claude_id}/inbox.log"
    if os.path.exists(inbox_file):
        # Read current inbox
        with open(inbox_file, 'r') as f:
            lines = f.readlines()
        
        # Filter out lines related to this chain
        filtered_lines = []
        skip_next = 0
        
        for line in lines:
            if skip_next > 0:
                skip_next -= 1
                continue
                
            # Check if line mentions this chain
            if '$CHAIN_ID' in line and '[chain-system]' in line:
                # Skip this line and potentially the next few context lines
                skip_next = 2  # Skip evidence and file path lines
                continue
            
            filtered_lines.append(line)
        
        # Write cleaned inbox
        with open(inbox_file, 'w') as f:
            f.writelines(filtered_lines)
        
        print(f"  ✅ Cleaned {claude_id}/inbox.log")

# Log archive action to chain system log
log_file = f"$CHAINS_DIR/../chain-system.log"
with open(log_file, 'a') as f:
    f.write(f"[{datetime.now().isoformat()}] [archive] Chain '{chain['id']}' archived\n")
    f.write(f"Title: {chain.get('title', 'Untitled')}\n")
    f.write(f"Phases completed: {sum(1 for p in chain['phases'] if p['status'] == 'completed')}/{len(chain['phases'])}\n")
    f.write(f"Archive location: $ARCHIVE_FILE\n\n")
EOF

# Remove from active directory
rm "$CHAIN_FILE"

echo -e "${GREEN}✅ Chain '$CHAIN_ID' archived successfully${NC}"
echo "Archive location: $ARCHIVE_FILE"
echo ""
echo "Summary:"
echo "• Chain moved from active to completed directory"
echo "• Related inbox entries cleaned up"
echo "• Archive metadata added"
echo ""
echo "To view archived chain: cat $ARCHIVE_FILE"
echo "To view all completed chains: ls $COMPLETED_DIR"