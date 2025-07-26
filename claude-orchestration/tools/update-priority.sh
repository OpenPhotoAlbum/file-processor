#!/bin/bash
# Update Priority Tool
# Usage: ./update-priority.sh <chain_id> <new_priority>
# Example: ./update-priority.sh my-task-chain CRITICAL

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHAINS_DIR="$(dirname "$SCRIPT_DIR")/communication/task-chains"
ACTIVE_DIR="$CHAINS_DIR/active"

# Colors for output
RED='\033[0;31m'
BRIGHT_RED='\033[91m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Help function
show_help() {
    echo "Update Priority Tool"
    echo
    echo "Usage: $0 <chain_id> <new_priority>"
    echo
    echo "CHAIN_ID:"
    echo "  - Full chain ID (e.g., 'universal-file-locking-system-2025-07-24')"
    echo "  - Numeric shortcut (e.g., '1', '2', '3')"
    echo
    echo "PRIORITY LEVELS:"
    echo "  CRITICAL  - Stop everything and do this now (🚨 blinking red)"
    echo "  URGENT    - High importance, immediate attention (🔥 bright red)"
    echo "  HIGH      - Important, prioritize over routine work (⚡ bright yellow)"
    echo "  MEDIUM    - Standard priority (no special indicator)"
    echo "  LOW       - Get to it when convenient (⬇️ gray)"
    echo "  TRIVIAL   - Stephen doesn't care about timing (💤 gray)"
    echo
    echo "EXAMPLES:"
    echo "  $0 1 CRITICAL                    # Set chain #1 to CRITICAL priority"
    echo "  $0 my-task-chain URGENT          # Set specific chain to URGENT"
    echo "  $0 universal-file-locking HIGH   # Partial chain ID match"
    echo
    echo "Use './chain-status.sh' to see current chains with their numeric shortcuts"
}

# Validate arguments
if [[ $# -eq 0 ]] || [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
    show_help
    exit 0
fi

if [[ $# -ne 2 ]]; then
    echo -e "${RED}Error: Wrong number of arguments${NC}"
    echo "Usage: $0 <chain_id> <new_priority>"
    echo "Use '$0 --help' for more information"
    exit 1
fi

CHAIN_ARG="$1"
NEW_PRIORITY="$2"

# Validate priority level
case "$NEW_PRIORITY" in
    CRITICAL|URGENT|HIGH|MEDIUM|LOW|TRIVIAL)
        # Valid priority
        ;;
    *)
        echo -e "${RED}Error: Invalid priority level '$NEW_PRIORITY'${NC}"
        echo "Valid priorities: CRITICAL, URGENT, HIGH, MEDIUM, LOW, TRIVIAL"
        exit 1
        ;;
esac

# Find the chain file
CHAIN_FILE=""

# Check if it's a numeric shortcut
if [[ "$CHAIN_ARG" =~ ^[0-9]+$ ]]; then
    # Get the nth chain file (sorted by name)
    CHAIN_FILES=($(ls "$ACTIVE_DIR"/*.yaml 2>/dev/null | sort))
    CHAIN_INDEX=$((CHAIN_ARG - 1))
    
    if [ $CHAIN_INDEX -ge 0 ] && [ $CHAIN_INDEX -lt ${#CHAIN_FILES[@]} ]; then
        CHAIN_FILE="${CHAIN_FILES[$CHAIN_INDEX]}"
        CHAIN_ID=$(basename "$CHAIN_FILE" .yaml)
    else
        echo -e "${RED}Error: Shortcut '$CHAIN_ARG' not found${NC}"
        echo "Available shortcuts: 1-${#CHAIN_FILES[@]}"
        echo "Use './chain-status.sh' to see all chains with shortcuts"
        exit 1
    fi
else
    # Try exact match first
    if [ -f "$ACTIVE_DIR/$CHAIN_ARG.yaml" ]; then
        CHAIN_FILE="$ACTIVE_DIR/$CHAIN_ARG.yaml"
        CHAIN_ID="$CHAIN_ARG"
    else
        # Try partial match
        MATCHES=($(ls "$ACTIVE_DIR"/*"$CHAIN_ARG"*.yaml 2>/dev/null))
        
        if [ ${#MATCHES[@]} -eq 0 ]; then
            echo -e "${RED}Error: No chains found matching '$CHAIN_ARG'${NC}"
            echo "Available chains:"
            ls "$ACTIVE_DIR"/*.yaml 2>/dev/null | xargs -n1 basename | sed 's/.yaml$//' || echo "No active chains found"
            exit 1
        elif [ ${#MATCHES[@]} -gt 1 ]; then
            echo -e "${YELLOW}Warning: Multiple chains match '$CHAIN_ARG':${NC}"
            for match in "${MATCHES[@]}"; do
                echo "  $(basename "$match" .yaml)"
            done
            echo "Please use a more specific chain ID"
            exit 1
        else
            CHAIN_FILE="${MATCHES[0]}"
            CHAIN_ID=$(basename "$CHAIN_FILE" .yaml)
        fi
    fi
fi

# Check if chain file exists
if [ ! -f "$CHAIN_FILE" ]; then
    echo -e "${RED}Error: Chain file not found: $CHAIN_FILE${NC}"
    exit 1
fi

echo -e "${BLUE}Updating priority for chain: $CHAIN_ID${NC}"
echo -e "${BLUE}New priority: $NEW_PRIORITY${NC}"

# Get current priority for comparison
CURRENT_PRIORITY=$(python3 << EOF
import yaml
with open('$CHAIN_FILE', 'r') as f:
    chain = yaml.safe_load(f)

# Get current priority - handle both new 'priority' field and legacy variables
priority = chain.get('priority', 'MEDIUM').upper()
if priority == 'MEDIUM':
    # Check if there's a priority_level in variables (legacy format)
    variables = chain.get('variables', {})
    priority_level = variables.get('priority_level', '')
    if 'Critical' in priority_level or 'CRITICAL' in priority_level:
        priority = 'CRITICAL'
    elif 'Urgent' in priority_level or 'URGENT' in priority_level:
        priority = 'URGENT'
    elif 'High' in priority_level or 'HIGH' in priority_level:
        priority = 'HIGH'
    elif 'Low' in priority_level or 'LOW' in priority_level:
        priority = 'LOW'
    elif 'Trivial' in priority_level or 'TRIVIAL' in priority_level:
        priority = 'TRIVIAL'

print(priority)
EOF
)

echo -e "${YELLOW}Current priority: $CURRENT_PRIORITY${NC}"

# Update the priority field
python3 << EOF
import yaml
import datetime

# Load chain
with open('$CHAIN_FILE', 'r') as f:
    chain = yaml.safe_load(f)

# Update priority field
chain['priority'] = '$NEW_PRIORITY'

# Update timestamp
chain['updated'] = datetime.datetime.now().isoformat()

# Write back to file
with open('$CHAIN_FILE', 'w') as f:
    yaml.dump(chain, f, default_flow_style=False, sort_keys=False)

print("Priority updated successfully")
EOF

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Priority updated successfully!${NC}"
    
    # Trigger critical notifications if priority was set to CRITICAL
    if [ "$NEW_PRIORITY" = "CRITICAL" ]; then
        echo
        echo -e "${BRIGHT_RED}🚨 CRITICAL priority detected - triggering notifications...${NC}"
        "$SCRIPT_DIR/notify-critical.sh" "$CHAIN_ID"
    else
        echo
        echo -e "${BLUE}Updated chain summary:${NC}"
        "$SCRIPT_DIR/chain-status.sh" "$CHAIN_ID"
    fi
else
    echo -e "${RED}❌ Failed to update priority${NC}"
    exit 1
fi