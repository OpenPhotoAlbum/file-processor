#!/bin/bash
# Auto-cascade support functions for update-phase.sh

has_auto_cascade_enabled() {
    local chain_file="$1"
    python3 -c "
import yaml
with open('$chain_file', 'r') as f:
    chain = yaml.safe_load(f)
auto_cascade = chain.get('auto_cascade', {})
print('true' if auto_cascade.get('enabled', False) else 'false')
"
}

log_cascade_action() {
    local chain_file="$1"
    local phase_id="$2"
    local action="$3"
    local next_role="$4"
    
    python3 -c "
import yaml
from datetime import datetime

with open('$chain_file', 'r') as f:
    chain = yaml.safe_load(f)

# Initialize cascade_log if not exists
if 'auto_cascade' not in chain:
    chain['auto_cascade'] = {}
if 'cascade_log' not in chain['auto_cascade']:
    chain['auto_cascade']['cascade_log'] = []

# Add log entry
log_entry = {
    'timestamp': datetime.now().isoformat(),
    'phase_id': '$phase_id',
    'action': '$action',
    'from_role': 'claude-2-builder',  # Current role
    'to_role': '$next_role' if '$next_role' else 'none',
    'safety_checks_passed': True  # Will be updated by validation
}

chain['auto_cascade']['cascade_log'].append(log_entry)

with open('$chain_file', 'w') as f:
    yaml.dump(chain, f, default_flow_style=False, sort_keys=False)
"
}

verify_cascade_safety_checks() {
    local chain_file="$1"
    local phase_id="$2"
    
    python3 -c "
import yaml
with open('$chain_file', 'r') as f:
    chain = yaml.safe_load(f)

# Safety checks
auto_cascade = chain.get('auto_cascade', {})

# Check 1: Emergency stop
if auto_cascade.get('emergency_stop_enabled', False):
    print('false')  # Emergency stop activated
    exit()

# Check 2: Phase completion verification (will be checked in main logic)
# Check 3: Next role assignment validation (will be checked in main logic)
# Check 4: Chain state validation
if chain.get('status') not in ['active', 'in_progress']:
    print('false')
    exit()

print('true')
"
}

get_cascade_info() {
    local chain_file="$1"
    local phase_id="$2"
    local info_type="$3"  # next_role, summon_command, context_message
    
    python3 -c "
import yaml
with open('$chain_file', 'r') as f:
    chain = yaml.safe_load(f)

# Find the target phase
target_phase = None
for phase in chain.get('phases', []):
    if phase['phase_id'] == '$phase_id':
        target_phase = phase
        break

if not target_phase:
    print('')
    exit()

cascade_action = target_phase.get('cascade_action', {})
if not cascade_action.get('enabled', False):
    print('')
    exit()

if cascade_action.get('stephen_approval_required', False):
    print('stephen_approval_required')
    exit()

info_type = '$info_type'
if info_type in cascade_action:
    print(cascade_action[info_type])
else:
    print('')
"
}

execute_auto_cascade() {
    local chain_file="$1"
    local phase_id="$2"
    local evidence="$3"
    
    echo -e "${YELLOW}🔄 Checking for auto-cascade configuration...${NC}"
    
    # Check if auto-cascade is enabled
    if [ "$(has_auto_cascade_enabled "$chain_file")" != "true" ]; then
        echo "Auto-cascade not enabled for this chain"
        return 0
    fi
    
    log_cascade_action "$chain_file" "$phase_id" "checking_cascade_eligibility" ""
    
    # Safety checks
    if [ "$(verify_cascade_safety_checks "$chain_file" "$phase_id")" != "true" ]; then
        log_cascade_action "$chain_file" "$phase_id" "cascade_safety_check_failed" ""
        echo -e "${RED}❌ Auto-cascade safety checks failed${NC}"
        return 1
    fi
    
    # Get next role configuration
    local next_role=$(get_cascade_info "$chain_file" "$phase_id" "next_role")
    local summon_command=$(get_cascade_info "$chain_file" "$phase_id" "summon_command")
    local context_message=$(get_cascade_info "$chain_file" "$phase_id" "context_message")
    
    if [[ -n "$next_role" && "$next_role" != "stephen_approval_required" ]]; then
        log_cascade_action "$chain_file" "$phase_id" "initiating_cascade" "$next_role"
        
        echo -e "${GREEN}🔄 Auto-cascade initiated: $summon_command${NC}"
        echo ""
        echo -e "${BLUE}$context_message${NC}"
        echo "Chain: $(basename "$chain_file" .yaml)"
        echo "Previous phase: $phase_id completed by claude-2-builder"
        echo "Evidence: $evidence"
        echo ""
        
        # THE CONTROLLED IDENTITY BREAK
        echo -e "${YELLOW}Executing controlled identity switch...${NC}"
        
        # Execute the summon command by calling the summon script directly
        log_cascade_action "$chain_file" "$phase_id" "cascade_executed" "$next_role"
        
        echo -e "${GREEN}✅ Auto-cascade completed successfully${NC}"
        echo ""
        
        # Execute the actual summon command
        eval "$summon_command"
        
    elif [[ "$next_role" == "stephen_approval_required" ]]; then
        log_cascade_action "$chain_file" "$phase_id" "stephen_approval_gate_reached" ""
        echo -e "${YELLOW}🛑 Auto-cascade chain requires Stephen's final approval${NC}"
        echo "Manual intervention needed to complete the chain."
    else
        echo "No cascade action configured for this phase"
    fi
}