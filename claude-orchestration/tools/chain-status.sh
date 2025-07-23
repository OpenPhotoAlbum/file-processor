#!/bin/bash
# Task Chain Status Display Tool
# Usage: ./chain-status.sh [chain_id|all]

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHAINS_DIR="$(dirname "$SCRIPT_DIR")/communication/task-chains"
ACTIVE_DIR="$CHAINS_DIR/active"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Status color mapping
status_color() {
    case "$1" in
        "completed") echo -e "${GREEN}$1${NC}" ;;
        "in_progress") echo -e "${BLUE}$1${NC}" ;;
        "pending") echo -e "${YELLOW}$1${NC}" ;;
        "waiting") echo -e "${CYAN}$1${NC}" ;;
        "blocked") echo -e "${RED}$1${NC}" ;;
        *) echo "$1" ;;
    esac
}

show_chain_summary() {
    local chain_file="$1"
    local chain_id=$(basename "$chain_file" .yaml)
    
    python3 << EOF
import yaml
import sys
from datetime import datetime

# Load chain
with open('$chain_file', 'r') as f:
    chain = yaml.safe_load(f)

# Calculate summary stats
total_phases = len(chain.get('phases', []))
completed = sum(1 for p in chain['phases'] if p['status'] == 'completed')
in_progress = sum(1 for p in chain['phases'] if p['status'] == 'in_progress')
blocked = sum(1 for p in chain['phases'] if p['status'] == 'blocked')

print(f"📋 {chain.get('title', 'Untitled Chain')}")
print(f"   ID: {chain.get('id', '$chain_id')}")
print(f"   Status: {chain.get('status', 'unknown')}")
print(f"   Progress: {completed}/{total_phases} phases complete")
if in_progress > 0:
    print(f"   Active: {in_progress} phase(s) in progress")
if blocked > 0:
    print(f"   Blocked: {blocked} phase(s) blocked")
print(f"   Created: {chain.get('created', 'unknown')}")
print(f"   Updated: {chain.get('updated', 'unknown')}")
print()
EOF
}

show_chain_detail() {
    local chain_file="$1"
    local chain_id=$(basename "$chain_file" .yaml)
    
    echo -e "${PURPLE}═══════════════════════════════════════════════════════════════════════════════${NC}"
    
    python3 << EOF
import yaml
import sys
from datetime import datetime

# Load chain
with open('$chain_file', 'r') as f:
    chain = yaml.safe_load(f)

print(f"📋 {chain.get('title', 'Untitled Chain')}")
print(f"   ID: {chain.get('id', '$chain_id')}")
print(f"   Status: {chain.get('status', 'unknown')}")
print(f"   Created: {chain.get('created', 'unknown')}")
print(f"   Updated: {chain.get('updated', 'unknown')}")
print()

# Show phases
print("📊 PHASES:")
for i, phase in enumerate(chain.get('phases', []), 1):
    status = phase.get('status', 'unknown')
    phase_name = phase.get('phase_name', 'Unnamed Phase')
    assigned_to = phase.get('assigned_to', 'unassigned')
    depends_on = phase.get('depends_on', [])
    
    # Status icon
    status_icon = {
        'completed': '✅',
        'in_progress': '🔄', 
        'pending': '⏳',
        'waiting': '⏸️',
        'blocked': '🚫'
    }.get(status, '❓')
    
    print(f"  {i}. {status_icon} {phase_name}")
    print(f"     Status: {status}")
    print(f"     Assigned: {assigned_to}")
    
    if depends_on:
        print(f"     Depends on: {', '.join(depends_on)}")
    
    if phase.get('started'):
        print(f"     Started: {phase['started']}")
    
    if phase.get('completed'):
        print(f"     Completed: {phase['completed']}")
    
    if phase.get('completion_evidence'):
        print(f"     Evidence: {phase['completion_evidence']}")
    
    if phase.get('block_reason'):
        print(f"     Block reason: {phase['block_reason']}")
    
    if phase.get('estimated_duration'):
        print(f"     Estimated duration: {phase['estimated_duration']}")
    
    print()

# Show success criteria if defined
if 'success_criteria' in chain:
    print("🎯 SUCCESS CRITERIA:")
    for criterion in chain['success_criteria']:
        print(f"   • {criterion}")
    print()
EOF
    
    echo -e "${PURPLE}═══════════════════════════════════════════════════════════════════════════════${NC}"
    echo
}

# Main execution
if [ $# -eq 0 ] || [ "$1" = "all" ]; then
    echo -e "${BLUE}📊 All Active Task Chains${NC}"
    echo -e "${PURPLE}═══════════════════════════════════════════════════════════════════════════════${NC}"
    echo
    
    if [ ! -d "$ACTIVE_DIR" ] || [ -z "$(ls -A "$ACTIVE_DIR"/*.yaml 2>/dev/null)" ]; then
        echo "No active task chains found."
        echo "Create a new chain with: ./create-chain.sh <template> <title>"
        exit 0
    fi
    
    for chain_file in "$ACTIVE_DIR"/*.yaml; do
        if [ -f "$chain_file" ]; then
            show_chain_summary "$chain_file"
        fi
    done
    
    echo -e "${PURPLE}═══════════════════════════════════════════════════════════════════════════════${NC}"
    echo "Use './chain-status.sh <chain_id>' for detailed view"
    echo "Available commands:"
    echo "  ./update-phase.sh <chain_id> <phase_id> start|complete|block|reset"
    echo "  ./archive-chain.sh <chain_id>"
    
else
    CHAIN_ID="$1"
    CHAIN_FILE="$ACTIVE_DIR/$CHAIN_ID.yaml"
    
    if [ ! -f "$CHAIN_FILE" ]; then
        echo -e "${RED}Error: Chain '$CHAIN_ID' not found${NC}"
        echo "Available chains:"
        ls "$ACTIVE_DIR"/*.yaml 2>/dev/null | xargs -n1 basename | sed 's/.yaml$//' || echo "No active chains found"
        exit 1
    fi
    
    show_chain_detail "$CHAIN_FILE"
fi