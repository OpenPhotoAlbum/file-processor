---
title: "Migration Guide: /mail to chain-status.sh"
description: Auto-generated from mail-to-chain-status-migration.md
---

# Migration Guide: /mail to chain-status.sh

**Date:** 2025-07-24  
**Status:** Complete - Migration instructions for communication system overhaul  
**Purpose:** Guide for transitioning from deprecated `/mail` commands to `chain-status.sh` task management

## Migration Overview

The Claude Orchestration System has migrated from an inbox/outbox messaging system (`/mail`) to a centralized task chain management system (`chain-status.sh`). This migration provides better visibility, systematic task tracking, and eliminates the complexity of scattered communication logs.

## Key Changes

### Command Replacements

| **Deprecated `/mail` Command** | **New `chain-status.sh` Equivalent** |
|--------------------------------|---------------------------------------|
| `/mail check` | `./chain-status.sh --role [your-role]` |
| `/mail status` | Task progress via `./update-phase.sh` |
| `/mail send [role] [message]` | Task chains with automatic notifications |
| `/mail all` | `./chain-status.sh` (shows all active chains) |

### Workflow Changes

#### Before: Inbox/Outbox System ⚠️ **DEPRECATED**
```bash
# Morning workflow - OLD
/mail check              # Check for new messages
/mail status            # Report current work status  
/mail send builder "Task for Claude 2"
```

#### After: Task Chain Management ✅ **CURRENT**
```bash
# Morning workflow - NEW
./chain-status.sh --role [your-role]     # Check assigned tasks
# Status updates happen via task chain progression
# Task assignment handled by task chain YAML files
```

## Role-Specific Migration

### Claude 1 (Architect)
**Before:**
- Used `/mail send` to delegate tasks to specialists
- Checked multiple inboxes to monitor progress
- Created task files manually

**After:**
- Creates task chain YAML files with phase assignments
- Uses `./chain-status.sh` to monitor all chains
- Automatic notifications sent when phases complete

**Migration Steps:**
1. Replace task delegation with task chain creation
2. Use chain-status.sh for comprehensive team overview
3. Update preservation checkpoints to reference task chains

### Claude 2 (Builder)
**Before:**
```bash
/mail check              # See new implementation tasks
/mail status            # Report progress
/mail send guardian "Code ready for testing"
```

**After:**
```bash
./chain-status.sh --role builder        # Check implementation assignments
./update-phase.sh [chain-id] [phase] complete --evidence "implementation complete"
# Automatic notification to next phase (Guardian)
```

### Claude 3 (Guardian)
**Before:**
```bash
/mail check              # Review testing requests
/mail send builder "Found test failures"
/mail status            # Report test coverage
```

**After:**
```bash
./chain-status.sh --role guardian       # Check quality assignments
./update-phase.sh [chain-id] [phase] complete --evidence "quality validation complete"
# Progress automatically visible in task chains
```

### Claude 4 (Chronicler)
**Before:**
```bash
/mail check              # Review documentation requests
/mail status            # Report doc progress
/mail send builder "Need API examples"
```

**After:**
```bash
./chain-status.sh --role chronicler     # Check documentation assignments
./update-phase.sh [chain-id] [phase] complete --evidence "documentation complete with examples"
# Dependencies and requirements visible in task chain
```

### Claude 5 (Curator)
**Before:**
```bash
/mail check              # Review photo processing tasks
/mail status            # Report batch progress
/mail send architect "Need archival strategy"
```

**After:**
```bash
./chain-status.sh --role curator        # Check operational assignments
./update-phase.sh [chain-id] [phase] complete --evidence "photo batch processed successfully"
# Operational requirements integrated into task chains
```

### Claude 6 (Data)
**Before:**
```bash
/mail check              # Review database tasks
/mail status            # Report schema progress
/mail send builder "Database ready"
```

**After:**
```bash
./chain-status.sh --role data           # Check database assignments
./update-phase.sh [chain-id] [phase] complete --evidence "database schema updated and tested"
# Database dependencies visible across entire task chain
```

## File Structure Changes

### Deprecated Files (No longer actively used)
```
claude-orchestration/communication/
├── claude-1/
│   ├── inbox.log       # Legacy message storage
│   └── outbox.log      # Legacy message storage
├── claude-2/ through claude-6/
│   ├── inbox.log       # Legacy message storage
│   └── outbox.log      # Legacy message storage
└── tasks/              # Individual task files (still used for reference)
```

### New Active Files
```
claude-orchestration/communication/
├── task-chains/
│   ├── active/         # Active task chain YAML files
│   └── archived/       # Completed task chains
└── tasks/              # Task detail files (referenced by chains)
```

## Startup Protocol Updates

### Before: Role Template Startup ⚠️ **DEPRECATED**
```bash
# Old startup sequence
1. ✅ Acknowledge role
2. ✅ Check inbox for pending tasks      # DEPRECATED
3. ✅ Review outbox for previous status  # DEPRECATED
4. ✅ State readiness for tasks
5. ✅ Ask for assignments if inbox empty # DEPRECATED
```

### After: Updated Startup Protocol ✅ **CURRENT**
```bash
# New startup sequence (all roles except Architect)
1. ✅ Acknowledge role and boundaries
2. ✅ Execute `./chain-status.sh --role [your-role]` to check current task assignments
3. ✅ Process and respond to task status results before proceeding
4. ✅ State readiness based on actual task assignments
5. ✅ Ask for assignments only if no active tasks found
```

## Benefits of Migration

### Improved Visibility
- **Before:** Messages scattered across 6 inbox/outbox pairs
- **After:** Centralized view of all active work via `chain-status.sh`

### Better Task Tracking
- **Before:** Manual status updates via `/mail status`
- **After:** Automatic progress tracking through task chain phases

### Reduced Complexity
- **Before:** Complex message formats and manual acknowledgments
- **After:** Simple role filters and automatic notifications

### Enhanced Dependencies
- **Before:** Implicit task dependencies via messages
- **After:** Explicit phase dependencies visible in task chains

### Systematic Organization
- **Before:** Ad-hoc task files and communication logs
- **After:** Structured YAML task chains with evidence requirements

## Troubleshooting Migration Issues

### "I don't see my role in chain-status.sh"
**Solution:** Check available roles with:
```bash
./chain-status.sh --help
# Supported roles: architect, builder, guardian, chronicler, curator, data
# Also supports: 1-6, qa, docs, photo, mysql, etc.
```

### "My startup protocol still references /mail"
**Solution:** Your role template needs updating. Check that startup checklist uses:
```bash
./chain-status.sh --role [your-role]  # Not /mail check
```

### "I can't find my assigned tasks"
**Solution:** 
1. Use your correct role filter: `./chain-status.sh --role [your-role]`
2. Check if you have tasks assigned: look for [ACTIVE] or [READY] phases
3. Verify chain details: `./chain-status.sh [chain-id]` for specific chains

### "How do I report progress?"
**Solution:** Use the update-phase.sh script:
```bash
./update-phase.sh [chain-id] [phase-name] complete --evidence "what you completed"
```

### "Legacy inbox files still exist"
**Note:** Inbox/outbox files are preserved for historical reference but are no longer actively used. Focus on task chains for current work.

## Rollback Considerations

**This migration is permanent.** The `/mail` command infrastructure has been replaced with task chains for architectural reasons:
- Better dependency tracking
- Reduced file system complexity  
- Improved visibility across the team
- More reliable state management

If needed, historical communication can be found in the preserved inbox/outbox logs, but new work should use the task chain system.

## Verification Steps

After migrating, verify your setup:

1. **Test role filter:**
   ```bash
   ./chain-status.sh --role [your-role]
   # Should show your assigned tasks
   ```

2. **Check startup protocol:**
   - Your role template should reference `chain-status.sh`, not `/mail check`
   - Startup sequence should process task status results

3. **Verify task visibility:**
   - Active tasks show as [ACTIVE] or [READY]
   - Completed tasks show as [COMPLETED]
   - Dependencies are visible between phases

4. **Test progress updates:**
   ```bash
   ./update-phase.sh --help
   # Should show available actions: start, complete, block, reset
   ```

## Support

For migration support or issues:
- Check role template documentation in `/claude-orchestration/role-templates/`
- Review task chain examples in `/claude-orchestration/communication/task-chains/active/`
- Test commands with `--help` flag for usage guidance

## Conclusion

The migration from `/mail` to `chain-status.sh` provides a more robust, visible, and systematic approach to task management in the Claude Orchestration System. While the learning curve is minimal, the benefits in terms of visibility, tracking, and coordination are substantial.

**Key Success Metric:** All Claudes can see their assigned work using `./chain-status.sh --role [their-role]` and can update progress using `./update-phase.sh`.