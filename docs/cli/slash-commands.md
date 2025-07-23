# Claude Slash Commands

**Last Updated:** 2025-07-23  
**Status:** Active - `/mail`, `/summon`, and `/misunderstood` operational  
**Purpose:** Specialized commands for Claude orchestration, team coordination, and performance improvement

## Available Slash Commands

### `/mail` - Inter-Claude Communication System

**Purpose:** Enable structured communication between Claude team members for task coordination and status reporting.

**Command Syntax:**
- `/mail` or `/mail check` - Check your inbox for new messages
- `/mail status` - Report your current work status  
- `/mail send [role] [message]` - Send a message to another Claude
- `/mail all` - View comprehensive team communication status

#### Usage by Role

##### Claude 1 (Architect) Usage
```bash
# Typical morning workflow
/mail check              # Review overnight completions
/mail send builder "Implement the new GPS tagging feature per specs in /plans/mmp-gps.md"
/mail send chronicler "Document the architecture decisions from yesterday's session"
/mail status            # Report strategic planning progress
```

##### Claude 2 (Builder) Usage  
```bash
# Task acknowledgment and progress
/mail check              # See new implementation tasks
/mail status            # Report: "GPS feature 60% complete, blocked on coordinate validation"
/mail send guardian "GPS feature ready for testing in branch feature/gps-tagging"
/mail send architect "Need clarification on error handling for invalid coordinates"
```

##### Claude 3 (Guardian) Usage
```bash
# Quality assurance workflow
/mail check              # Review testing requests
/mail send builder "Found 3 edge cases in GPS validation - see test failures"
/mail status            # Report test coverage and quality metrics
/mail send chronicler "GPS feature test cases need documentation"
```

##### Claude 4 (Chronicler) Usage
```bash
# Documentation coordination
/mail check              # Review documentation requests
/mail status            # Report: "GPS feature docs 80% complete, need API examples"
/mail send builder "Need working examples for GPS tagging API"
/mail all               # Check team status before major doc updates
```

##### Claude 5 (Curator) Usage
```bash
# Operational status updates
/mail check              # Review photo processing tasks
/mail status            # Report: "Processing 2,000 photos in staging, 30% complete"
/mail send builder "Multicrop tool failing on portrait orientation photos"
/mail send architect "Staging directory approaching capacity - need archival strategy"
```

#### Message Priority Levels

**High Priority:**
- System blockers or failures
- Urgent user requests
- Critical bugs affecting data integrity

**Medium Priority:**
- Feature implementations
- Documentation updates  
- Performance improvements

**Low Priority:**
- Code cleanup
- Future planning
- Research tasks

#### Output Examples

##### Check Command Output
```markdown
📬 **Inbox Check - Claude 2 (Implementation Specialist)**

## Pending Messages
- **[2025-07-23 09:00:00]** from **Claude 1** - High - GPS Feature Implementation
  - 📄 Details: /communication/tasks/gps-feature-2025-07-23.md
  - ⏰ Status: New

## Task Summary
- **Active Tasks:** 2
- **Pending Tasks:** 1
- **Completed Today:** 3

## Next Actions
- Review GPS feature specifications
- Complete current refactoring task
- Acknowledge new GPS implementation task
```

##### Status Command Output
```markdown
📊 **Status Report - Claude 2 (Implementation Specialist)**
**Date:** 2025-07-23 14:30:00

## Current Focus
- **Primary Task:** MMP GPS Command Implementation - 60% complete
- **Secondary Tasks:** Code review for PR #142
- **Availability:** Busy

## Active Work
- 🔄 GPS coordinate validation - Testing edge cases - ETA: 2 hours
- 🔄 Error handling improvements - In progress - ETA: Tomorrow

## Blockers/Dependencies  
- Waiting on coordinate format decision from Claude 1
- Need test data from Claude 5's photo collection

## Capacity Assessment
- **Current Load:** Heavy
- **Can Accept New Tasks:** Small tasks only
- **Specialization Focus:** GPS and geolocation features
```

### `/summon` - Claude Team Initialization

**Purpose:** Initialize specialist Claudes with role-specific context and current project state.

**Command Syntax:**
- `/summon` - Display available Claudes and their status
- `/summon [1-5]` - Initialize specific Claude by number
- `/summon [role]` - Initialize by role name (architect, builder, guardian, chronicler, curator)
- `/summon all` - Generate all Claude initializations

#### Initialization Process

1. **Loads role template** from `/claude-orchestration/role-templates/claude-[X]-[role].md`
2. **Injects current context:**
   - Git status and branch information
   - Active tasks from TODO.md
   - Recent completions and blockers
   - Role-specific working directories
3. **Includes personality configuration:**
   - Behavioral patterns
   - Communication style
   - Frustration response protocols
   - Team recognition system

#### Example Usage

```bash
# Initialize the Builder for a coding session
/summon builder

# Output includes:
# - Full implementation specialist role definition
# - Current implementation tasks from TODO.md
# - Git status showing uncommitted changes
# - Active test failures needing fixes
# - Quality gates reminders
```

### `/misunderstood` - Claude Performance Feedback System

**Purpose:** Track and analyze Claude misunderstandings for systematic performance improvement.

**Command Syntax:**
- `/misunderstood` - Interactive capture of recent misunderstanding
- `/misunderstood [category]` - Quick categorized capture
- `/misunderstood report` - Show patterns and statistics
- `/misunderstood list` - View recent misunderstandings
- `/misunderstood patterns` - Detailed pattern analysis
- `/misunderstood help` - Usage guide

#### Available Categories

**Eight core misunderstanding types:**
- **wrong-action** - Did something different than requested
- **incomplete** - Partially completed task without finishing
- **overreach** - Did more than asked or exceeded scope
- **misinterpret** - Misunderstood the intent or requirements
- **wrong-role** - Claude acting outside their designated role
- **process-skip** - Skipped required processes or protocols
- **assumption** - Made incorrect assumptions without clarification
- **context-loss** - Lost important context from conversation

#### Interactive Capture Example

```bash
/misunderstood

# Output:
I'll help capture this misunderstanding for pattern analysis.

What was your original request?
> Fix the GPS tagging bug in the CLI

What did Claude do instead?
> Created a new GPS service instead of fixing the existing bug

Which Claude was involved? [1-5 or unknown]
> 2

Suggested category: wrong-action - Change? [y/n]
> y

Additional context or tags? (optional)
> CLI command, GPS feature

✅ Misunderstanding report saved successfully
```

#### Statistics Report Example

```bash
/misunderstood report

# Output:
Misunderstanding Statistics (Last 30 days)
==========================================
Total Reports: 12
Period: 2025-06-23 to 2025-07-23

By Category:
┌─────────────────┬───────┬─────────┐
│ Category        │ Count │ Percent │
├─────────────────┼───────┼─────────┤
│ wrong-action    │   5   │  41.7%  │
│ process-skip    │   3   │  25.0%  │
│ misinterpret    │   2   │  16.7%  │
│ incomplete      │   2   │  16.7%  │
└─────────────────┴───────┴─────────┘

By Claude Role:
- Claude 2 (Builder): 6 reports (50.0%)
- Claude 4 (Chronicler): 3 reports (25.0%)
- Claude 3 (Guardian): 2 reports (16.7%)
- Unspecified: 1 report (8.3%)

Most Common Pattern: Creating new files instead of editing existing ones (4 occurrences)
```

#### Integration Points

**With Orchestration System:**
- Links to communication logs for context
- References task delegation records
- Connects to role performance tracking

**Data Storage:**
- **Reports:** `/claude-orchestration/feedback/misunderstandings/`
- **Categories:** `/claude-orchestration/feedback/data/categories.json`
- **Statistics:** `/claude-orchestration/feedback/data/statistics.json`
- **Analysis:** `/claude-orchestration/feedback/reports/`

## Command Integration

### With TODO.md
Both commands check `/TODO.md` for current priorities and active work to provide context-aware responses.

### With Git Status
Commands include git information to ensure Claudes understand current code state and branch context.

### With Communication Logs
- `/mail` reads/writes to `/claude-orchestration/communication/claude-[X]/inbox.log` and `outbox.log`
- `/summon` can check communication status to inform initialization

## File Structure

### Communication Directory
```
claude-orchestration/communication/
├── claude-1/ through claude-5/
│   ├── inbox.log     # Incoming messages
│   └── outbox.log    # Sent messages
├── tasks/            # Detailed task specifications
├── messages/         # Message archive (future)
└── preservation/     # Session state backups
```

### Command Definitions
```
.claude/commands/
├── mail.md          # Mail command implementation
├── summon.md        # Summon command implementation
└── misunderstood.md # Misunderstanding tracking system
```

## Best Practices

### For `/mail` Usage
1. **Check inbox at session start** - Never miss important tasks
2. **Update status when blocked** - Keep team informed
3. **Use appropriate priority** - Don't mark everything as high
4. **Include context in messages** - Reference specific files or issues
5. **Close the loop** - Report completion when done

### For `/summon` Usage  
1. **Use for session initialization** - Start with proper context
2. **Summon appropriate role** - Match expertise to task
3. **Review generated context** - Ensure accuracy before starting
4. **Include in handoffs** - Help next Claude understand state

## Troubleshooting

### Command Not Found
Ensure you're in a project with `.claude/commands/` directory containing command definitions.

### Empty Inbox
Normal for first use or after completing all tasks. Check `/mail all` for team overview.

### Initialization Too Long
Use specific Claude number instead of role name for faster summoning.

### Communication Delays
Check both inbox and outbox logs to trace message flow.

## Related Documentation

- [Claude Orchestration System](../architecture/claude-orchestration.md) - Complete system overview
- [Role Templates](/claude-orchestration/role-templates/) - Individual role definitions
- [Task Management](/claude-orchestration/communication/tasks/) - Task file examples

---

**Note:** These commands are essential for effective multi-Claude coordination. Regular use improves team efficiency and prevents communication gaps.