# Task Chain Management Tools

**Version:** 1.0  
**Created:** 2025-07-23  
**Purpose:** Multi-role workflow orchestration for Claude team coordination

## Overview

The Task Chain Architecture solves the critical issue where logical tasks spanning multiple specialists (Builder → Guardian → Chronicler) were tracked as disconnected tasks, causing completion confusion and duplicate work.

## Quick Start

```bash
# Create a new chain from template
./create-chain.sh standard-feature-implementation "Add GPS validation" feature_name="GPS_Validation"

# Update phase status
./update-phase.sh my-chain-2025-07-23 implementation complete "Feature implemented successfully"

# Check chain status
./chain-status.sh my-chain-2025-07-23

# View all active chains
./chain-status.sh all

# Archive completed chain
./archive-chain.sh my-chain-2025-07-23
```

## Tools Reference

### 1. create-chain.sh
**Purpose:** Create new task chains from templates  
**Usage:** `./create-chain.sh <template_name> <chain_title> [variable=value...]`

**Available Templates:**
- `standard-feature-implementation` - Implementation → QA → Documentation
- `quality-gate-resolution` - Refactoring → QA → Compliance → Documentation
- `research-driven-development` - Research → Planning → Implementation → QA

**Examples:**
```bash
# Standard feature development
./create-chain.sh standard-feature-implementation "Add MMP dates command" \
  feature_name="MMP_Dates" component_area="CLI"

# Quality gate resolution
./create-chain.sh quality-gate-resolution "Fix large file" \
  file_name="large-file.ts" quality_gate_type="file_size"

# Research project
./create-chain.sh research-driven-development "CompreFace integration" \
  research_topic="Face_Recognition" complexity_level="HIGH"
```

### 2. update-phase.sh
**Purpose:** Update phase status with evidence tracking  
**Usage:** `./update-phase.sh <chain_id> <phase_id> <action> [evidence]`

**Actions:**
- `start` - Mark phase as in_progress
- `complete` - Mark completed (requires evidence)
- `block` - Mark blocked (requires reason)
- `reset` - Reset to pending

**Examples:**
```bash
# Start working on a phase
./update-phase.sh my-chain-2025-07-23 implementation start

# Complete with evidence
./update-phase.sh my-chain-2025-07-23 implementation complete "All tests pass, feature working"

# Block with reason
./update-phase.sh my-chain-2025-07-23 qa_validation block "Waiting for test environment"
```

### 3. chain-status.sh
**Purpose:** Display chain status and progress  
**Usage:** `./chain-status.sh [chain_id|all]`

**Output Modes:**
- `./chain-status.sh all` - Summary of all active chains
- `./chain-status.sh <chain_id>` - Detailed view of specific chain

**Status Icons:**
- ✅ `completed` - Phase finished successfully
- 🔄 `in_progress` - Currently being worked on
- ⏳ `pending` - Ready to start
- ⏸️ `waiting` - Waiting for dependencies
- 🚫 `blocked` - Blocked with reason

### 4. archive-chain.sh
**Purpose:** Archive completed chains and clean up inboxes  
**Usage:** `./archive-chain.sh <chain_id>`

**What it does:**
- Moves chain from `active/` to `completed/`
- Adds archive metadata
- Cleans up related inbox entries
- Logs archive action

## File Structure

```
claude-orchestration/communication/task-chains/
├── active/              # Currently active chains
│   └── *.yaml          # Active chain files
├── completed/           # Archived completed chains
│   └── *.yaml          # Completed chain files
├── templates/           # Chain templates
│   ├── standard-feature-implementation.yaml
│   ├── quality-gate-resolution.yaml
│   └── research-driven-development.yaml
└── tools/               # Management tools
    ├── create-chain.sh
    ├── update-phase.sh
    ├── chain-status.sh
    └── archive-chain.sh
```

## Chain YAML Structure

### Basic Chain Format
```yaml
id: "unique-chain-identifier"
title: "Human-readable task description"
status: "pending|in_progress|completed|blocked"
created: "2025-07-23T15:30:00-04:00"
updated: "2025-07-23T16:45:00-04:00"

phases:
  - phase_id: "implementation"
    phase_name: "Implementation Phase"
    assigned_to: "claude-2"
    status: "completed"
    depends_on: []
    completion_evidence: "Feature implemented, tests pass"
    estimated_duration: "2-4 hours"
    started: "2025-07-23T15:30:00-04:00"
    completed: "2025-07-23T16:30:00-04:00"

success_criteria:
  - "Feature fully implemented"
  - "All tests pass"
  - "Documentation updated"
```

## Integration with Communication System

### Automatic Inbox Updates
When phases are completed or started, the system automatically:
- Updates assigned Claude's inbox with chain progress
- Includes completion evidence
- Provides chain file reference
- Notifies next phase assignee when ready

### Inbox Entry Format
```
[timestamp] [chain-system] [medium] [update] Phase complete: chain-id/phase-id
Evidence: User-provided completion evidence
📄 Chain details: /path/to/chain.yaml
```

### Chain-Aware Communication
All communication tools recognize chain references:
- Chain IDs in messages create automatic links
- Phase completions trigger dependency checks
- Archive process cleans up all related entries

## Workflow Templates

### Standard Feature Implementation
**Use Case:** Regular feature development  
**Phases:** Implementation → QA → Documentation  
**Duration:** 4-7 hours typical  
**Variables:** `feature_name`, `component_area`, `priority_level`

### Quality Gate Resolution
**Use Case:** Fixing compliance issues  
**Phases:** Refactoring → QA → Compliance → Documentation  
**Duration:** 3-6 hours typical  
**Variables:** `file_name`, `quality_gate_type`, `target_metric`

### Research Driven Development
**Use Case:** Complex new features requiring research  
**Phases:** Research → Planning → Implementation → QA  
**Duration:** 8-12 hours typical  
**Variables:** `research_topic`, `complexity_level`, `stakeholder`

## Best Practices

### Chain Creation
1. **Choose appropriate template** - Match workflow to task complexity
2. **Provide meaningful title** - Clear description of end goal
3. **Set relevant variables** - Customize template for specific task
4. **Define success criteria** - Clear completion requirements

### Phase Management
1. **Start phases explicitly** - Don't assume work has begun
2. **Provide detailed evidence** - Specific completion proof required
3. **Block with clear reasons** - Help others understand blockers
4. **Complete only when done** - Partial completion confuses workflow

### Communication Integration
1. **Reference chain IDs** - Use chain IDs in all related communication
2. **Update status promptly** - Keep chain status current
3. **Document decisions** - Record important choices in evidence
4. **Archive when complete** - Keep active list clean

## Migration from Single Tasks

### Existing Task Conversion
The system can migrate existing multi-role tasks to chains:

```bash
# Convert existing recreation.ts refactoring task
./create-chain.sh quality-gate-resolution "Recreation.ts Refactoring QA Validation" \
  file_name="recreation.ts" quality_gate_type="file_size"

# Mark already-completed phases
./update-phase.sh recreationts-refactoring-qa-validation-2025-07-23 \
  refactoring_implementation complete "File reduced from 562 to 456 lines"
```

### Backward Compatibility
- Single tasks continue to work alongside chains
- Gradual migration path available
- No disruption to existing workflows

## Troubleshooting

### Common Issues

**Chain creation fails:**
- Check template name spelling
- Verify templates directory exists
- Ensure YAML syntax in templates

**Phase updates fail:**
- Verify chain ID exists
- Check phase ID spelling
- Provide evidence for completion/blocking

**Archive fails:**
- Confirm chain is in active directory
- Check file permissions
- Verify Python YAML library available

### Error Messages

**"Template not found":** Check available templates with `ls templates/`  
**"Chain not found":** Use `./chain-status.sh all` to see active chains  
**"Phase not found":** Use `./chain-status.sh <chain_id>` to see phases  

## Success Metrics

### Operational Improvements
- ✅ No duplicate work on completed phases
- ✅ Clear visibility into multi-role task progress  
- ✅ Automatic phase assignment eliminates manual coordination
- ✅ Completion evidence prevents premature phase closure

### Technical Implementation
- ✅ Task chain YAML files created and managed
- ✅ Command-line tools operational
- ✅ Integration with existing communication system
- ✅ Templates enable rapid chain creation

The Task Chain Architecture makes multi-role coordination the standard orchestration behavior, solving fundamental task lifecycle management issues.