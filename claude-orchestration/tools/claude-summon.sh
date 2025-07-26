#!/bin/bash
# Claude-executable summon function for auto-cascade
# Replicates /summon command functionality for bash execution

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ORCHESTRATION_DIR="$(dirname "$SCRIPT_DIR")"
ROLE_TEMPLATES_DIR="$ORCHESTRATION_DIR/role-templates"
ROLE_CONFIG="$ORCHESTRATION_DIR/role-config.yaml"

claude_summon() {
    local summon_arg="$1"
    local context_message="$2"
    local evidence="$3"
    local chain_id="$4"
    
    # Resolve role ID from summon argument
    local role_id=$(python3 -c "
import yaml
with open('$ROLE_CONFIG', 'r') as f:
    config = yaml.safe_load(f)

global_config = config.get('global', {})
summon_mappings = global_config.get('summon_mappings', {})
role_id = summon_mappings.get('$summon_arg')

if not role_id:
    print('unknown')
else:
    print(role_id)
")

    if [ "$role_id" = "unknown" ]; then
        echo "❌ Unknown role: $summon_arg"
        return 1
    fi
    
    # Get role details
    local role_details=$(python3 -c "
import yaml
with open('$ROLE_CONFIG', 'r') as f:
    config = yaml.safe_load(f)

roles = config.get('roles', {})
role = roles.get('$role_id', {})

print('nickname=\"' + role.get('primary_nickname', 'Unknown') + '\"')
print('display_name=\"' + role.get('display_name', 'Unknown') + '\"')
print('file_suffix=\"' + role.get('file_suffix', 'unknown') + '\"')
")
    
    eval "$role_details"
    
    # Load role template
    local template_file="$ROLE_TEMPLATES_DIR/$role_id-$file_suffix.md"
    
    if [ ! -f "$template_file" ]; then
        echo "❌ Role template not found: $template_file"
        return 1
    fi
    
    echo "🔄 AUTO-CASCADE EXECUTION"
    echo "=================================="
    echo "Role: $display_name ($nickname)"
    echo "Chain: $chain_id"
    echo "Context: $context_message"
    echo "Evidence: $evidence"
    echo ""
    echo "Executing controlled identity switch to $role_id..."
    echo ""
    
    # Output the complete role initialization
    echo "# ROLE INITIALIZATION: $display_name"
    echo ""
    echo "## Auto-Cascade Context"
    echo "**Chain ID:** $chain_id"
    echo "**Previous Phase Context:** $context_message"
    echo "**Evidence from Previous Phase:** $evidence"
    echo ""
    echo "## Role Template"
    cat "$template_file"
    
    echo ""
    echo "=================================="
    echo "✅ Auto-cascade to $nickname ($role_id) completed"
    echo "✅ Role template loaded and context provided"
    echo "✅ Identity switch successful"
    
    return 0
}

# If script is called directly, execute the function
if [ "${BASH_SOURCE[0]}" == "${0}" ]; then
    claude_summon "$@"
fi