#!/bin/bash

# Simple, fast role list for /summon command - using centralized config
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROLE_CONFIG="$SCRIPT_DIR/../../claude-orchestration/role-config.yaml"

# Load role data from config and display
python3 << EOF
import yaml

with open('$ROLE_CONFIG', 'r') as f:
    config = yaml.safe_load(f)

print("Available Claude Roles:")

# Build role list from config
roles = []
for i in range(1, 7):
    role_id = f"claude-{i}"
    if role_id in config['roles']:
        role_data = config['roles'][role_id]
        nickname = role_data['nicknames']['primary']
        roles.append(f"{i}. {nickname}")

# Display in compact format
if len(roles) >= 6:
    print(f"{roles[0]}  {roles[1]}  {roles[2]}")
    print(f"{roles[3]}  {roles[4]}  {roles[5]}")
else:
    print("  ".join(roles))

print("Use '/summon [1-6]' or nickname to transform.")
EOF