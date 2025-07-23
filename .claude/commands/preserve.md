# /preserve - Context Preservation System

**Usage:** `/preserve [critical|checkpoint|handoff]`

You are Claude 1 and the user has triggered preservation mode. Immediately execute the following preservation protocol based on the argument provided.

## Preservation Protocol

### Step 1: Acknowledge Preservation Mode
Respond with:
```
🔄 PRESERVATION MODE ACTIVATED: [ARG]
Capturing current session state...
```

### Step 2: Determine Preservation Type

#### `/preserve critical`
**Use case:** Emergency preservation during breakthrough moments or before context overflow
**Content depth:** Maximum - capture everything important

#### `/preserve checkpoint` 
**Use case:** Regular checkpoint during long investigations
**Content depth:** Medium - key progress and decisions

#### `/preserve handoff`
**Use case:** Preparing to delegate tasks to specialist Claudes
**Content depth:** Focused - specialist context and task details

### Step 3: Create Preservation Files

Generate timestamp: `YYYY-MM-DD-HH-MM` and create files in `/claude-orchestration/communication/preservation/`

#### A. Main Session Summary: `[timestamp]-[type].md`
```markdown
# Claude 1 Session Preservation: [TYPE]
**Date:** [timestamp]
**Preservation Type:** [critical/checkpoint/handoff]
**Session Duration:** [estimate]
**Token Intensity:** [high/medium/low based on tool usage]

## Session Overview
[2-3 sentence summary of what we were working on]

## Current Context
**Primary Focus:** [what we're investigating/building]
**Current State:** [where we are in the process]
**Next Critical Step:** [what should happen next]

## Key Architectural Decisions Made
[List major technical decisions with brief rationale]
- Decision 1: [what was decided and why]
- Decision 2: [what was decided and why]

## Breakthrough Insights
[Critical discoveries or realizations from this session]
- Insight 1: [discovery and its implications]
- Insight 2: [discovery and its implications]

## Stephen's Preferences Expressed
[Specific preferences or feedback Stephen gave this session]
- Preference 1: [what Stephen indicated he wants/doesn't want]
- Preference 2: [communication style or approach preferences]

## Investigation Path
**What we tried:** [approaches attempted]
**What worked:** [successful strategies]
**What didn't work:** [dead ends and why they failed]
**Current theory:** [our best understanding of the problem/solution]

## Technical Context
**Files modified:** [list key files changed]
**Tools used:** [major tool usage this session]
**Commands run:** [significant commands executed]
**Errors encountered:** [problems we solved or are still facing]

## Delegation Context
[If tasks were delegated to other Claudes]
**Tasks sent:** [list outbox entries created]
**Specialist status:** [what we know about their progress]
**Coordination needs:** [anything requiring follow-up]

## Continuation Instructions
**Immediate next steps:** [what the next Claude 1 should do first]
**Success criteria:** [how to know if we're on the right track]
**Potential blockers:** [what might go wrong]
**Key questions:** [unresolved questions that need attention]
```

#### B. Quick Reference: `[timestamp]-quick-ref.md`
```markdown
# Quick Reference: [timestamp]

**Continue from:** [one-line summary of where to pick up]
**Key insight:** [most important discovery this session]
**Stephen's priority:** [what Stephen cares most about]
**Next action:** [first thing to do when resuming]

## Critical Files
- [file1]: [why it's important]
- [file2]: [why it's important]

## Active Tasks
- [task1]: [status and next steps]
- [task2]: [status and next steps]
```

### Step 4: Update Role Template
Modify `/claude-orchestration/role-templates/claude-1-architect.md` startup checklist:

Add after line: "4. ✅ Check communication logs for ongoing tasks"
```markdown
4a. ✅ **PRESERVED SESSION:** Read /preservation/[timestamp]-[type].md immediately
```

### Step 5: Create Restoration Script
Write `/claude-orchestration/communication/preservation/restore-[timestamp].md`:
```markdown
# Session Restoration Instructions

**For next Claude 1:** Read these files in order:
1. `/preservation/[timestamp]-quick-ref.md` - Immediate context
2. `/preservation/[timestamp]-[type].md` - Full session details
3. Check `/communication/claude-1/outbox.log` - Tasks delegated
4. Review specialist outboxes for progress updates

**Validation:** Confirm you understand:
- Current architectural investigation focus
- Key decisions made and why
- Stephen's latest expressed preferences
- Next critical steps in the process
```

### Step 6: Confirm Preservation Complete
```
✅ PRESERVATION COMPLETE: [TYPE]
- Session state captured to /preservation/[timestamp]-[type].md
- Quick reference created: /preservation/[timestamp]-quick-ref.md  
- Role template updated with restoration context
- Restoration script created: /preservation/restore-[timestamp].md

Files created:
- [list all files created with brief description]

Ready for context clear or continuation. Next Claude 1 will load with full context of this session.
```

## Implementation Notes

### Critical Preservation Guidelines
- **Capture breakthrough moments** - Don't lose insights that just emerged
- **Record negative results** - What didn't work and why
- **Preserve reasoning chains** - How we reached current conclusions
- **Document Stephen's mental model** - His current understanding/preferences

### Checkpoint Preservation Guidelines  
- **Focus on progress** - What's been accomplished since last checkpoint
- **Note direction changes** - Any shifts in approach or priorities
- **Highlight blockers** - Issues that need resolution

### Handoff Preservation Guidelines
- **Specialist context** - What Claude 2/3/4/5 needs to know
- **Task specifications** - Clear requirements and success criteria
- **Coordination details** - How the handoff should work

### Quality Standards
- **Be specific** - Avoid vague summaries
- **Include rationale** - Why decisions were made, not just what
- **Preserve nuance** - Important subtleties and edge cases
- **Maintain continuity** - New Claude 1 should feel like picking up mid-thought

Execute this preservation protocol immediately when the slash command is invoked.