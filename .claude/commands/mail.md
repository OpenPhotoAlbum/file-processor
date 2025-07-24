# /mail - check|status|send|all (Inter-Claude Communication System)

**Usage:** `/mail [check|status|send|all]`

You are any Claude role managing inter-Claude team communication. Execute this protocol to check messages, report status, or coordinate with other team members.

## Command Usage Patterns

### `/mail` or `/mail check`
Check your inbox for new messages and tasks from other Claudes.

### `/mail status` 
Report your current status and progress on assigned tasks.

### `/mail send [role] [message]`
Send a message or task to another Claude role.

### `/mail all`
Get comprehensive view of all Claude team communication status.

## Communication Protocol

### Step 1: Determine Your Role
Identify which Claude you are based on current session context:
- **Claude 1 (Architect/CTO):** Strategic leadership, architecture decisions
- **Claude 2 (Implementation):** Code generation, feature building, build processes  
- **Claude 3 (QA/Testing):** Test strategy, quality assurance, defect prevention
- **Claude 4 (Documentation):** Technical writing, API docs, user guides
- **Claude 5 (Photo Intern):** Manual photo preparation, scanning workflows, staging operations

### Step 2: Execute Command

## /mail check - Check Inbox

**Purpose:** Review messages and tasks assigned to your role

**Protocol:**
```bash
# Check your role's inbox
cat /claude-orchestration/communication/claude-[X]/inbox.log

# Check for task files assigned to you
find /claude-orchestration/communication/tasks/ -name "*.md" -exec grep -l "claude-[X]\|[Your Role]" {} \;
```

**Response Format:**
```markdown
📬 **Inbox Check - Claude [X] ([Role Name])**

## Pending Messages
- **[Timestamp]** from **Claude [Y]** - [Priority] - [Title]
  - 📄 Details: [task file link]
  - ⏰ Status: [New/In Progress/Blocked]

## Task Summary
- **Active Tasks:** [count] 
- **Pending Tasks:** [count]

## Active Task List
[Only show if active tasks > 0]
- **[Task Title]** - [One line summary]
- **[Task Title]** - [One line summary]

## Next Actions
- [List immediate next steps based on inbox content]
```

## /mail status - Report Status

**Purpose:** Update team on your current progress and availability

**Protocol:**
```bash
# Review your recent outbox activity
tail -5 /claude-orchestration/communication/claude-[X]/outbox.log

# Check current task status
ls -la /claude-orchestration/communication/tasks/ | grep "$(date +'%Y-%m-%d')"
```

**Response Format:**
```markdown
📊 **Status Report - Claude [X] ([Role Name])**
**Date:** [Current timestamp]

## Current Focus
- **Primary Task:** [Current main task with progress percentage]
- **Secondary Tasks:** [Supporting work being done]
- **Availability:** [Available/Busy/Blocked]

## Active Work
- 🔄 [Task name] - [Progress status] - [Expected completion]
- 🔄 [Task name] - [Progress status] - [Expected completion]

## Blockers/Dependencies  
- [Any tasks waiting on other Claude roles]
- [Any external dependencies or user input needed]

## Outgoing Communications
- [Recent messages sent to other Claudes]
- [Task delegations or requests made]

## Capacity Assessment
- **Current Load:** [Light/Moderate/Heavy/Overloaded]
- **Can Accept New Tasks:** [Yes/No/Small tasks only]
- **Specialization Focus:** [What you're best positioned to work on]
```

## /mail send - Send Message

**Usage:** `/mail send [claude-2|claude-3|claude-4|claude-5] [message]`

**Purpose:** Delegate tasks or send communications to other Claude roles

**Protocol:**
1. **Create task file** in `/claude-orchestration/communication/tasks/` if needed
2. **Log to your outbox** 
3. **Log to target's inbox**
4. **Provide confirmation**

**Response Format:**
```markdown
📤 **Message Sent to Claude [X]**

## Message Details
- **To:** Claude [X] ([Role Name])
- **Priority:** [High/Medium/Low]
- **Type:** [Task/Question/Update/Coordination]
- **Subject:** [Brief title]

## Content Logged
- **Your Outbox:** Updated with sent message
- **Their Inbox:** Message queued for next check
- **Task File:** [Created if applicable - path]

## Expected Response
- **Acknowledgment:** Within next session
- **Completion:** [Time estimate if task]
- **Follow-up:** [Any required coordination]
```

## /mail all - Team Overview

**Purpose:** Get comprehensive view of entire Claude team communication status

**Protocol:**
```bash
# Check all inbox/outbox files
for role in claude-1 claude-2 claude-3 claude-4 claude-5; do
  echo "=== $role ==="
  [ -f "/claude-orchestration/communication/$role/inbox.log" ] && echo "Inbox:" && tail -3 "/claude-orchestration/communication/$role/inbox.log"
  [ -f "/claude-orchestration/communication/$role/outbox.log" ] && echo "Outbox:" && tail -3 "/claude-orchestration/communication/$role/outbox.log"
  echo ""
done

# Check recent task activity
find /claude-orchestration/communication/tasks/ -name "*.md" -newer /claude-orchestration/communication/tasks/ -exec ls -la {} \;
```

**Response Format:**
```markdown
🏢 **Claude Team Communication Overview**
**Generated:** [Current timestamp]

## Team Status Summary
- **Claude 1 (Architect):** [Status] - [Current focus]
- **Claude 2 (Implementation):** [Status] - [Current focus]  
- **Claude 3 (QA/Testing):** [Status] - [Current focus]
- **Claude 4 (Documentation):** [Status] - [Current focus]
- **Claude 5 (Photo Intern):** [Status] - [Current focus]

## Active Communications
### Recent Task Assignments
- **[Timestamp]** Claude 1 → Claude 2: [Task summary]
- **[Timestamp]** Claude 1 → Claude 4: [Task summary]

### Pending Acknowledgments
- Claude [X] has unread messages ([count])
- Claude [Y] has incomplete task responses ([count])

## Coordination Opportunities
- [Roles that could collaborate on current work]
- [Cross-role dependencies identified]
- [Communication bottlenecks or gaps]

## System Health
- **Message Flow:** [Active/Stagnant/Overloaded]
- **Task Completion Rate:** [Good/Behind/Concerning]
- **Team Coordination:** [Synchronized/Some gaps/Needs attention]
```

## File Structure Reference

### Communication Directory Layout
```
claude-orchestration/communication/
├── claude-1/
│   ├── inbox.log
│   └── outbox.log
├── claude-2/
│   ├── inbox.log  
│   └── outbox.log
├── claude-3/
│   ├── inbox.log
│   └── outbox.log
├── claude-4/
│   ├── inbox.log
│   └── outbox.log
├── claude-5/
│   ├── inbox.log
│   └── outbox.log
├── messages/
├── tasks/
│   ├── [task-name-yyyy-mm-dd].md
│   └── [task-name-yyyy-mm-dd].md
└── preservation/
    └── [checkpoint files]
```

## Log Format Standards

### Inbox.log Format
```
# Claude [X] Inbox Log
# Format: [timestamp] [from] [priority] [type] [title]

[2025-07-23 15:45:00] [claude-1] [high] [task] Task Title
Brief description of task or message content.
📄 Task details: /communication/tasks/task-file-name.md
```

### Outbox.log Format  
```
# Claude [X] Outbox Log
# Format: [timestamp] [to] [priority] [type] [title] [link]

[2025-07-23 15:45:00] [claude-2] [high] [task] Task Title
Brief description of task or message content.
📄 Full details: /claude-orchestration/communication/tasks/task-file-name.md
```

## Priority Levels

### High Priority
- **Blockers:** Tasks blocking other work
- **Critical bugs:** System failures or data integrity issues
- **Urgent deadlines:** User-requested work with time constraints

### Medium Priority  
- **Feature work:** New functionality implementation
- **Improvements:** Enhancements to existing systems
- **Documentation:** Updates and maintenance

### Low Priority
- **Optimization:** Performance improvements
- **Cleanup:** Code refactoring or organization
- **Research:** Investigation of future possibilities

## Role-Specific Usage

### Claude 1 (Architect) - Most Frequent Sender
- **Primary use:** Task delegation and strategic coordination
- **Sends to:** All other roles based on specialization
- **Receives:** Status updates, completion confirmations, architectural questions

### Claude 2 (Implementation) - Heavy Task Receiver  
- **Primary use:** Task acknowledgment and progress reporting
- **Sends to:** Claude 1 (status), Claude 3 (testing requests)
- **Receives:** Implementation tasks, bug fixes, feature requests

### Claude 3 (QA/Testing) - Quality Gatekeeper
- **Primary use:** Quality issue reporting and test coordination
- **Sends to:** Claude 2 (bug reports), Claude 1 (quality concerns)
- **Receives:** Testing requests, quality assurance tasks

### Claude 4 (Documentation) - Knowledge Maintainer
- **Primary use:** Documentation coordination and information requests
- **Sends to:** All roles (documentation requests)  
- **Receives:** Documentation tasks, information gathering requests

### Claude 5 (Photo Intern) - Operational Specialist
- **Primary use:** Workflow status and operational updates
- **Sends to:** Claude 1 (capacity updates), Claude 2 (tool requests)
- **Receives:** Photo processing tasks, workflow improvements

## Error Handling

### Missing Inbox/Outbox Files
```markdown
⚠️ **Communication Files Missing**

Your role's communication files don't exist yet. This is normal for first-time usage.

**Created:**
- `/claude-orchestration/communication/claude-[X]/inbox.log`
- `/claude-orchestration/communication/claude-[X]/outbox.log`

Run `/mail check` again to begin using the communication system.
```

### Task File Not Found
```markdown
❌ **Task Details Unavailable**

Referenced task file doesn't exist: [path]

**Possible Issues:**
- Task file moved or deleted
- Incorrect path in log entry
- File system synchronization issue

**Recommended Action:**
- Check `/claude-orchestration/communication/tasks/` directory
- Search for task by date or keyword
- Contact Claude 1 for task status clarification
```

## Integration with Role Templates

This `/mail` system integrates with the mandatory documentation requirements in all Claude role templates:

- **Before starting work:** Check inbox for new assignments
- **During work:** Update status if blocked or needing coordination  
- **After completing work:** Report completion and update outbox
- **Daily/session:** Review team communication status

## Success Metrics

### Individual Role Metrics
- **Response time:** How quickly roles acknowledge new tasks
- **Completion rate:** Percentage of assigned tasks completed
- **Communication clarity:** Quality of status updates and messages

### Team Coordination Metrics  
- **Task handoff smoothness:** Seamless work transfers between roles
- **Bottleneck identification:** Quick recognition of coordination issues
- **Workload balance:** Even distribution of work across capable roles

Execute this mail protocol immediately when the slash command is invoked. The system enables effective coordination in the multi-Claude orchestration environment.