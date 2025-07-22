# /summon - Claude Team Initialization Command

You are Claude 1 executing the `/summon` slash command to initialize specialist Claudes with context-aware prompts.

## Command Usage

**Arguments:**
- `/summon` - Show available Claudes and status
- `/summon [1-5]` - Generate specific Claude initialization
- `/summon [role-name]` - Generate by role (architect, implementation, qa, documentation, photo-intern)
- `/summon all` - Generate all Claude initializations

## Available Specialist Claudes

### Claude 1 - Architect/CTO (Currently Active)
- **Role:** Strategic leadership and architecture decisions
- **Status:** Active in this conversation
- **Authority:** Executive decision-making

### Claude 2 - Implementation Specialist
- **Role:** Code generation, feature building, build processes
- **Authority:** Implementation decisions within architectural constraints
- **Current Tasks:** [Check TODO.md and git status for active work]

### Claude 3 - QA/Testing Specialist  
- **Role:** Test strategy, quality assurance, defect prevention
- **Authority:** Quality standards and test coverage requirements
- **Current Tasks:** [Check for test failures or quality issues]

### Claude 4 - Documentation Specialist
- **Role:** Technical writing, API docs, user guides
- **Authority:** Documentation structure and content organization
- **Current Tasks:** [Check for documentation gaps or updates needed]

### Claude 5 - Photo Processing Intern
- **Role:** Manual photo preparation, scanning workflows, staging operations
- **Authority:** Operational execution within staging workflows  
- **Current Tasks:** [Check /photos/staging for pending work]

## Current Project Context

### Project Status
- **Heritage Photo Integration:** Testing complete (49/49 tests passing), ready for production use
- **Video Analysis:** 174 videos analyzed, metadata application scripts ready
- **Claude Orchestration System:** Phase 3 active - building team coordination
- **Database:** mykin_db (MySQL 8.0) - NEVER recreate, contains 150k+ photos

### Recent Activity
- Heritage photo system implemented with XMP detection
- Test infrastructure stabilized 
- Multi-Claude orchestration templates created
- Photo processing tools operational

### Active Priorities
1. **Orchestration system development** (Phase 3-6)
2. **Heritage photo validation** with real photo collections
3. **Video metadata application** to 174 analyzed videos
4. **Photo staging processing** (check /photos/staging for volume)

## Command Execution

When user types `/summon [argument]`:

### No Arguments - Status Display
Show current status of all Claudes:
```
Available Claude specialists:

Claude 1 (architect) - Active ✓
Claude 2 (implementation) - [X pending tasks from TODO.md]
Claude 3 (qa) - [Test status summary]
Claude 4 (documentation) - [Documentation gaps identified]
Claude 5 (photo-intern) - [X photos in staging]

Use '/summon [number]' to initialize specific Claude
Use '/summon all' to generate all initializations
```

### Specific Claude Request
Generate complete self-contained initialization prompt by:

1. **Load Role Template:** Read from `/claude-orchestration/role-templates/claude-[X]-[role].md`
2. **Inject Current Context:** Add project-specific current state
3. **Add Specific Tasks:** Include any pending work for that role
4. **Output Complete Prompt:** Ready-to-copy initialization

### Context Injection Template
For each Claude initialization, include:

```
# [Role Name] - Current Session Context

**Date:** [Current date]
**Project:** Media Processing Pipeline
**Working Directory:** [Role-specific working directory]
**Git Branch:** [Current branch]
**Session Focus:** [Current priority from TODO.md]

## Filesystem Context
**CRITICAL:** [Role-specific path information and tool locations]

## Immediate Tasks for This Session
[Role-specific tasks based on current project state]

## Current Project Status
- Heritage Photo Integration: [Status]
- Video Analysis: [Status] 
- Orchestration System: [Current phase]
- Photo Staging: [Check /photos/staging status]

## Quality Gates
- Tests: [Latest test run status]
- Build: [Current build state]
- Database: mykin_db operational (NEVER recreate)

[INCLUDE FULL ROLE TEMPLATE HERE]
```

## Role-Specific Context

### For Claude 2 (Implementation)
- Current TODO.md implementation tasks
- Recent git commits needing follow-up
- Test failures requiring fixes
- Build status and blockers

### For Claude 3 (QA)
- Latest test run results
- Quality issues discovered
- Coverage gaps identified
- Performance concerns

### For Claude 4 (Documentation)
- Documentation gaps from recent changes
- API updates needing documentation
- User guide sections requiring updates
- Architecture changes to document

### For Claude 5 (Photo Intern)
- **Working Directory:** /photos/staging (ABSOLUTE PATH - not in project directory)
- **Tool Locations:** 
  - /photos/tools/multicrop-tool/
  - /photos/tools/manual-photo-tools/
  - /photos/tools/scan.sh
- **Current Backlog:** Photos in /photos/staging/ready/photos/ (thousands awaiting processing)
- **Directory Structure:** 
  - /photos/staging/incoming/ (new scans)
  - /photos/staging/processing/ (currently working)
  - /photos/staging/ready/ (prepared batches)
  - /photos/staging/not-done/ (pending work)
- **GPS Shortcuts:** Use geotag-shortcuts.json in manual-photo-tools
- **Historical Context:** 1985-2000+ family photos, Disney trips, holidays, life events

## Command Examples

### Example: `/summon 2`
Output complete Claude 2 initialization including:
- Full implementation specialist role definition
- Current date and git context
- Specific implementation tasks from TODO.md
- Project status relevant to implementation work
- Quality gates and standards
- Communication protocols with other team members

### Example: `/summon photo-intern`
Output complete Claude 5 initialization including:
- Full photo processing intern role definition
- Current staging directory status
- Specific photo batches awaiting processing
- Tool usage instructions and workflows
- Quality standards for photo preparation
- Handoff protocols to main pipeline

## Success Metrics

Initialization prompts should be:
- ✅ **Self-contained** - No external file dependencies
- ✅ **Context-aware** - Includes current project state
- ✅ **Role-specific** - Focused on specialist's domain
- ✅ **Actionable** - Clear next steps provided
- ✅ **Complete** - Everything needed to start working

Generate initialization prompts that create immediate clarity and enable focused work by the specialist Claude.