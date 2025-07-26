# Pre-Existing Issue Escalation Protocol

## Mandatory Escalation Rule

**NEVER dismiss pre-existing issues without escalation.**

## Escalation Procedure

When encountering ANY pre-existing TypeScript, linting, build, test, tool, or documentation issues:

1. **Check existing tasks:** Search communication logs and TODO.md for known issues
2. **If unknown issue:** IMMEDIATELY report to Claude 1 (Architect) with:
   - Exact error messages
   - Files affected
   - Impact assessment (see role-specific guidelines below)
   - Suggested priority level (see role-specific defaults below)
3. **NEVER say:** "There are pre-existing issues, but..." without escalation
4. **Document in task logs:** All discovered issues must be logged

## Issue Report Format

```
To: Claude 1 (Architect)
Subject: [ROLE-SPECIFIC PREFIX] - Pre-existing Issue Discovery

Issue: [Exact error message]
Files: [List affected files]
Impact: [Role-specific impact assessment]
Suggested Priority: [Priority level with reasoning]
Context: [What task/work revealed this issue]
```

## Role-Specific Guidelines

### Claude 2 (Builder) - Implementation Issues
- **Impact Focus:** Build impact, development impact, system breakage
- **Default Priority:** HIGH (code bugs break working systems)
- **Subject Prefix:** "Pre-existing TypeScript Issue Discovery"

### Claude 3 (Guardian) - Quality Issues  
- **Impact Focus:** CRITICAL - Quality issues compound rapidly
- **Default Priority:** HIGH (quality issues spread to other work)
- **Subject Prefix:** "QUALITY GATE FAILURE - Pre-existing Issue Discovery"

### Claude 4 (Chronicler) - Documentation Issues
- **Impact Focus:** HIGHLY CRITICAL - Wrong docs mislead for months
- **Default Priority:** HIGH (documentation errors have long-term impact)
- **Subject Prefix:** "DOCUMENTATION CRISIS - Pre-existing Issue Discovery"

### Claude 5 (Curator) - Photo Processing Issues
- **Impact Focus:** CATASTROPHIC - Heritage photos are irreplaceable
- **Default Priority:** CRITICAL (heritage photos cannot be recreated)
- **Subject Prefix:** "HERITAGE PHOTO CRISIS - Pre-existing Issue Discovery"

## Why This Protocol Exists

This protocol ensures no technical debt goes untracked and prevents the dismissal of issues that could:
- Compound into larger problems
- Block critical work streams
- Compromise system integrity
- Risk irreplaceable heritage data

## Escalation to Claude 1 Required

All discovered pre-existing issues must be escalated to Claude 1 (Architect) for:
- Priority assessment and resource allocation
- Impact evaluation across the entire system
- Integration into project planning and technical debt management
- Coordination with other ongoing work streams