#!/bin/bash
# Task Chain Phase Validation Tool
# Usage: ./validate-before-start.sh <chain_id> <phase_id> [claude_id]
# 
# This script validates that a phase is actually ready to start before beginning work.
# It checks dependencies, phase status, and assignment to prevent working on invalid phases.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHAINS_DIR="$(dirname "$SCRIPT_DIR")/communication/task-chains"
ACTIVE_DIR="$CHAINS_DIR/active"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

usage() {
    echo "Usage: $0 <chain_id> <phase_id> [claude_id]"
    echo ""
    echo "Validates that a phase is ready to start work."
    echo "Returns 0 if valid, 1 if not ready."
    echo ""
    echo "Examples:"
    echo "  $0 my-feature-2025-07-23 implementation"
    echo "  $0 my-feature-2025-07-23 qa_validation claude-3"
    exit 1
}

# Check arguments
if [ $# -lt 2 ]; then
    usage
fi

CHAIN_ID="$1"
PHASE_ID="$2"
CLAUDE_ID="${3:-}"  # Optional, for assignment validation

CHAIN_FILE="$ACTIVE_DIR/$CHAIN_ID.yaml"

if [ ! -f "$CHAIN_FILE" ]; then
    echo -e "${RED}❌ Error: Chain '$CHAIN_ID' not found${NC}"
    echo "Available chains:"
    ls "$ACTIVE_DIR"/*.yaml 2>/dev/null | xargs -n1 basename | sed 's/.yaml$//' || echo "No active chains found"
    exit 1
fi

echo -e "${BLUE}🔍 Validating phase '$PHASE_ID' in chain '$CHAIN_ID'${NC}"
echo ""

# Perform validation using Python
VALIDATION_RESULT=$(python3 << EOF
import yaml
import sys
import json

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
    result = {
        'valid': False,
        'reason': 'PHASE_NOT_FOUND',
        'message': f"Phase '$PHASE_ID' not found in chain",
        'available_phases': [p['phase_id'] for p in chain.get('phases', [])]
    }
    print(json.dumps(result, ensure_ascii=False))
    sys.exit(0)

# Initialize validation result
validation_errors = []
validation_warnings = []

# Check 1: Phase status
current_status = target_phase.get('status', 'unknown')
if current_status not in ['pending', 'ready']:
    if current_status == 'in_progress':
        validation_errors.append({
            'type': 'ALREADY_IN_PROGRESS',
            'message': f"Phase is already in progress (started: {target_phase.get('started', 'unknown')})"
        })
    elif current_status == 'completed':
        validation_errors.append({
            'type': 'ALREADY_COMPLETED',
            'message': f"Phase was already completed at {target_phase.get('completed', 'unknown')}",
            'evidence': target_phase.get('completion_evidence', 'No evidence recorded')
        })
    elif current_status == 'blocked':
        validation_errors.append({
            'type': 'PHASE_BLOCKED',
            'message': f"Phase is blocked: {target_phase.get('block_reason', 'No reason provided')}"
        })
    else:
        validation_errors.append({
            'type': 'INVALID_STATUS',
            'message': f"Phase has invalid status: {current_status}"
        })

# Check 2: Dependencies
dependencies = target_phase.get('depends_on', [])
if dependencies:
    incomplete_deps = []
    blocked_deps = []
    
    for dep_id in dependencies:
        dep_phase = next((p for p in chain['phases'] if p['phase_id'] == dep_id), None)
        if not dep_phase:
            incomplete_deps.append({
                'phase_id': dep_id,
                'status': 'NOT_FOUND',
                'message': 'Dependency phase not found in chain'
            })
        elif dep_phase['status'] != 'completed':
            if dep_phase['status'] == 'blocked' and target_phase.get('can_proceed_if_blocked', False):
                blocked_deps.append({
                    'phase_id': dep_id,
                    'phase_name': dep_phase.get('phase_name', dep_id),
                    'status': dep_phase['status'],
                    'reason': dep_phase.get('block_reason', 'Unknown')
                })
            else:
                incomplete_deps.append({
                    'phase_id': dep_id,
                    'phase_name': dep_phase.get('phase_name', dep_id),
                    'status': dep_phase['status'],
                    'assigned_to': dep_phase.get('assigned_to', 'Unassigned')
                })
    
    if incomplete_deps:
        validation_errors.append({
            'type': 'INCOMPLETE_DEPENDENCIES',
            'message': 'Cannot start - dependencies are not complete',
            'dependencies': incomplete_deps
        })
    
    if blocked_deps:
        validation_warnings.append({
            'type': 'BLOCKED_DEPENDENCIES',
            'message': 'Some dependencies are blocked but phase allows proceeding',
            'dependencies': blocked_deps
        })

# Check 3: Assignment (if claude_id provided)
if '$CLAUDE_ID':
    assigned_to = target_phase.get('assigned_to', '')
    if assigned_to and assigned_to != '$CLAUDE_ID':
        # Try to suggest the correct format if user provided a shorter version
        suggested_id = assigned_to
        if '$CLAUDE_ID' in assigned_to:
            # User provided partial match, suggest the full format
            validation_errors.append({
                'type': 'WRONG_ASSIGNMENT',
                'message': f"Phase is assigned to {assigned_to}, not $CLAUDE_ID",
                'suggestion': f"Try: ./validate-before-start.sh $CHAIN_ID $PHASE_ID {assigned_to}"
            })
        else:
            validation_errors.append({
                'type': 'WRONG_ASSIGNMENT', 
                'message': f"Phase is assigned to {assigned_to}, not $CLAUDE_ID",
                'suggestion': f"Use the full identifier: {assigned_to}"
            })

# Check 4: Chain-level status
if chain.get('status') == 'completed':
    validation_warnings.append({
        'type': 'CHAIN_COMPLETED',
        'message': 'The entire chain is already marked as completed'
    })

# Compile final result
if validation_errors:
    result = {
        'valid': False,
        'phase_name': target_phase.get('phase_name', target_phase['phase_id']),
        'current_status': current_status,
        'errors': validation_errors,
        'warnings': validation_warnings
    }
else:
    result = {
        'valid': True,
        'phase_name': target_phase.get('phase_name', target_phase['phase_id']),
        'current_status': current_status,
        'message': 'Phase is ready to start',
        'warnings': validation_warnings
    }

print(json.dumps(result, ensure_ascii=False))
EOF
)

# Parse and display the validation result
python3 << EOF
import json
import sys

result = json.loads('''$VALIDATION_RESULT''')

if result.get('valid'):
    print("\033[0;32m✅ VALIDATION PASSED\033[0m")
    print(f"Phase: {result['phase_name']}")
    print(f"Status: {result['current_status']}")
    print(f"\n{result['message']}")
    
    if result.get('warnings'):
        print("\n\033[1;33m⚠️  Warnings:\033[0m")
        for warning in result['warnings']:
            print(f"  - {warning['message']}")
    
    print("\n\033[0;36m📋 Next step:\033[0m")
    print(f"   ./update-phase.sh $1 $2 start")
    
    sys.exit(0)
else:
    print("\033[0;31m❌ VALIDATION FAILED\033[0m")
    print(f"Phase: {result.get('phase_name', '$2')}")
    print(f"Current Status: {result.get('current_status', 'unknown')}")
    
    print("\n\033[0;31mErrors:\033[0m")
    for error in result.get('errors', []):
        print(f"\n  ❌ {error['type']}")
        print(f"     {error['message']}")
        
        if error['type'] == 'INCOMPLETE_DEPENDENCIES':
            for dep in error.get('dependencies', []):
                print(f"     - {dep['phase_name']} is {dep['status']} (assigned to: {dep.get('assigned_to', 'unknown')})")
        elif error['type'] == 'ALREADY_COMPLETED':
            print(f"     Evidence: {error.get('evidence', 'None')}")
        elif error['type'] == 'WRONG_ASSIGNMENT':
            if 'suggestion' in error:
                print(f"     💡 {error['suggestion']}")
    
    if result.get('warnings'):
        print("\n\033[1;33m⚠️  Warnings:\033[0m")
        for warning in result['warnings']:
            print(f"  - {warning['message']}")
    
    # Provide helpful context
    if 'PHASE_NOT_FOUND' in [e['type'] for e in result.get('errors', [])]:
        print("\n\033[0;36mAvailable phases:\033[0m")
        for phase in result.get('available_phases', []):
            print(f"  - {phase}")
    
    print("\n\033[0;36m💡 Suggestions:\033[0m")
    
    error_types = [e['type'] for e in result.get('errors', [])]
    if 'INCOMPLETE_DEPENDENCIES' in error_types:
        print("  - Wait for dependencies to complete")
        print("  - Check with assigned team members")
        print("  - Run: ./chain-status.sh $1")
    elif 'ALREADY_IN_PROGRESS' in error_types:
        print("  - Phase is already being worked on")
        print("  - Check for updates: ./chain-status.sh $1")
    elif 'ALREADY_COMPLETED' in error_types:
        print("  - This phase was already finished")
        print("  - Check the completion evidence above")
        print("  - To redo: ./update-phase.sh $1 $2 reset")
    elif 'PHASE_BLOCKED' in error_types:
        print("  - Resolve the blocking issue first")
        print("  - Or check if this phase can be skipped")
    
    sys.exit(1)
EOF

exit $?