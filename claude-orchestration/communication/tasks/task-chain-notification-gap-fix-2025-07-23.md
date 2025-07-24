# Claude 2 Task: Task Chain Automatic Notification System

**Task ID:** task-chain-notification-gap-fix-2025-07-23
**From:** Claude 1 (Architect/CTO)  
**To:** Claude 2 (Builder)
**Priority:** Medium
**Working Directory:** /home/stephen/Documents/initial-media-processing/claude-orchestration/tools

## Task Overview
Fix critical communication gap discovered during comedy test: When task chain phases complete and next phases become "ready", assigned Claudes are not automatically notified. This breaks the orchestration workflow and requires manual intervention.

## Problem Identified
**During comedy test validation, we discovered MULTIPLE critical gaps:**
- ❌ Specialist Claudes don't update task chain files when they complete phases
- ❌ No automatic inbox updates when phase status changes
- ❌ Status tracking breaks down after first phase
- ❌ Manual intervention required for EVERY phase transition
- ❌ Both success AND failure outcomes need automatic handling

## Implementation Requirements

### 1. CRITICAL: Make Specialist Claudes Use Task Chain Tools
**Current Problem:** Claudes complete work but don't update task chain status
**Required Fix:** 
- Task specifications must MANDATE usage of `./update-phase.sh` commands
- Include exact commands in task instructions
- Make it clear that task is NOT complete until chain is updated

### 2. Enhance update-phase.sh Script  
**When a phase is marked "complete" OR "block":**
- Check if any dependent phases become "ready" 
- Automatically update assigned Claude's inbox
- Include phase details and instructions
- Handle BOTH success and failure outcomes
- **NOTIFY STEPHEN:** When phase completes, inform Stephen who the next assigned Claude is

### 2. Automatic Notification Format
**Add to assigned Claude's inbox.log:**
```
[timestamp] [chain-system] [priority] [phase-ready] Phase Title
Previous phase completed successfully. You are now assigned: [details]
📄 Task Chain: [chain-id]
📋 Use: ./update-phase.sh [chain-id] [phase-id] start
```

### 3. Notification Logic
**When `./update-phase.sh chain-id phase-id complete` runs:**
1. Mark current phase as completed
2. Find all phases that depend on current phase
3. For each dependent phase with status "waiting":
   - Change status to "ready" 
   - Add notification to assigned Claude's inbox
   - Log the notification action
4. **Notify Stephen of next assignment:**
   - Output message: "✅ [Current Phase] complete → [Next Claude] assigned [Next Phase]"
   - Include this in console output when update-phase.sh runs

### 4. Integration Points
**Modify these files:**
- `update-phase.sh` - Add notification logic + better error handling
- `chain-status.sh` - Show notification status + phase completion requirements
- Communication system integration
- **ALL FUTURE TASK CHAIN SPECIFICATIONS** - mandate tool usage

### 5. Failure Handling Requirements
**Both success AND failure must trigger progression:**
- Success: Complete phase → notify next Claude
- Failure (3 attempts): Block phase → notify next Claude with adjusted instructions
- Timeout penalties: Track and enforce as specified
- Skip logic: Allow chain to continue even with failed phases (if specified)

## Technical Specifications

### update-phase.sh Enhancement
```bash
# After marking phase complete, check for dependent phases
notify_dependent_phases() {
    local chain_id="$1"
    local completed_phase="$2"
    
    # Find phases that depend on completed phase
    # Update their status from "waiting" to "ready"
    # Add inbox notifications for newly ready phases
    
    # Notify Stephen of progression
    local next_claude=$(get_next_assigned_claude "$chain_id" "$completed_phase")
    local next_phase=$(get_next_phase_name "$chain_id" "$completed_phase")
    
    if [[ -n "$next_claude" ]]; then
        echo "✅ $completed_phase complete → $next_claude assigned $next_phase"
    fi
}
```

### Notification Message Template
```
[$(date)] [chain-system] [medium] [phase-ready] 🔗 YOUR TURN: [Phase Name]
Previous phase "[completed_phase]" completed successfully.
YOU ARE NOW ASSIGNED: [phase description]
📄 Task Chain: [chain-id]
📋 Use: ./update-phase.sh [chain-id] [phase-id] start
```

### Status Tracking Enhancement
- Log all automatic notifications
- Track which Claudes have been notified
- Prevent duplicate notifications

## Success Criteria
- [ ] **Specialist Claudes mandated to use task chain tools** in all specifications
- [ ] When phase completes OR fails, dependent phases automatically notified
- [ ] Assigned Claude's inbox updated with clear instructions
- [ ] **Stephen notified of next Claude assignment** when phases complete
- [ ] No manual intervention required for ANY phase transitions
- [ ] Comedy test runs fully automatically through all 4 phases
- [ ] Both success and failure outcomes handled automatically
- [ ] Communication logs track all automatic notifications
- [ ] Chain completion works regardless of individual phase failures

## Testing Requirements
**Use comedy test chain to validate:**
1. Builder completes phase
2. Guardian automatically notified
3. **Stephen sees message:** "✅ Builder Comedy complete → Guardian assigned Guardian Comedy"
4. Guardian completes phase  
5. Chronicler automatically notified
6. **Stephen sees message:** "✅ Guardian Comedy complete → Chronicler assigned Chronicler Comedy"
7. Full chain progression without manual intervention
8. Stephen always informed of next Claude assignment

## Documentation Impact Assessment
**Affected Documentation:**
- [ ] `/claude-orchestration/tools/README.md` - Update notification behavior
- [ ] Task chain workflow documentation

**New Documentation Required:**
- [ ] Automatic notification behavior specification
- [ ] Troubleshooting guide for notification failures

## Context Notes
- **Discovery:** Comedy test revealed this gap in orchestration
- **Impact:** Breaks multi-role workflow automation
- **Priority:** Medium (affects all future task chains)
- **Backward compatibility:** Must work with existing chains

This fix enables true hands-off task chain progression across specialist Claude roles.