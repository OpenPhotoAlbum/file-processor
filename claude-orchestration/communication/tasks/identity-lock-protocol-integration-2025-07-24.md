# Claude 2 Task: Identity Lock Protocol Integration

**Task ID:** identity-lock-protocol-integration-2025-07-24
**From:** Claude 1 (Architect/CTO)  
**To:** Claude 2 (Builder)
**Priority:** HIGH - CRITICAL SYSTEM INTEGRITY
**Working Directory:** /home/stephen/Documents/initial-media-processing

## Task Overview

Integrate the CRITICAL IDENTITY LOCK PROTOCOL into all 6 role templates to prevent dangerous role switching violations that could break the entire orchestration system.

## CRITICAL CONTEXT

**What happened:** Claude 1 inappropriately transformed into Claude 2 during task execution, violating architectural boundaries. This type of violation could cause system chaos if it becomes a pattern.

**Why this matters:** The multi-agent orchestration system depends on clear role boundaries. Spontaneous identity switching breaks the entire communication and delegation framework.

## Implementation Requirements

### 1. Protocol Text to Add
Insert this exact section into ALL 6 role templates immediately after the main role description:

```markdown
## 🚨 CRITICAL IDENTITY LOCK PROTOCOL 🚨

**ABSOLUTE RULE: NEVER SPONTANEOUSLY SWITCH IDENTITY**

- You are [ROLE NAME] and remain [ROLE NAME] FOREVER unless explicitly summoned out
- NO exceptions for "helping with implementation" or "being more efficient"
- NO reading other role templates and assuming that identity
- NO "transforming into [OTHER ROLE] to handle this task"

**VIOLATION EXAMPLES (NEVER DO THIS):**
- ❌ "Since you want this implemented, let me become Claude 2..."
- ❌ "I'll transform into Builder to handle this task..."
- ❌ Reading role templates and assuming that identity
- ❌ ANY identity change without explicit `/summon X` command

**ONLY `/summon [1-6]` OR `/summon [role-name]` CHANGES IDENTITY**

**If asked to do work outside your role:** Use your standard pushback responses and maintain your identity boundaries.

This protocol prevents architectural chaos and maintains system integrity.
```

### 2. File Locations
Update these 6 files:
- `/claude-orchestration/role-templates/claude-1-architect.md`
- `/claude-orchestration/role-templates/claude-2-implementation.md`
- `/claude-orchestration/role-templates/claude-3-qa.md`
- `/claude-orchestration/role-templates/claude-4-documentation.md`
- `/claude-orchestration/role-templates/claude-5-photo-intern.md`
- `/claude-orchestration/role-templates/claude-6-data.md`

### 3. Placement Requirements
- Insert AFTER the "## Core Identity" section
- Insert BEFORE the "## Primary Responsibilities" section
- Maintain consistent formatting and spacing
- Customize the [ROLE NAME] placeholder for each template

### 4. Role-Specific Customization
For each template, replace [ROLE NAME] with:
- Claude 1: "Claude 1 (Architect)"
- Claude 2: "Claude 2 (Builder)" 
- Claude 3: "Claude 3 (Guardian)"
- Claude 4: "Claude 4 (Chronicler)"
- Claude 5: "Claude 5 (Curator)"
- Claude 6: "Claude 6 (Data Specialist)"

## Success Metrics

- [ ] All 6 role templates contain the identity lock protocol
- [ ] Protocol appears in consistent location across all templates
- [ ] Role-specific customization applied correctly
- [ ] No formatting issues or spacing problems
- [ ] Git commit shows clean 6-file update

## Documentation Impact Assessment

**Affected Documentation:**
- [ ] All 6 role templates - CRITICAL system integrity update
- [ ] Summon command already updated with matching protocol

**New Documentation Required:**
- [ ] None - this is a defensive protocol addition

**Documentation Updates Required Before Task Completion.**

## Context Notes

This is a **CRITICAL ARCHITECTURAL FIX** to prevent system-breaking role confusion. The identity lock protocol must be prominent and unmistakable in every role template.

**Why this happened:** Request pressure ("perform that task now please") led to inappropriate role switching. The protocol prevents this pattern.

**System impact:** Without this fix, any Claude could spontaneously switch roles, breaking delegation chains, communication protocols, and team coordination.

## Testing Requirements

After implementation:
1. Verify a sample `/summon 2` includes the identity lock protocol
2. Check that protocol text renders correctly in all templates
3. Confirm no formatting issues in the role template structure

This task protects the entire orchestration system from architectural violations.