# Task Chain Required Fields Reference

## CRITICAL: Tools Will Fail Without These Fields

When creating task chains, you MUST include these fields or the orchestration tools will display errors like "unknown", "Untitled Chain", etc.

### Top-Level Required Fields

```yaml
# Chain identification
id: chain-name-YYYY-MM-DD              # REQUIRED: Chain identifier (matches filename without .yaml)
title: Chain Display Name               # REQUIRED: Display name shown in status (NOT chain_name!)
status: pending                         # REQUIRED: pending|active|in_progress|completed|blocked|failed

# Timestamps (ISO format with timezone)
created: '2025-08-05T13:45:00-04:00'   # REQUIRED: Creation timestamp
updated: '2025-08-05T13:45:00-04:00'   # REQUIRED: Last update timestamp

# Priority
priority: MEDIUM                        # REQUIRED: CRITICAL|URGENT|HIGH|MEDIUM|LOW|TRIVIAL

# Phases array
phases:                                 # REQUIRED: Array of phase objects
  - phase_id: implementation
    # ... phase details
```

### Phase-Level Required Fields

Each phase in the `phases` array must include:

```yaml
- phase_id: unique_phase_id            # REQUIRED: Unique identifier for phase
  phase_name: Human Readable Name      # REQUIRED: Display name for phase
  assigned_to: claude-2                # REQUIRED: claude-1 through claude-6
  status: pending                      # REQUIRED: pending|ready|in_progress|completed|blocked|failed
  depends_on: []                       # REQUIRED: Array of phase_ids (can be empty)
  description: What this phase does    # REQUIRED: Phase description
```

## Important Optional Fields

These fields are used by tools but have sensible defaults:

```yaml
# Chain metadata
created_by: claude-1                   # Who created the chain
description: Detailed description      # Chain description (shown in status)
success_criteria:                      # Array of success criteria (shown in detailed view)
  - First success criterion
  - Second success criterion

# Additional context
context:                               # Contextual information
  trigger: What triggered this chain
  requirements: What needs to be done
  constraints: Any limitations

# Technical details
technical_specifications:              # Technical implementation details
  key: value
```

## Common Mistakes to Avoid

1. **Using `chain_name` instead of `title`** - Tools expect `title`
2. **Missing `status` field** - Results in "UNKNOWN" status display
3. **Using `created_date` instead of `created`** - Tools expect ISO timestamp in `created`
4. **Missing `id` field** - Some tools use this in addition to filename
5. **Incorrect timestamp format** - Use ISO format with timezone

## Complete Minimal Example

```yaml
id: example-task-2025-08-05
title: Example Task Implementation
status: pending
created: '2025-08-05T14:00:00-04:00'
updated: '2025-08-05T14:00:00-04:00'
priority: MEDIUM
description: Implement example functionality
success_criteria:
  - Feature works end-to-end
  - Tests pass
phases:
  - phase_id: implementation
    phase_name: Build Feature
    assigned_to: claude-2
    status: pending
    depends_on: []
    description: Implement the core feature
```

## Validation Checklist

Before creating a task chain, verify:
- [ ] `id` field matches filename (without .yaml)
- [ ] `title` field present (NOT `chain_name`)
- [ ] `status` field present at top level
- [ ] `created` and `updated` in ISO format
- [ ] `priority` field with valid value
- [ ] All phases have required fields
- [ ] All phase `assigned_to` values are valid (claude-1 through claude-6)