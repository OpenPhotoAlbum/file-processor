#!/bin/bash
# Task Chain Phase Update Tool
# Usage: ./update-phase.sh <chain_id> <phase_id> <action> [evidence]

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHAINS_DIR="$(dirname "$SCRIPT_DIR")/communication/task-chains"
ACTIVE_DIR="$CHAINS_DIR/active"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

usage() {
    echo "Usage: $0 <chain_id> <phase_id> <action> [evidence]"
    echo ""
    echo "Actions:"
    echo "  start     - Mark phase as in_progress"
    echo "  complete  - Mark phase as completed (requires evidence)"
    echo "  block     - Mark phase as blocked (requires reason)"
    echo "  reset     - Reset phase to pending status"
    echo ""
    echo "Examples:"
    echo "  $0 my-feature-2025-07-23 implementation start"
    echo "  $0 my-feature-2025-07-23 implementation complete \"Feature implemented, all tests pass\""
    echo "  $0 my-feature-2025-07-23 qa_validation block \"Waiting for test environment\""
    exit 1
}

# Check arguments
if [ $# -lt 3 ]; then
    usage
fi

CHAIN_ID="$1"
PHASE_ID="$2"
ACTION="$3"
EVIDENCE="$4"

CHAIN_FILE="$ACTIVE_DIR/$CHAIN_ID.yaml"

if [ ! -f "$CHAIN_FILE" ]; then
    echo -e "${RED}Error: Chain '$CHAIN_ID' not found${NC}"
    echo "Available chains:"
    ls "$ACTIVE_DIR"/*.yaml 2>/dev/null | xargs -n1 basename | sed 's/.yaml$//' || echo "No active chains found"
    exit 1
fi

echo -e "${BLUE}Updating phase '$PHASE_ID' in chain '$CHAIN_ID'${NC}"
echo "Action: $ACTION"

# Update phase using Python for YAML manipulation
python3 << EOF
import yaml
import sys
from datetime import datetime

# Load the chain file
with open('$CHAIN_FILE', 'r') as f:
    chain = yaml.safe_load(f)

# Find the target phase
target_phase = None
for phase in chain.get('phases', []):
    if phase['phase_id'] == '$PHASE_ID':
        target_phase = phase
        break

if not target_phase:
    print("Error: Phase '$PHASE_ID' not found in chain")
    available_phases = [p['phase_id'] for p in chain.get('phases', [])]
    print(f"Available phases: {', '.join(available_phases)}")
    sys.exit(1)

# Perform the action
current_time = datetime.now().isoformat()
action = '$ACTION'
evidence = '$EVIDENCE'

if action == 'start':
    if target_phase['status'] not in ['pending', 'waiting']:
        print(f"Warning: Phase is currently '{target_phase['status']}', starting anyway")
    
    target_phase['status'] = 'in_progress'
    target_phase['started'] = current_time
    print(f"✅ Phase '{target_phase['phase_name']}' started")

elif action == 'complete':
    if not evidence:
        print("Error: Completion evidence required for 'complete' action")
        sys.exit(1)
    
    target_phase['status'] = 'completed'
    target_phase['completed'] = current_time
    target_phase['completion_evidence'] = evidence
    
    # Check if we can advance dependent phases
    for phase in chain.get('phases', []):
        if '$PHASE_ID' in phase.get('depends_on', []):
            # Check if all dependencies are complete
            all_deps_complete = True
            for dep_id in phase.get('depends_on', []):
                dep_phase = next((p for p in chain['phases'] if p['phase_id'] == dep_id), None)
                if not dep_phase or dep_phase['status'] != 'completed':
                    all_deps_complete = False
                    break
            
            if all_deps_complete and phase['status'] == 'waiting':
                phase['status'] = 'pending'
                print(f"✅ Phase '{phase['phase_name']}' is now ready to start")
    
    print(f"✅ Phase '{target_phase['phase_name']}' completed")

elif action == 'block':
    if not evidence:
        print("Error: Block reason required for 'block' action")
        sys.exit(1)
    
    target_phase['status'] = 'blocked'
    target_phase['block_reason'] = evidence
    target_phase['blocked_at'] = current_time
    print(f"🚫 Phase '{target_phase['phase_name']}' blocked")

elif action == 'reset':
    target_phase['status'] = 'pending'
    target_phase['started'] = None
    target_phase['completed'] = None
    if 'completion_evidence' in target_phase:
        del target_phase['completion_evidence']
    if 'block_reason' in target_phase:
        del target_phase['block_reason']
    if 'blocked_at' in target_phase:
        del target_phase['blocked_at']
    print(f"🔄 Phase '{target_phase['phase_name']}' reset to pending")

else:
    print(f"Error: Unknown action '{action}'")
    sys.exit(1)

# Update chain-level status
completed_phases = sum(1 for p in chain['phases'] if p['status'] == 'completed')
total_phases = len(chain['phases'])
blocked_phases = sum(1 for p in chain['phases'] if p['status'] == 'blocked')

if completed_phases == total_phases:
    chain['status'] = 'completed'
elif blocked_phases > 0:
    chain['status'] = 'blocked'
elif any(p['status'] == 'in_progress' for p in chain['phases']):
    chain['status'] = 'in_progress'
else:
    chain['status'] = 'pending'

chain['updated'] = current_time

# Save updated chain
with open('$CHAIN_FILE', 'w') as f:
    yaml.dump(chain, f, default_flow_style=False, sort_keys=False)

print(f"Chain status: {chain['status']} ({completed_phases}/{total_phases} phases complete)")
EOF

# Log the update to appropriate Claude inbox if phase completed or started
if [ "$ACTION" = "complete" ] || [ "$ACTION" = "start" ]; then
    ASSIGNED_TO=$(python3 -c "
import yaml
with open('$CHAIN_FILE', 'r') as f:
    chain = yaml.safe_load(f)
for phase in chain['phases']:
    if phase['phase_id'] == '$PHASE_ID':
        print(phase.get('assigned_to', ''))
        break
")
    
    if [ -n "$ASSIGNED_TO" ]; then
        INBOX_FILE="$CHAINS_DIR/../$ASSIGNED_TO/inbox.log"
        mkdir -p "$(dirname "$INBOX_FILE")"
        echo "[$(date -Iseconds)] [chain-system] [medium] [update] Phase $ACTION: $CHAIN_ID/$PHASE_ID" >> "$INBOX_FILE"
        if [ -n "$EVIDENCE" ]; then
            echo "Evidence: $EVIDENCE" >> "$INBOX_FILE"
        fi
        echo "📄 Chain details: $CHAIN_FILE" >> "$INBOX_FILE"
        echo ""
    fi
fi

echo ""
echo "Next steps:"
echo "1. Check chain status: ./chain-status.sh $CHAIN_ID"
echo "2. View full chain: cat $CHAIN_FILE"