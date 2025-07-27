#!/bin/bash
# Task Chain Status Display Tool
# Usage: ./chain-status.sh [chain_id] [--role role_name]...
# Examples:
#   ./chain-status.sh                        # Show all chains
#   ./chain-status.sh --role claude-6        # Show only Claude 6's tasks
#   ./chain-status.sh --role 2 --role 6      # Show Builder and Data tasks
#   ./chain-status.sh --role architect       # Show only Architect's tasks
#   ./chain-status.sh template-system-doc    # Show specific chain details

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHAINS_DIR="$(dirname "$SCRIPT_DIR")/communication/task-chains"
ACTIVE_DIR="$CHAINS_DIR/active"
ROLE_CONFIG="$(dirname "$SCRIPT_DIR")/role-config.yaml"

# Parse command line arguments
CHAIN_ARG=""
ROLE_FILTERS=()
SHOW_COMPLETED=false

# Process all arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --role)
            if [[ -n "$2" ]]; then
                ROLE_FILTERS+=("$2")
                shift 2
            else
                echo "Error: --role requires an argument"
                exit 1
            fi
            ;;
        --completed)
            SHOW_COMPLETED=true
            shift
            ;;
        --help)
            echo "Usage: $0 [OPTIONS] [CHAIN_ID]"
            echo ""
            echo "Show task chain status information"
            echo ""
            echo "OPTIONS:"
            echo "  --role ROLE        Filter by role (architect, builder, guardian, chronicler, curator, data, 1-6)"
            echo "  --completed        Show completed chains (hidden by default)"
            echo "  --help            Show this help message"
            echo ""
            echo "EXAMPLES:"
            echo "  $0                    # Show all active chains"
            echo "  $0 --completed       # Show all chains including completed ones"
            echo "  $0 --role builder    # Show only Builder's tasks"
            echo "  $0 chain-id-123      # Show detailed view of specific chain"
            echo "  $0 2                 # Show detailed view using numeric shortcut"
            exit 0
            ;;
        all)
            # Support legacy 'all' syntax but it's no longer needed
            shift
            ;;
        *)
            # If not a flag, assume it's a chain ID
            if [[ -z "$CHAIN_ARG" ]]; then
                CHAIN_ARG="$1"
            fi
            shift
            ;;
    esac
done

# Convert ROLE_FILTERS array to comma-separated string for Python
ROLE_FILTER=$(IFS=,; echo "${ROLE_FILTERS[*]}")

# Pass SHOW_COMPLETED to Python as environment variable
export SHOW_COMPLETED="$SHOW_COMPLETED"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Priority color mapping
priority_color() {
    case "$1" in
        "CRITICAL") echo -e "\033[91;5m$1\033[0m" ;;  # Blinking bright red
        "URGENT") echo -e "\033[91m$1\033[0m" ;;      # Bright red
        "HIGH") echo -e "\033[93m$1\033[0m" ;;         # Bright yellow
        "MEDIUM") echo -e "\033[37m$1\033[0m" ;;       # White (default)
        "LOW") echo -e "\033[90m$1\033[0m" ;;          # Gray (dimmed)
        "TRIVIAL") echo -e "\033[90m$1\033[0m" ;;      # Gray (dimmed)
        *) echo "$1" ;;
    esac
}

# Status color mapping
status_color() {
    case "$1" in
        "completed") echo -e "${GREEN}$1${NC}" ;;
        "active") echo -e "${BLUE}$1${NC}" ;;
        "in_progress") echo -e "${BLUE}$1${NC}" ;;
        "pending") echo -e "${YELLOW}$1${NC}" ;;
        "waiting") echo -e "${CYAN}$1${NC}" ;;
        "blocked") echo -e "${RED}$1${NC}" ;;
        "failed") echo -e "${RED}$1${NC}" ;;
        *) echo "$1" ;;
    esac
}

show_chain_summary() {
    local chain_file="$1"
    local chain_id=$(basename "$chain_file" .yaml)
    
    python3 << EOF
import yaml
import sys
from datetime import datetime, timedelta

# Load chain
with open('$chain_file', 'r') as f:
    chain = yaml.safe_load(f)

# Get priority for sorting and display - handle both new 'priority' field and legacy variables
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

priority_order = {'CRITICAL': 0, 'URGENT': 1, 'HIGH': 2, 'MEDIUM': 3, 'LOW': 4, 'TRIVIAL': 5}
priority_value = priority_order.get(priority, 3)

# Calculate summary stats
total_phases = len(chain.get('phases', []))
completed = sum(1 for p in chain['phases'] if p['status'] == 'completed')
in_progress = sum(1 for p in chain['phases'] if p['status'] == 'in_progress')
blocked = sum(1 for p in chain['phases'] if p['status'] == 'blocked')
failed = sum(1 for p in chain['phases'] if p['status'] == 'failed')
ready = sum(1 for p in chain['phases'] if p['status'] == 'ready')

# Build progress summary like update-phase.sh
status_parts = []
if completed > 0:
    status_parts.append(f"{completed} completed")
if in_progress > 0:
    status_parts.append(f"{in_progress} in progress")
if ready > 0:
    status_parts.append(f"{ready} ready")
if blocked > 0:
    status_parts.append(f"{blocked} blocked")
if failed > 0:
    status_parts.append(f"{failed} failed")

progress_detail = ", ".join(status_parts) if status_parts else "no phases started"

# Create status-aware progress bar
def create_status_progress_bar(phases):
    if not phases:
        return "[░]"
    
    total_phases = len(phases)
    
    # Always use standard bracket format - one slot per phase
    bar = "["
    for phase in phases:
        status = phase.get('status', 'pending')
        if status == 'completed':
            bar += '\033[32m█\033[0m'      # Green
        elif status == 'in_progress':
            bar += '\033[34m█\033[0m'      # Blue
        elif status == 'ready':
            bar += '\033[93m█\033[0m'      # Bright Yellow
        elif status in ['blocked', 'failed']:
            bar += '\033[31m█\033[0m'      # Red
        else:
            bar += '\033[90m░\033[0m'      # Gray
    bar += "]"
    
    return bar

progress_bar = create_status_progress_bar(chain.get('phases', []))

# Determine weather icon based on chain health
def get_weather_icon(completed, in_progress, ready, blocked, failed, total):
    if total == 0:
        return "☀️"  # Sunny - no phases to worry about
    
    # Calculate percentages
    blocked_pct = (blocked / total) * 100 if total > 0 else 0
    failed_pct = (failed / total) * 100 if total > 0 else 0
    problem_pct = blocked_pct + failed_pct
    
    # Stormy weather - significant problems
    if failed > 0 or blocked_pct >= 30:
        return "⛈️"  # Thunderstorm - failures or major blockages
    
    # Cloudy weather - some problems
    elif blocked > 0 or problem_pct >= 15:
        return "☁️"  # Cloudy - some blockages
    
    # Partly sunny - minor concerns or just getting started
    elif in_progress == 0 and completed == 0:
        return "⛅"  # Partly cloudy - not started yet
    elif (completed / total) < 0.3:
        return "⛅"  # Partly cloudy - early stages
    
    # Sunny - all good
    else:
        return "☀️"  # Sunny - progressing well

weather_icon = get_weather_icon(completed, in_progress, ready, blocked, failed, total_phases)

# Find current assignee (who's "up to bat")
current_assignee = None
current_phase_name = None
for phase in chain.get('phases', []):
    if phase['status'] in ['ready', 'in_progress']:
        current_assignee = phase.get('assigned_to', 'Unassigned')
        current_phase_name = phase.get('name', phase.get('phase_name', phase.get('id', phase.get('phase_id', 'unknown'))))
        break
    elif phase['status'] == 'pending':
        # If no active phase, show who should start the first pending phase
        if current_assignee is None:
            current_assignee = phase.get('assigned_to', 'Unassigned')
            current_phase_name = phase.get('name', phase.get('phase_name', phase.get('id', phase.get('phase_id', 'unknown'))))
            break

# Color-code status
status = chain.get('status', 'unknown').upper()
if status == 'COMPLETED':
    status_colored = "\033[0;32m" + status + "\033[0m"  # Green
elif status == 'ACTIVE':
    status_colored = "\033[0;34m" + status + "\033[0m"  # Blue
elif status == 'IN_PROGRESS':
    status_colored = "\033[0;34m" + status + "\033[0m"  # Blue
elif status == 'PENDING':
    status_colored = "\033[1;33m" + status + "\033[0m"  # Yellow
elif status == 'BLOCKED':
    status_colored = "\033[0;31m" + status + "\033[0m"  # Red
elif status == 'FAILED':
    status_colored = "\033[0;31m" + status + "\033[0m"  # Red
else:
    status_colored = status

# Make title bold and bright - red for CRITICAL priority
title = chain.get('name', chain.get('title', 'Untitled Chain'))
if priority == 'CRITICAL':
    title_colored = "\033[1;91m" + title + "\033[0m"  # Bold bright red for CRITICAL
else:
    title_colored = "\033[1;37m" + title + "\033[0m"  # Bold white

# Create boxed status
status_boxed = f"[{status_colored}]"

# Add shortcut numbering based on order in active directory
import glob
import os

all_chains = sorted(glob.glob(os.path.join("$ACTIVE_DIR", "*.yaml")))
current_chain_idx = None
for i, chain_path in enumerate(all_chains, 1):
    if chain_path == '$chain_file':
        current_chain_idx = i
        break

# Priority display
def get_priority_display(priority):
    if priority == 'CRITICAL':
        return '\033[91;5m🚨CRITICAL\033[0m'  # Blinking red with icon
    elif priority == 'URGENT':
        return '\033[91m🔥URGENT\033[0m'     # Bright red with icon
    elif priority == 'HIGH':
        return '\033[93m⚡HIGH\033[0m'       # Bright yellow with icon
    elif priority == 'MEDIUM':
        return '\033[37m📋MEDIUM\033[0m'     # White with icon
    elif priority == 'LOW':
        return '\033[90m⬇️LOW\033[0m'        # Gray with icon
    elif priority == 'TRIVIAL':
        return '\033[90m💤TRIVIAL\033[0m'   # Gray with icon
    return ''

priority_display = get_priority_display(priority)

# Include shortcut in title line with priority if available
if current_chain_idx:
    shortcut_colored = f"\033[1;96m{current_chain_idx}\033[0m"  # Bold bright cyan
    if priority_display:
        print(f"{weather_icon} {shortcut_colored} {status_boxed} {progress_bar} {title_colored} {priority_display}")
    else:
        print(f"{weather_icon} {shortcut_colored} {status_boxed} {progress_bar} {title_colored}")
    print(f"   \033[90m{chain.get('id', '$chain_id')}\033[0m")
else:
    if priority_display:
        print(f"{weather_icon} {status_boxed} {progress_bar} {title_colored} {priority_display}")
    else:
        print(f"{weather_icon} {status_boxed} {progress_bar} {title_colored}")
    print(f"   {chain.get('id', '$chain_id')}")


# Format timestamps with relative time
def format_relative_time(timestamp_str):
    if timestamp_str == 'unknown':
        return 'unknown'
    
    try:
        # Parse timestamp - handle multiple formats
        if 'T' in timestamp_str:
            # ISO format: "2025-07-23T22:36:38-04:00" or "2025-07-23T22:39:30.476198"
            # Strip timezone and microseconds
            clean_timestamp = timestamp_str.split('T')[0] + ' ' + timestamp_str.split('T')[1].split('-')[0].split('.')[0]
            ts = datetime.strptime(clean_timestamp, "%Y-%m-%d %H:%M:%S")
        elif ' ' in timestamp_str:
            # Format: "2025-07-24 22:30"
            ts = datetime.strptime(timestamp_str, "%Y-%m-%d %H:%M")
        else:
            # Format: "2025-07-24-22-30"
            ts = datetime.strptime(timestamp_str, "%Y-%m-%d-%H-%M")
        
        now = datetime.now()
        diff = now - ts
        
        # Handle future timestamps (shouldn't happen but just in case)
        if diff.total_seconds() < 0:
            return timestamp_str
        
        total_seconds = diff.total_seconds()
        total_minutes = total_seconds / 60
        total_hours = total_minutes / 60
        total_days = diff.days
        
        if total_seconds < 60:
            return "just now"
        elif total_minutes < 60:
            minutes = int(total_minutes)
            return f"{minutes} min ago"
        elif total_hours < 24:
            hours = int(total_hours)
            if hours == 1:
                return "1 hour ago"
            else:
                return f"{hours} hours ago"
        elif total_days == 1:
            return f"yesterday at {ts.strftime('%I:%M%p').lower()}"
        elif total_days < 30:
            return f"{total_days} days ago"
        else:
            return ts.strftime("%m-%d-%y %I:%M%p").lower()
    except:
        return timestamp_str

created_time = format_relative_time(chain.get('created', 'unknown'))
updated_time = format_relative_time(chain.get('updated', 'unknown'))

# Make timestamps dim (using gray color)
created_dim = f"\033[90m{created_time}\033[0m"
updated_dim = f"\033[90m{updated_time}\033[0m"

print(f"   \033[90mCreated:\033[0m {created_dim}     \033[90mUpdated:\033[0m {updated_dim}")
print()
EOF
}

show_chain_summary_no_assignee() {
    local chain_file="$1"
    local chain_id=$(basename "$chain_file" .yaml)
    
    python3 << EOF
import yaml
import sys
from datetime import datetime, timedelta

# Load chain
with open('$chain_file', 'r') as f:
    chain = yaml.safe_load(f)

# Get priority for sorting and display - handle both new 'priority' field and legacy variables
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

priority_order = {'CRITICAL': 0, 'URGENT': 1, 'HIGH': 2, 'MEDIUM': 3, 'LOW': 4, 'TRIVIAL': 5}
priority_value = priority_order.get(priority, 3)

# Calculate summary stats
total_phases = len(chain.get('phases', []))
completed = sum(1 for p in chain['phases'] if p['status'] == 'completed')
in_progress = sum(1 for p in chain['phases'] if p['status'] == 'in_progress')
blocked = sum(1 for p in chain['phases'] if p['status'] == 'blocked')
failed = sum(1 for p in chain['phases'] if p['status'] == 'failed')
ready = sum(1 for p in chain['phases'] if p['status'] == 'ready')

# Build progress summary like update-phase.sh
status_parts = []
if completed > 0:
    status_parts.append(f"{completed} completed")
if in_progress > 0:
    status_parts.append(f"{in_progress} in progress")
if ready > 0:
    status_parts.append(f"{ready} ready")
if blocked > 0:
    status_parts.append(f"{blocked} blocked")
if failed > 0:
    status_parts.append(f"{failed} failed")

progress_detail = ", ".join(status_parts) if status_parts else "no phases started"

# Create status-aware progress bar
def create_status_progress_bar(phases):
    if not phases:
        return "[░]"
    
    total_phases = len(phases)
    
    # Always use standard bracket format - one slot per phase
    bar = "["
    for phase in phases:
        status = phase.get('status', 'pending')
        if status == 'completed':
            bar += '\033[32m█\033[0m'      # Green
        elif status == 'in_progress':
            bar += '\033[34m█\033[0m'      # Blue
        elif status == 'ready':
            bar += '\033[93m█\033[0m'      # Bright Yellow
        elif status in ['blocked', 'failed']:
            bar += '\033[31m█\033[0m'      # Red
        else:
            bar += '\033[90m░\033[0m'      # Gray
    bar += "]"
    
    return bar

progress_bar = create_status_progress_bar(chain.get('phases', []))

# Determine weather icon based on chain health
def get_weather_icon(completed, in_progress, ready, blocked, failed, total):
    if total == 0:
        return "☀️"  # Sunny - no phases to worry about
    
    # Calculate percentages
    blocked_pct = (blocked / total) * 100 if total > 0 else 0
    failed_pct = (failed / total) * 100 if total > 0 else 0
    problem_pct = blocked_pct + failed_pct
    
    # Stormy weather - significant problems
    if failed > 0 or blocked_pct >= 30:
        return "⛈️"  # Thunderstorm - failures or major blockages
    
    # Cloudy weather - some problems
    elif blocked > 0 or problem_pct >= 15:
        return "☁️"  # Cloudy - some blockages
    
    # Partly sunny - minor concerns or just getting started
    elif in_progress == 0 and completed == 0:
        return "⛅"  # Partly cloudy - not started yet
    elif (completed / total) < 0.3:
        return "⛅"  # Partly cloudy - early stages
    
    # Sunny - all good
    else:
        return "☀️"  # Sunny - progressing well

weather_icon = get_weather_icon(completed, in_progress, ready, blocked, failed, total_phases)

# Color-code status
status = chain.get('status', 'unknown').upper()
if status == 'COMPLETED':
    status_colored = "\033[0;32m" + status + "\033[0m"  # Green
elif status == 'ACTIVE':
    status_colored = "\033[0;34m" + status + "\033[0m"  # Blue
elif status == 'IN_PROGRESS':
    status_colored = "\033[0;34m" + status + "\033[0m"  # Blue
elif status == 'PENDING':
    status_colored = "\033[1;33m" + status + "\033[0m"  # Yellow
elif status == 'BLOCKED':
    status_colored = "\033[0;31m" + status + "\033[0m"  # Red
elif status == 'FAILED':
    status_colored = "\033[0;31m" + status + "\033[0m"  # Red
else:
    status_colored = status

# Make title bold and bright - red for CRITICAL priority
title = chain.get('name', chain.get('title', 'Untitled Chain'))
if priority == 'CRITICAL':
    title_colored = "\033[1;91m" + title + "\033[0m"  # Bold bright red for CRITICAL
else:
    title_colored = "\033[1;37m" + title + "\033[0m"  # Bold white

# Create boxed status
status_boxed = f"[{status_colored}]"

# Add shortcut numbering based on order in active directory
import glob
import os

all_chains = sorted(glob.glob(os.path.join("$ACTIVE_DIR", "*.yaml")))
current_chain_idx = None
for i, chain_path in enumerate(all_chains, 1):
    if chain_path == '$chain_file':
        current_chain_idx = i
        break

# Priority display
def get_priority_display(priority):
    if priority == 'CRITICAL':
        return '\033[91;5m🚨CRITICAL\033[0m'  # Blinking red with icon
    elif priority == 'URGENT':
        return '\033[91m🔥URGENT\033[0m'     # Bright red with icon
    elif priority == 'HIGH':
        return '\033[93m⚡HIGH\033[0m'       # Bright yellow with icon
    elif priority == 'MEDIUM':
        return '\033[37m📋MEDIUM\033[0m'     # White with icon
    elif priority == 'LOW':
        return '\033[90m⬇️LOW\033[0m'        # Gray with icon
    elif priority == 'TRIVIAL':
        return '\033[90m💤TRIVIAL\033[0m'   # Gray with icon
    return ''

priority_display = get_priority_display(priority)

# Include shortcut in title line with priority if available
if current_chain_idx:
    shortcut_colored = f"\033[1;96m{current_chain_idx}\033[0m"  # Bold bright cyan
    if priority_display:
        print(f"{weather_icon} {shortcut_colored} {status_boxed} {progress_bar} {title_colored} {priority_display}")
    else:
        print(f"{weather_icon} {shortcut_colored} {status_boxed} {progress_bar} {title_colored}")
    print(f"   \033[90m{chain.get('id', '$chain_id')}\033[0m")
else:
    if priority_display:
        print(f"{weather_icon} {status_boxed} {progress_bar} {title_colored} {priority_display}")
    else:
        print(f"{weather_icon} {status_boxed} {progress_bar} {title_colored}")
    print(f"   {chain.get('id', '$chain_id')}")

# Format timestamps with relative time
def format_relative_time(timestamp_str):
    if timestamp_str == 'unknown':
        return 'unknown'
    
    try:
        # Parse timestamp - handle multiple formats
        if 'T' in timestamp_str:
            # ISO format: "2025-07-23T22:36:38-04:00" or "2025-07-23T22:39:30.476198"
            # Strip timezone and microseconds
            clean_timestamp = timestamp_str.split('T')[0] + ' ' + timestamp_str.split('T')[1].split('-')[0].split('.')[0]
            ts = datetime.strptime(clean_timestamp, "%Y-%m-%d %H:%M:%S")
        elif ' ' in timestamp_str:
            # Format: "2025-07-24 22:30"
            ts = datetime.strptime(timestamp_str, "%Y-%m-%d %H:%M")
        else:
            # Format: "2025-07-24-22-30"
            ts = datetime.strptime(timestamp_str, "%Y-%m-%d-%H-%M")
        
        now = datetime.now()
        diff = now - ts
        
        # Handle future timestamps (shouldn't happen but just in case)
        if diff.total_seconds() < 0:
            return timestamp_str
        
        total_seconds = diff.total_seconds()
        total_minutes = total_seconds / 60
        total_hours = total_minutes / 60
        total_days = diff.days
        
        if total_seconds < 60:
            return "just now"
        elif total_minutes < 60:
            minutes = int(total_minutes)
            return f"{minutes} min ago"
        elif total_hours < 24:
            hours = int(total_hours)
            if hours == 1:
                return "1 hour ago"
            else:
                return f"{hours} hours ago"
        elif total_days == 1:
            return f"yesterday at {ts.strftime('%I:%M%p').lower()}"
        elif total_days < 30:
            return f"{total_days} days ago"
        else:
            return ts.strftime("%m-%d-%y %I:%M%p").lower()
    except:
        return timestamp_str

created_time = format_relative_time(chain.get('created', 'unknown'))
updated_time = format_relative_time(chain.get('updated', 'unknown'))

# Make timestamps dim (using gray color)
created_dim = f"\033[90m{created_time}\033[0m"
updated_dim = f"\033[90m{updated_time}\033[0m"

print(f"   \033[90mCreated:\033[0m {created_dim}     \033[90mUpdated:\033[0m {updated_dim}")
print()
EOF
}

show_chain_detail() {
    local chain_file="$1"
    local chain_id=$(basename "$chain_file" .yaml)
    
    echo -e "${PURPLE}═══════════════════════════════════════════════════════════════════════════════${NC}"
    echo
    
    python3 << EOF
import yaml
import sys
import textwrap
from datetime import datetime, timedelta

# Load chain
with open('$chain_file', 'r') as f:
    chain = yaml.safe_load(f)

# Get priority for display - handle both new 'priority' field and legacy variables
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

# Color-code status for detailed view
status = chain.get('status', 'unknown').upper()
if status == 'COMPLETED':
    status_colored = "\033[0;32m" + status + "\033[0m"  # Green
elif status == 'ACTIVE':
    status_colored = "\033[0;34m" + status + "\033[0m"  # Blue
elif status == 'IN_PROGRESS':
    status_colored = "\033[0;34m" + status + "\033[0m"  # Blue
elif status == 'PENDING':
    status_colored = "\033[1;33m" + status + "\033[0m"  # Yellow
elif status == 'BLOCKED':
    status_colored = "\033[0;31m" + status + "\033[0m"  # Red
elif status == 'FAILED':
    status_colored = "\033[0;31m" + status + "\033[0m"  # Red
else:
    status_colored = status

# Make title bold and bright for detailed view - red for CRITICAL priority
title = chain.get('name', chain.get('title', 'Untitled Chain'))
if priority == 'CRITICAL':
    title_colored = "\033[1;91m" + title + "\033[0m"  # Bold bright red for CRITICAL
else:
    title_colored = "\033[1;37m" + title + "\033[0m"  # Bold white

# Create boxed status for detailed view
status_boxed = f"[{status_colored}]"

# Calculate weather icon for overall chain health
total_phases = len(chain.get('phases', []))
completed = sum(1 for p in chain['phases'] if p['status'] == 'completed')
in_progress = sum(1 for p in chain['phases'] if p['status'] == 'in_progress')
blocked = sum(1 for p in chain['phases'] if p['status'] == 'blocked')
failed = sum(1 for p in chain['phases'] if p['status'] == 'failed')
ready = sum(1 for p in chain['phases'] if p['status'] == 'ready')

def get_weather_icon_detail(completed, in_progress, ready, blocked, failed, total):
    if total == 0:
        return "☀️"  # Sunny - no phases to worry about
    
    # Calculate percentages
    blocked_pct = (blocked / total) * 100 if total > 0 else 0
    failed_pct = (failed / total) * 100 if total > 0 else 0
    problem_pct = blocked_pct + failed_pct
    
    # Stormy weather - significant problems
    if failed > 0 or blocked_pct >= 30:
        return "⛈️"  # Thunderstorm - failures or major blockages
    
    # Cloudy weather - some problems
    elif blocked > 0 or problem_pct >= 15:
        return "☁️"  # Cloudy - some blockages
    
    # Partly sunny - minor concerns or just getting started
    elif in_progress == 0 and completed == 0:
        return "⛅"  # Partly cloudy - not started yet
    elif (completed / total) < 0.3:
        return "⛅"  # Partly cloudy - early stages
    
    # Sunny - all good
    else:
        return "☀️"  # Sunny - progressing well

weather_icon_detail = get_weather_icon_detail(completed, in_progress, ready, blocked, failed, total_phases)

# Add status dot - green for normal, red for problems
status_dot = "\033[32m●\033[0m" if failed == 0 and blocked == 0 else "\033[31m●\033[0m"

# Priority display for detailed view
def get_priority_display_detail(priority):
    if priority == 'CRITICAL':
        return '\033[91;5m🚨CRITICAL\033[0m'  # Blinking red with icon
    elif priority == 'URGENT':
        return '\033[91m🔥URGENT\033[0m'     # Bright red with icon
    elif priority == 'HIGH':
        return '\033[93m⚡HIGH\033[0m'       # Bright yellow with icon
    elif priority == 'MEDIUM':
        return '\033[37m📋MEDIUM\033[0m'     # White with icon
    elif priority == 'LOW':
        return '\033[90m⬇️LOW\033[0m'        # Gray with icon
    elif priority == 'TRIVIAL':
        return '\033[90m💤TRIVIAL\033[0m'   # Gray with icon
    return ''

priority_display_detail = get_priority_display_detail(priority)

# Print header with weather icon and status dot on the right
print(f"     {status_boxed}                                                    {status_dot} {weather_icon_detail}")
if priority_display_detail:
    print(f"     {title_colored} {priority_display_detail}")
else:
    print(f"     {title_colored}")
print()
print(f"     \033[90m{chain.get('id', '$chain_id')}\033[0m")

# Format timestamps with relative time (detailed view)
def format_relative_time_detail(timestamp_str):
    if timestamp_str == 'unknown':
        return 'unknown'
    
    try:
        # Parse timestamp - handle multiple formats
        if 'T' in timestamp_str:
            # ISO format: "2025-07-23T22:36:38-04:00" or "2025-07-23T22:39:30.476198"
            # Strip timezone and microseconds
            clean_timestamp = timestamp_str.split('T')[0] + ' ' + timestamp_str.split('T')[1].split('-')[0].split('.')[0]
            ts = datetime.strptime(clean_timestamp, "%Y-%m-%d %H:%M:%S")
        elif ' ' in timestamp_str:
            # Format: "2025-07-24 22:30"
            ts = datetime.strptime(timestamp_str, "%Y-%m-%d %H:%M")
        else:
            # Format: "2025-07-24-22-30"
            ts = datetime.strptime(timestamp_str, "%Y-%m-%d-%H-%M")
        
        now = datetime.now()
        diff = now - ts
        
        # Handle future timestamps (shouldn't happen but just in case)
        if diff.total_seconds() < 0:
            return timestamp_str
        
        total_seconds = diff.total_seconds()
        total_minutes = total_seconds / 60
        total_hours = total_minutes / 60
        total_days = diff.days
        
        if total_seconds < 60:
            return "just now"
        elif total_minutes < 60:
            minutes = int(total_minutes)
            return f"{minutes} min ago"
        elif total_hours < 24:
            hours = int(total_hours)
            if hours == 1:
                return "1 hour ago"
            else:
                return f"{hours} hours ago"
        elif total_days == 1:
            return f"yesterday at {ts.strftime('%I:%M%p').lower()}"
        elif total_days < 30:
            return f"{total_days} days ago"
        else:
            return ts.strftime("%m-%d-%y %I:%M%p").lower()
    except:
        return timestamp_str

created_time_detail = format_relative_time_detail(chain.get('created', 'unknown'))
updated_time_detail = format_relative_time_detail(chain.get('updated', 'unknown'))

# Make timestamps dim in detailed view (using gray color)
created_detail_dim = f"\033[90m{created_time_detail}\033[0m"
updated_detail_dim = f"\033[90m{updated_time_detail}\033[0m"

print(f"     \033[90mCreated:\033[0m {created_detail_dim}     \033[90mUpdated:\033[0m {updated_detail_dim}")
print()
print(f"\033[0;35m{'═' * 79}\033[0m")
print()

# Show phases
for i, phase in enumerate(chain.get('phases', []), 1):
    status = phase.get('status', 'unknown')
    phase_name = phase.get('name', phase.get('phase_name', 'Unnamed Phase'))
    assigned_to = phase.get('assigned_to', 'unassigned')
    depends_on = phase.get('depends_on', [])
    
    # Extract specialist info for consistent formatting
    specialist_key = assigned_to
    if assigned_to.startswith('claude-') and '-' in assigned_to[7:]:
        parts = assigned_to.split('-')
        if len(parts) >= 2:
            specialist_key = parts[0] + '-' + parts[1]
    
    # Load role configuration
    with open('$ROLE_CONFIG', 'r') as f:
        role_config = yaml.safe_load(f)

    # Extract role mappings from config
    nicknames = {}
    icons = {}
    for role_id, role_data in role_config['roles'].items():
        nicknames[role_id] = role_data['nicknames']['primary']
        icons[role_id] = role_data['display']['emoji']
    
    specialist = nicknames.get(specialist_key, assigned_to)
    specialist_icon = icons.get(specialist_key, '')
    
    # Format status like the overall chain status
    if status.upper() == 'COMPLETED':
        status_colored = "\033[0;32m" + status.upper() + "\033[0m"  # Green
    elif status.upper() == 'ACTIVE':
        status_colored = "\033[0;34m" + status.upper() + "\033[0m"  # Blue
    elif status.upper() == 'IN_PROGRESS':
        status_colored = "\033[0;34m" + status.upper() + "\033[0m"  # Blue
    elif status.upper() == 'PENDING':
        status_colored = "\033[1;33m" + status.upper() + "\033[0m"  # Yellow
    elif status.upper() == 'WAITING':
        status_colored = "\033[0;33m" + status.upper() + "\033[0m"  # Darker Yellow
    elif status.upper() == 'READY':
        status_colored = "\033[1;93m" + status.upper() + "\033[0m"  # Bright Yellow
    elif status.upper() == 'BLOCKED':
        status_colored = "\033[0;31m" + status.upper() + "\033[0m"  # Red
    elif status.upper() == 'FAILED':
        status_colored = "\033[0;31m" + status.upper() + "\033[0m"  # Red
    else:
        status_colored = status.upper()
    
    status_boxed = f"[{status_colored}]"
    
    # Add dim styling for waiting tasks using same gray as header
    is_waiting = status.upper() == 'WAITING'  
    dim_start = "\033[90m" if is_waiting else ""  # Same gray as header text
    dim_end = "\033[0m" if is_waiting else ""
    
    if is_waiting:
        print(f"  \033[90m{i}. {specialist_icon} {specialist} <{specialist_key}>\033[0m")
    else:
        print(f"  \033[1;96m{i}.\033[0m {specialist_icon} {specialist} \033[90m<{specialist_key}>\033[0m")
    print()
    # Format status badge with completion date if completed
    if status.upper() == 'COMPLETED' and phase.get('completed'):
        completed_time = format_relative_time_detail(phase['completed'])
        print(f"     {dim_start}{status_boxed} {completed_time} \033[1m{phase_name}\033[0m{dim_end}")
    else:
        print(f"     {dim_start}{status_boxed} \033[1m{phase_name}\033[0m{dim_end}")
    # Add description in a simple box with dependencies
    description = phase.get('description', 'No description available')
    
    # Wrap text to fit inside box (accounting for box padding)
    box_width = 65
    
    # Create box content
    box_lines = []
    
    # Add dependencies first if they exist
    if depends_on:
        # Use past tense for completed tasks
        depends_label = "Depended on:" if status.upper() == 'COMPLETED' else "Depends on:"
        depends_text = f"\033[90m{depends_label} {', '.join(depends_on)}\033[0m"
        box_lines.append(depends_text)
        box_lines.append("")  # Empty line after dependencies
    
    # Add wrapped description
    wrapped_lines = textwrap.wrap(description, width=box_width)
    box_lines.extend(wrapped_lines)
    
    # Create box with dim styling for waiting tasks
    print(f"     {dim_start}┌" + "─" * (box_width + 2) + "┐" + f"{dim_end}")
    for line in box_lines:
        # Calculate visual width (excluding ANSI color codes)
        import re
        visual_line = re.sub(r'\033\[[0-9;]*m', '', line)
        padding_needed = box_width - len(visual_line)
        padded_line = line + ' ' * max(0, padding_needed)
        print(f"     {dim_start}│{dim_end} {dim_start}{padded_line}{dim_end} {dim_start}│{dim_end}")
    print(f"     {dim_start}└" + "─" * (box_width + 2) + "┘" + f"{dim_end}")
    
    if phase.get('started'):
        print(f"     {dim_start}Started: {phase['started']}{dim_end}")
    
    # Completion date is now shown in status badge - remove separate line
    
    if phase.get('completion_evidence'):
        # Create evidence box similar to description box
        evidence_text = phase['completion_evidence']
        
        # Wrap evidence text to fit inside box
        evidence_lines = textwrap.wrap(evidence_text, width=box_width)
        
        # Create evidence box with dim styling for waiting tasks and bold white label
        evidence_label_colored = f"Evidence"
        if not is_waiting:  # Only make bold if not dimmed
            evidence_label_colored = f"\033[1;37mEvidence\033[0m"  # Bold white
        print(f"     {dim_start}┌ {evidence_label_colored} " + "─" * (box_width - 8) + "┐" + f"{dim_end}")
        for line in evidence_lines:
            # Calculate visual width (excluding ANSI color codes)
            import re
            visual_line = re.sub(r'\033\[[0-9;]*m', '', line)
            padding_needed = box_width - len(visual_line)
            padded_line = line + ' ' * max(0, padding_needed)
            print(f"     {dim_start}│{dim_end} {dim_start}{padded_line}{dim_end} {dim_start}│{dim_end}")
        print(f"     {dim_start}└" + "─" * (box_width + 2) + "┘" + f"{dim_end}")
    
    if phase.get('block_reason'):
        print(f"     {dim_start}Block reason: {phase['block_reason']}{dim_end}")
    
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
if [[ -z "$CHAIN_ARG" ]]; then
    # Show all chains (optionally filtered by role)
    echo
    
    if [ ! -d "$ACTIVE_DIR" ] || [ -z "$(ls -A "$ACTIVE_DIR"/*.yaml 2>/dev/null)" ]; then
        echo "No active task chains found."
        echo "Create a new chain with: ./create-chain.sh <template> <title>"
        exit 0
    fi
    
    # Create temporary file to process chains by assignee
    TEMP_FILE=$(mktemp)
    
    # Pass role filter to Python if provided
    export ROLE_FILTER="$ROLE_FILTER"
    
    # Group chains by assignee
    python3 << EOF > "$TEMP_FILE"
import yaml
import os
import glob
from collections import defaultdict

# Get role filters from environment (comma-separated)
role_filter_str = os.environ.get('ROLE_FILTER', '')
role_filters = [r.strip() for r in role_filter_str.split(',') if r.strip()]

# Load all chains and group by current assignee
chains_by_assignee = defaultdict(list)
chains_dir = "$ACTIVE_DIR"

for chain_file in glob.glob(os.path.join(chains_dir, "*.yaml")):
    with open(chain_file, 'r') as f:
        chain = yaml.safe_load(f)
    
    # Skip completed chains unless --completed flag is used
    show_completed = os.environ.get('SHOW_COMPLETED', 'false').lower() == 'true'
    if not show_completed and chain.get('status', '').lower() == 'completed':
        continue
    
    # Find current assignee (who's "up to bat")
    current_assignee = None
    current_phase_type = None
    
    # For completed chains, show under the assignee who completed the work
    if chain.get('status', '').lower() == 'completed':
        # Find the last completed phase to determine assignee
        for phase in reversed(chain.get('phases', [])):
            if phase['status'] == 'completed':
                current_assignee = phase.get('assigned_to', 'unassigned')
                current_phase_type = phase.get('name', phase.get('phase_name', phase.get('id', phase.get('phase_id', 'unknown'))))
                break
    else:
        # For active/pending chains, find who's currently responsible
        for phase in chain.get('phases', []):
            if phase['status'] in ['ready', 'in_progress']:
                current_assignee = phase.get('assigned_to', 'unassigned')
                current_phase_type = phase.get('name', phase.get('phase_name', phase.get('id', phase.get('phase_id', 'unknown'))))
                break
            elif phase['status'] == 'pending':
                # If no active phase, show who should start the first pending phase
                if current_assignee is None:
                    current_assignee = phase.get('assigned_to', 'unassigned')
                    current_phase_type = phase.get('name', phase.get('phase_name', phase.get('id', phase.get('phase_id', 'unknown'))))
                    break
    
    if current_assignee is None:
        current_assignee = 'unassigned'
        current_phase_type = 'unknown'
    
    # Normalize assignee (claude-6-data -> claude-6)
    normalized_assignee = current_assignee
    if current_assignee.startswith('claude-') and '-' in current_assignee[7:]:
        # Extract claude-X from claude-X-role
        parts = current_assignee.split('-')
        if len(parts) >= 2:
            normalized_assignee = parts[0] + '-' + parts[1]
    
    chains_by_assignee[normalized_assignee].append((chain_file, current_phase_type))

# Load role configuration
with open('$ROLE_CONFIG', 'r') as f:
    role_config = yaml.safe_load(f)

# Extract assignee order and role mappings from config
assignee_order = role_config['global']['assignee_order']
nicknames = {}
icons = {}

for role_id, role_data in role_config['roles'].items():
    nicknames[role_id] = role_data['nicknames']['primary']
    icons[role_id] = role_data['display']['emoji']

# Apply role filters if provided
if role_filters:
    # Use summon mappings from config for filter normalization
    filter_mapping = role_config['global']['summon_mappings']
    
    normalized_filters = []
    for role_filter in role_filters:
        normalized = filter_mapping.get(role_filter.lower(), role_filter.lower())
        if normalized in assignee_order:
            normalized_filters.append(normalized)
        else:
            print(f"Warning: Unknown role '{role_filter}'")
    
    # Filter assignee_order to only show requested roles
    assignee_order = [role for role in assignee_order if role in normalized_filters]

# Handle case where filtered roles have no tasks
if role_filters and len(assignee_order) == 0:
    print("NO_TASKS:No matching roles found or no active tasks for specified roles")
elif role_filters and all(role not in chains_by_assignee or not chains_by_assignee[role] for role in assignee_order):
    if len(assignee_order) == 1:
        role_display = nicknames.get(assignee_order[0], assignee_order[0])  
        icon = icons.get(assignee_order[0], '🎯')
        print(f"NO_TASKS:{icon} {role_display} ({assignee_order[0]}) - No active tasks")
    else:
        role_names = [nicknames.get(role, role) for role in assignee_order]
        print(f"NO_TASKS:No active tasks for: {', '.join(role_names)}")

# Output chains grouped by assignee
for assignee in assignee_order:
    if assignee in chains_by_assignee and chains_by_assignee[assignee]:
        # Get the phase type from the first chain (they should be similar for same assignee)
        _, phase_type = chains_by_assignee[assignee][0]
        
        # Create header
        if assignee in nicknames:
            nickname = nicknames[assignee]
            icon = icons.get(assignee, '🎯')
            header = f"{icon} {assignee} {nickname} ({phase_type}) Tasks"
        else:
            header = f"🎯 {assignee} Tasks"
        
        print(f"HEADER:{header}")
        
        # Sort chains by priority before displaying
        chains_with_priority = []
        for chain_file, phase_type in chains_by_assignee[assignee]:
            with open(chain_file, 'r') as f:
                chain_data = yaml.safe_load(f)
            # Get priority - handle both new 'priority' field and legacy variables
            priority = chain_data.get('priority', 'MEDIUM').upper()
            if priority == 'MEDIUM':
                variables = chain_data.get('variables', {})
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
            priority_order_value = {'CRITICAL': 0, 'URGENT': 1, 'HIGH': 2, 'MEDIUM': 3, 'LOW': 4, 'TRIVIAL': 5}
            priority_value = priority_order_value.get(priority, 3)
            chains_with_priority.append((priority_value, chain_file, phase_type))
        
        # Sort by priority (lower values = higher priority)
        chains_with_priority.sort(key=lambda x: x[0])
        
        # Show all chains for this assignee (now sorted by priority)
        for _, chain_file, _ in chains_with_priority:
            print(f"CHAIN:{chain_file}")
        
        print("SEPARATOR")
EOF

    # Process the grouped output
    while IFS= read -r line; do
        if [[ $line == NO_TASKS:* ]]; then
            message="${line#NO_TASKS:}"
            echo -e "\n${GREEN}${message}${NC}"
            echo -e "✨ All clear! Ready for new assignments.\n"
        elif [[ $line == HEADER:* ]]; then
            header="${line#HEADER:}"
            echo -e "${CYAN}${header}${NC}"
            echo -e "${CYAN}$(printf '─%.0s' $(seq 1 ${#header}))${NC}"
            echo
        elif [[ $line == CHAIN:* ]]; then
            chain_file="${line#CHAIN:}"
            show_chain_summary_no_assignee "$chain_file"
        elif [[ $line == "SEPARATOR" ]]; then
            echo
        fi
    done < "$TEMP_FILE"
    
    rm "$TEMP_FILE"
    
    echo -e "${PURPLE}═══════════════════════════════════════════════════════════════════════════════${NC}"
    echo "Use './chain-status.sh <chain_id>' for detailed view"
    echo "Available commands:"
    echo "  ./update-phase.sh <chain_id> <phase_id> start|complete|block|reset"
    echo "  ./archive-chain.sh <chain_id>"
    
else
    # Show specific chain detail
    CHAIN_ID="$CHAIN_ARG"
    
    # Check if it's a numeric shortcut
    if [[ "$CHAIN_ID" =~ ^[0-9]+$ ]]; then
        # Get the nth chain file (sorted by name)
        CHAIN_FILES=($(ls "$ACTIVE_DIR"/*.yaml 2>/dev/null | sort))
        CHAIN_INDEX=$((CHAIN_ID - 1))
        
        if [ $CHAIN_INDEX -ge 0 ] && [ $CHAIN_INDEX -lt ${#CHAIN_FILES[@]} ]; then
            CHAIN_FILE="${CHAIN_FILES[$CHAIN_INDEX]}"
        else
            echo -e "${RED}Error: Shortcut '$CHAIN_ID' not found${NC}"
            echo "Available shortcuts: 1-${#CHAIN_FILES[@]}"
            echo "Use './chain-status.sh' to see all chains with shortcuts"
            exit 1
        fi
    else
        # Use full chain ID
        CHAIN_FILE="$ACTIVE_DIR/$CHAIN_ID.yaml"
        
        if [ ! -f "$CHAIN_FILE" ]; then
            echo -e "${RED}Error: Chain '$CHAIN_ID' not found${NC}"
            echo "Available chains:"
            ls "$ACTIVE_DIR"/*.yaml 2>/dev/null | xargs -n1 basename | sed 's/.yaml$//' || echo "No active chains found"
            echo "Or use numeric shortcuts: ./chain-status.sh 1, ./chain-status.sh 2, etc."
            exit 1
        fi
    fi
    
    show_chain_detail "$CHAIN_FILE"
fi