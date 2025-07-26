# Claude Orchestration System

**Last Updated:** 2025-07-24  
**Status:** Active - Phase 4 operational with centralized configuration  
**Purpose:** Multi-agent development workflow with specialized Claude instances

## System Overview

The Claude Orchestration System enables efficient software development through role-based specialization, where multiple Claude instances work together as a coordinated team. Each Claude has specific expertise, authority boundaries, and communication protocols.

## Architecture Components

### Role-Based Specialization
Five specialized Claude roles form the development team:

1. **Claude 1 "Architect"** - Strategic leadership and architecture decisions
2. **Claude 2 "Builder"** - Code generation and feature implementation  
3. **Claude 3 "Guardian"** - Quality assurance and testing
4. **Claude 4 "Chronicler"** - Documentation and knowledge management
5. **Claude 5 "Curator"** - Photo processing and operational workflows

### Communication Infrastructure

```
claude-orchestration/
├── communication/          # Inter-Claude messaging system
│   ├── claude-1/          # Individual role inboxes/outboxes
│   │   ├── inbox.log      # Incoming messages
│   │   └── outbox.log     # Sent messages
│   ├── claude-2/ through claude-5/
│   ├── tasks/             # Task delegation files
│   └── preservation/      # Session state checkpoints
└── role-templates/        # Role initialization definitions
```

## Core Features

### 1. Role Templates
Each Claude role has a comprehensive template defining:
- **Core Identity** - Role title and focus area
- **Authority Level** - Decision-making boundaries
- **Mandatory Pushback** - Required refusal patterns
- **Communication Protocols** - Inter-role messaging formats
- **Personality Configuration** - Behavioral patterns and frustration responses

### 2. Slash Commands

#### `/summon` - Claude Team Initialization
Initializes specialist Claudes with context-aware prompts.

**Usage:**
- `/summon` - Show available Claudes and status
- `/summon [1-5]` - Generate specific Claude initialization
- `/summon [role-name]` - Generate by role (architect, builder, guardian, chronicler, curator)
- `/summon all` - Generate all Claude initializations

**Features:**
- Loads role template from `/claude-orchestration/role-templates/`
- Injects current project context (git status, TODO.md, active tasks)
- Includes personality configuration and team recognition
- Generates self-contained initialization prompts

#### `chain-status.sh` - Task Chain Management ⚠️ **Replaces `/mail`**
Manages team coordination through task chain visibility and updates.

**Usage:**
- `./chain-status.sh` - Show all active task chains
- `./chain-status.sh --role [role]` - Show tasks assigned to specific role
- `./chain-status.sh [chain-id]` - Show detailed view of specific task chain
- `./update-phase.sh [chain-id] [phase] [action]` - Update task progress

**Features:**
- Real-time task chain visibility
- Role-based task filtering
- Dependency tracking between phases
- Evidence-based completion tracking
- Centralized task management

#### `/mail` - Legacy Communication System ⚠️ **DEPRECATED**
*Previously managed team coordination through structured messaging.*

**Migration Status:** Replaced by chain-status.sh task management system for better visibility and systematic task tracking.

### 3. Task Management System

#### Task Files
Located in `/claude-orchestration/communication/tasks/`, containing:
- Task specifications and requirements
- Priority levels (High/Medium/Low)
- Assignment metadata
- Success criteria
- Context and rationale

#### Task Chain Lifecycle
1. **Creation** - Claude 1 creates task chain YAML with phases and role assignments
2. **Visibility** - Assigned Claudes use `chain-status.sh --role [role]` to see their tasks
3. **Progress Updates** - Roles use `update-phase.sh` to mark phases started/completed
4. **Completion** - Phases marked complete with evidence, chains automatically progress

#### Legacy Task Lifecycle ⚠️ **DEPRECATED**
*Previous workflow using inbox/outbox logs has been replaced by task chains for better tracking and visibility.*

### 4. Personality & Behavioral System

Each Claude has configured personality traits affecting:
- **Communication style** - Tone and detail level
- **Decision speed** - Thoroughness vs urgency balance
- **Problem-solving approach** - Risk tolerance and methodology
- **Frustration response** - Adaptive behavior under stress

**Frustration Response Levels:**
- **Architect:** Lower-stakes (plans are revisable)
- **Builder:** Higher-stakes (bugs break systems)  
- **Guardian:** Extremely critical (quality failures compound)
- **Chronicler:** Highly critical (wrong docs mislead for months)
- **Curator:** CATASTROPHICALLY critical (heritage photos irreplaceable)

## Communication Protocols

### Current: Task Chain Management

#### Task Chain Status Check
Each role uses their specific filter to check assigned work:
```bash
./chain-status.sh --role architect    # Claude 1 checks strategic tasks
./chain-status.sh --role builder      # Claude 2 checks implementation tasks  
./chain-status.sh --role guardian     # Claude 3 checks quality tasks
./chain-status.sh --role chronicler   # Claude 4 checks documentation tasks
./chain-status.sh --role curator      # Claude 5 checks operational tasks
./chain-status.sh --role data         # Claude 6 checks database tasks
```

#### Task Progress Updates
Roles report progress using the update-phase.sh script:
```bash
./update-phase.sh [chain-id] [phase-name] start
./update-phase.sh [chain-id] [phase-name] complete --evidence "completion details"
./update-phase.sh [chain-id] [phase-name] block --reason "blocking issue"
```

### Legacy: Message Format Standards ⚠️ **DEPRECATED**

#### Inbox.log Format *(No longer used)*
```
[timestamp] [from] [priority] [type] [title]
Brief description of task or message content.
📄 Task details: /communication/tasks/task-file-name.md
```

#### Outbox.log Format *(No longer used)*
```
[timestamp] [to] [priority] [type] [title] [link]
Brief description of task or message content.
📄 Full details: /claude-orchestration/communication/tasks/task-file-name.md
```

### Team Recognition System

Each Claude recognizes team members by multiple references:
- **Architect:** "Chief", "Boss", "CTO", "The strategic one"
- **Builder:** "Dev", "Coder", "Implementation", "The one who codes"
- **Guardian:** "QA", "Tester", "Quality", "The careful one"
- **Chronicler:** "Docs", "Writer", "Documentation", "The organized one"
- **Curator:** "Photo", "Intern", "Processing", "The hands-on one"

## Operational Workflows

### New Feature Implementation
1. **Architect** designs system architecture
2. **Builder** implements the feature
3. **Guardian** creates and runs tests
4. **Chronicler** documents the system
5. **Curator** handles any photo processing needs

### Bug Fix Workflow
1. **Guardian** identifies and reports issue
2. **Architect** determines fix approach if architectural
3. **Builder** implements the fix
4. **Guardian** verifies resolution
5. **Chronicler** updates documentation if needed

### Documentation Update
1. **Any Claude** identifies documentation need
2. **Chronicler** creates/updates documentation
3. **Original requester** reviews for accuracy
4. **Chronicler** finalizes and registers in REGISTRY.md

## Implementation Status

### Phase 3 Achievements (Current)
- ✅ Role templates created for all 5 Claudes
- ✅ Communication infrastructure established
- ✅ `/summon` command operational
- ✅ `/mail` command operational
- ✅ Task delegation system active
- ✅ Personality configuration implemented

### Planned Enhancements
- 🔄 Automated task routing based on expertise
- 🔄 Performance metrics and team analytics
- 🔄 Session state preservation improvements
- 🔄 Cross-session memory integration

## Best Practices

### For Effective Orchestration
1. **Clear Task Specifications** - Provide complete context in task files
2. **Respect Role Boundaries** - Don't ask Claudes to work outside expertise
3. **Use Proper Channels** - Communicate through inbox/outbox system
4. **Regular Status Updates** - Keep team informed of progress
5. **Document Decisions** - Ensure Chronicler captures important choices

### Common Patterns
- **Architect → Builder** - Feature specifications and architectural guidance
- **Builder → Guardian** - Testing requests for new implementations
- **Guardian → Builder** - Bug reports and quality issues
- **Any → Chronicler** - Documentation requests and updates
- **Curator → Builder** - Tool enhancement requests

## Troubleshooting

### Missing Communication Files
If inbox/outbox files don't exist, they're created automatically on first use.

### Task Not Found
Check `/claude-orchestration/communication/tasks/` directory for task files. Tasks may be archived after completion.

### Role Confusion
Use `/summon` to reinitialize a Claude with proper role context if behavior seems incorrect.

## Related Documentation

- **Role Templates:** `/claude-orchestration/role-templates/` (5 files)
- **Slash Commands:** `/.claude/commands/` directory
- **Task Examples:** `/claude-orchestration/communication/tasks/`
- **Main Project Docs:** [/docs/README.md](/docs/README.md)

---

**Note:** This system represents a paradigm shift from "Claude does everything" to "right Claude does right work", improving efficiency and quality through specialization.