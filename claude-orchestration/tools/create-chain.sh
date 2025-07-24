#!/bin/bash
# Task Chain Creation Tool
# Usage: ./create-chain.sh <template_name> <chain_title> [variables...]

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHAINS_DIR="$(dirname "$SCRIPT_DIR")/communication/task-chains"
TEMPLATES_DIR="$CHAINS_DIR/templates"
ACTIVE_DIR="$CHAINS_DIR/active"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

usage() {
    echo "Usage: $0 <template_name> <chain_title> [variable=value...]"
    echo ""
    echo "Available templates:"
    for template in "$TEMPLATES_DIR"/*.yaml; do
        if [ -f "$template" ]; then
            basename "$template" .yaml
        fi
    done
    echo ""
    echo "Examples:"
    echo "  $0 standard-feature-implementation \"Add GPS validation\" feature_name=\"GPS Validation\" component_area=\"services\""
    echo "  $0 quality-gate-resolution \"Fix recreation.ts size\" file_name=\"recreation.ts\" quality_gate_type=\"file_size\""
    exit 1
}

# Check arguments
if [ $# -lt 2 ]; then
    usage
fi

TEMPLATE_NAME="$1"
CHAIN_TITLE="$2"
shift 2

TEMPLATE_FILE="$TEMPLATES_DIR/$TEMPLATE_NAME.yaml"
if [ ! -f "$TEMPLATE_FILE" ]; then
    echo -e "${RED}Error: Template '$TEMPLATE_NAME' not found${NC}"
    echo "Available templates:"
    ls "$TEMPLATES_DIR"/*.yaml 2>/dev/null | xargs -n1 basename | sed 's/.yaml$//' || echo "No templates found"
    exit 1
fi

# Generate unique chain ID
CHAIN_ID=$(echo "$CHAIN_TITLE" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd 'a-z0-9-')-$(date +%Y-%m-%d)
CHAIN_FILE="$ACTIVE_DIR/$CHAIN_ID.yaml"

# Check if chain already exists
if [ -f "$CHAIN_FILE" ]; then
    echo -e "${YELLOW}Warning: Chain '$CHAIN_ID' already exists${NC}"
    read -p "Overwrite? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 0
    fi
fi

echo -e "${BLUE}Creating task chain: $CHAIN_TITLE${NC}"
echo "Chain ID: $CHAIN_ID"
echo "Template: $TEMPLATE_NAME"

# Copy template and customize
cp "$TEMPLATE_FILE" "$CHAIN_FILE"

# Add chain metadata
cat > /tmp/chain_header.yaml << EOF
# Task Chain: $CHAIN_TITLE
# Generated: $(date -Iseconds)
# Template: $TEMPLATE_NAME
# Chain ID: $CHAIN_ID

id: "$CHAIN_ID"
title: "$CHAIN_TITLE"
status: "pending"
created: "$(date -Iseconds)"
updated: "$(date -Iseconds)"

EOF

# Merge header with template content, skipping template header comments
{
    cat /tmp/chain_header.yaml
    tail -n +2 "$CHAIN_FILE" | grep -v '^#'
} > /tmp/merged_chain.yaml

mv /tmp/merged_chain.yaml "$CHAIN_FILE"
rm -f /tmp/chain_header.yaml

# Auto-commit new chain creation
git add "$CHAIN_FILE" && git commit -m "orchestration: Create chain $(basename "$CHAIN_FILE" .yaml)" || true

# Apply variable substitutions
for var_assignment in "$@"; do
    if [[ "$var_assignment" =~ ^([^=]+)=(.*)$ ]]; then
        var_name="${BASH_REMATCH[1]}"
        var_value="${BASH_REMATCH[2]}"
        echo "Setting $var_name = $var_value"
        
        # Replace {{VAR_NAME}} with value in chain file
        sed -i "s/{{${var_name^^}}}/$var_value/g" "$CHAIN_FILE"
    else
        echo -e "${YELLOW}Warning: Invalid variable assignment '$var_assignment', expected format: name=value${NC}"
    fi
done

# Initialize phase timestamps and status
python3 << EOF
import yaml
import sys
from datetime import datetime

# Load the chain file
with open('$CHAIN_FILE', 'r') as f:
    chain = yaml.safe_load(f)

# Set initial phase values
if 'phases' in chain:
    for phase in chain['phases']:
        phase['started'] = None
        phase['completed'] = None
        if not phase.get('depends_on'):
            # First phase can start immediately
            phase['status'] = 'pending'
        else:
            phase['status'] = 'waiting'

# Save updated chain
with open('$CHAIN_FILE', 'w') as f:
    yaml.dump(chain, f, default_flow_style=False, sort_keys=False)
EOF

echo -e "${GREEN}✅ Task chain created successfully${NC}"
echo "File: $CHAIN_FILE"
echo ""
echo "Next steps:"
echo "1. Review chain configuration: cat $CHAIN_FILE"
echo "2. Start first phase: ./update-phase.sh $CHAIN_ID <phase_id> start"
echo "3. Check chain status: ./chain-status.sh $CHAIN_ID"