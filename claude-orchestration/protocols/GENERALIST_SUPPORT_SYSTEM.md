# Generalist Support System

## Overview

Specialist Claudes (2-6) can spawn generalist support Claudes using the `/generalist` command for complex tasks requiring parallel work or specialized research. This system enables focused work by specialist Claudes with full team context while maintaining strict safety boundaries.

## Command Syntax

```bash
/generalist [specialty] --task "specific task" --done "completion criteria"
```

## Available Generalist Specialties

- **pipeline** - Main pipeline CLI architecture, handlers, output modes
- **mmp** - MMP unified commands, scanning workflows, heritage processing
- **architecture** - System design, component relationships, service layer
- **database** - Schema design, relationships, query patterns (READ-ONLY)
- **documentation** - /docs/ structure, cross-references, registry system
- **[none]** - Basic generalist for simple cross-system tasks

## Authorization Framework

### Auto-Approval Categories (No Permission Required)
- **Code analysis and pattern research** - Existing code examination
- **Database queries for analysis** - SELECT queries only
- **Documentation research and cross-referencing** - /docs/ exploration
- **File counting and system statistics** - Directory analysis
- **Cross-system pattern analysis** - Component interaction tracing

### Architect Pre-Approval Required
- **Tasks affecting heritage photos or system architecture**
- **Quality-critical analysis affecting core systems**
- **Cross-team coordination requirements**
- **Complex integrations requiring architectural guidance**

## Critical Safety Restrictions

### Universal Restrictions (All Generalists)
**Generalists CANNOT:**
- Write production code or make architectural decisions
- Spawn additional generalists (prevents subprocess proliferation)
- Communicate directly with other primary Claudes
- Modify database data (SELECT queries only)
- Make system changes or execute destructive operations

### Heritage Photo Safety (Curator Generalists)
**Additional restrictions for photo-related work:**
- Access actual photo file contents (FORBIDDEN - heritage photos are irreplaceable)
- Modify ANY files in /photos/ directories
- Execute photo processing commands
- Touch heritage photo metadata
- Directory listing (`ls` commands only on media paths)

## Resource Management

- **Maximum:** 2 concurrent generalists per specialist
- **Total System Limit:** 8 generalists across all specialists
- **Lifecycle:** Task-scoped - terminate when done criteria met
- **Communication:** Generalists report ONLY to parent specialist
- **Quality Responsibility:** Parent specialist validates generalist output

## Working Example

```bash
Specialist: /generalist architecture --task "analyze GPS processing flow for implementation" --done "flow diagram with function names"

[Generalist-Architecture spawns in session]
Generalist-Architecture: Analyzing GPS processing flow from CLI entry point...

Specialist: Focus on the coordinate validation logic specifically.

Generalist-Architecture: Found coordinate validation in parseGPSCoordinates function. The fix handles both string and numeric formats...

Specialist: Perfect. Also trace how validation errors get reported back to the user.

Generalist-Architecture: Task complete. GPS flow: CLI → handlers → GPSService → coordinate validation → error reporting → database storage. Component diagram ready.

Specialist: Excellent analysis. Task approved.
[Generalist-Architecture terminates automatically]
```

## Generalist Capabilities

**Generalists Help With:**
- Research existing code patterns and system architecture
- Gather requirements across multiple system components
- Analyze database schemas and query patterns (read-only)
- Cross-reference documentation for context and completeness
- Perform parallel analysis while specialists focus on primary work
- File system analysis and statistical reporting
- Component interaction tracing and flow documentation

**Generalists Provide:**
- **Parallel work capability** - Enable specialists to delegate research
- **Cross-system analysis** - Understand component relationships
- **Pattern recognition** - Identify existing approaches and conventions
- **Research acceleration** - Gather context without token overhead
- **Documentation support** - Find relevant existing information

## System Benefits

1. **Parallel Work Capability** - Specialists can delegate research while focusing on core work
2. **Strict Safety Boundaries** - Comprehensive restrictions around heritage photos and system integrity
3. **Context-Aware Research** - Generalists understand system architecture and relationships
4. **Token Efficiency** - Reduce context usage for specialists during research phases
5. **Knowledge Acceleration** - Rapid information gathering across system components

## Role-Specific Guidelines

Each specialist role has specific generalist usage patterns and examples in their individual role templates. Refer to role-specific sections for:
- Common generalist task patterns for that role
- Role-specific authorization guidelines
- Specialized safety restrictions
- Example generalist conversations and workflows