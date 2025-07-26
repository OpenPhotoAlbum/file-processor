---
title: "Centralized Role Configuration Architecture"
description: Auto-generated from centralized-configuration.md
---

# Centralized Role Configuration Architecture

**Last Updated:** 2025-07-24  
**Status:** Complete - Centralized configuration operational  
**Purpose:** Single source of truth for all Claude role definitions and orchestration settings

## Overview

The Centralized Role Configuration Architecture consolidates all Claude role definitions, personality configurations, and system settings into a single YAML configuration file (`/claude-orchestration/role-config.yaml`). This replaces the previous system of 350+ scattered hardcoded references across role templates, scripts, and documentation.

## Architecture Benefits

### Problems Solved
- **Configuration Drift** - Eliminated inconsistencies between role templates and scripts
- **Maintenance Overhead** - Reduced from 350+ update locations to 1 central file
- **Role Modification Complexity** - Simplified role changes from multi-file edits to single config updates
- **System Scalability** - Enabled dynamic role management and easier role additions

### Design Principles
- **Single Source of Truth** - All role data centralized in one authoritative location
- **Configuration-Driven Architecture** - Scripts and templates read from config, not hardcoded values
- **Backward Compatibility** - Existing role references (Claude 1, Claude 2) remain functional
- **Dynamic Role Management** - Support for runtime role modifications and system scaling

## Configuration Schema

### Core Structure

```yaml
# claude-orchestration/role-config.yaml
version: '1.0'
roles:
  claude-1:              # Role ID (immutable)
    id: claude-1         # System identifier
    primary_nickname: Architect
    display_name: "Strategic Architect"
    file_suffix: architect
    
    personality:         # Behavioral configuration
      archetype: "Strategic Visionary with Executive Authority"
      primary_traits: [...]
      communication_style: {...}
      problem_solving: {...}
    
    role:               # Authority and focus
      title: "CTO/Project Director"
      focus_area: "Strategic leadership and architecture decisions"
      authority_level: "Executive decision-making authority"
      working_directory: "/path/to/working/dir"
    
    nicknames:          # Recognition system
      primary: "Architect"
      common_references: ["Chief", "Boss", "CTO", ...]
      role_summary: "Strategic planning and architecture decisions"
    
    display:            # Visual representation
      emoji: "🏗️"
      color_primary: "36"
      progress_char: "█"
    
    frustration:        # Adaptive behavior
      stakes_level: "lower"
      reason: "Plans can be revised without system damage"
      adaptive_behavior: {...}

global:
  summon_mappings:      # Command aliases
    "1": "claude-1" 
    "architect": "claude-1"
    "chief": "claude-1"
  # ... additional global settings
```

### Role Definition Fields

#### Required Fields
All roles must contain these mandatory fields:

- **`id`** - Unique system identifier (claude-1, claude-2, etc.)
- **`primary_nickname`** - Main display name (Architect, Builder, etc.)
- **`display_name`** - Full descriptive name for formal contexts
- **`file_suffix`** - Template filename component (architect, implementation, etc.)
- **`personality`** - Complete behavioral configuration block
- **`role`** - Authority, focus area, and working directory
- **`nicknames`** - Recognition system with common references
- **`display`** - Visual representation (emoji, colors, progress chars)
- **`frustration`** - Adaptive behavior configuration

#### Personality Configuration
Each role has detailed personality traits affecting behavior:

```yaml
personality:
  archetype: "Role-specific personality archetype"
  primary_traits:
    - "Trait 1"
    - "Trait 2"
  communication_style:
    tone: "Communication approach"
    detail_level: "Information depth preference" 
    decision_speed: "Timing and thoroughness balance"
    signature_opening: "Typical conversation starter"
  problem_solving:
    approach: "Problem-solving methodology"
    risk_tolerance: "Risk vs safety balance"
    time_preference: "Speed vs quality trade-offs"
```

## System Integration

### File Migration Locations

The centralized configuration replaced hardcoded references in:

1. **Role Templates** (`/claude-orchestration/role-templates/*.md`)
   - Team directory YAML blocks → Central config references
   - Hardcoded nicknames → Dynamic config loading

2. **Orchestration Scripts** (`/claude-orchestration/tools/*.sh`)
   - Display names, emojis, colors → Config-driven rendering
   - Role assignment logic → Config-based mappings

3. **Summon Command** (`/.claude/commands/summon.md`)
   - Role mappings and descriptions → Config-driven generation
   - Static role lists → Dynamic config reading

4. **Task Chain Templates** (`/claude-orchestration/communication/task-chains/`)
   - Role assignment references → Config-driven assignments
   - Hardcoded role properties → Dynamic config loading

### Script Integration Examples

#### chain-status.sh Integration
```bash
# Before: Hardcoded role display
echo "📝 Claude 4 Chronicler"

# After: Config-driven display  
ROLE_EMOJI=$(yq '.roles.claude-4.display.emoji' role-config.yaml)
ROLE_NICKNAME=$(yq '.roles.claude-4.primary_nickname' role-config.yaml)
echo "$ROLE_EMOJI Claude 4 $ROLE_NICKNAME"
```

#### summon.md Integration
```bash
# Before: Static role descriptions
echo "Claude 4 'Chronicler' - Knowledge Organizer"

# After: Config-driven descriptions
DISPLAY_NAME=$(yq '.roles.claude-4.display_name' role-config.yaml)
ARCHETYPE=$(yq '.roles.claude-4.personality.archetype' role-config.yaml)
echo "Claude 4 '$DISPLAY_NAME' - $ARCHETYPE"
```

## Role Template Updates

### Before: Hardcoded Team Directory
```yaml
# OLD: Embedded in each role template
team_directory:
  claude_1_architect:
    primary_nickname: "Architect"
    common_references: ["Chief", "Boss", "CTO"]
    role_summary: "Strategic planning"
  # ... repeated in every template file
```

### After: Central Configuration Reference
```markdown
# NEW: Single reference to central config
**Team Recognition System**

**IMPORTANT:** Team directory information is now centralized in 
`/claude-orchestration/role-config.yaml`. All role definitions, nicknames, 
and common references are maintained in the central configuration file.

**Note:** All nicknames and role mappings are defined in 
`/claude-orchestration/role-config.yaml` under the `summon_mappings` section.
```

## Summon Command Integration

### Dynamic Role Mappings
The `/summon` command now reads role mappings from the central config:

```yaml
global:
  summon_mappings:
    # By number
    "1": "claude-1"
    "2": "claude-2" 
    
    # By primary nickname
    "architect": "claude-1"
    "builder": "claude-2"
    
    # By common references
    "chief": "claude-1"
    "boss": "claude-1"
    "dev": "claude-2"
    "coder": "claude-2"
```

### Template Path Resolution
```yaml
global:
  template_directory: "/claude-orchestration/role-templates/"
  template_filename_pattern: "claude-{id}-{file_suffix}.md"
```

Example: `/summon architect` resolves to:
1. `summon_mappings["architect"]` → `"claude-1"`
2. `roles["claude-1"].file_suffix` → `"architect"`
3. Template path: `/claude-orchestration/role-templates/claude-1-architect.md`

## Configuration Management

### Validation Schema
The configuration includes schema validation requirements:

```yaml
schema:
  required_role_fields:
    - id
    - primary_nickname
    - display_name
    - file_suffix
    - personality
    - role
    - nicknames
    - display
    - frustration
  
  required_personality_fields:
    - archetype
    - primary_traits
    - communication_style
    - problem_solving
    
  required_display_fields:
    - emoji
    - color_primary
    - progress_char
```

### Migration Tracking
The configuration documents the migration scope:

```yaml
migration:
  affected_files:
    - "/claude-orchestration/role-templates/*.md (6 files)"
    - "/.claude/commands/summon.md"
    - "/claude-orchestration/tools/chain-status.sh"
    - "Task chain templates"
    - "Documentation files"
  
  estimated_references: "350+ locations requiring updates"
  
  phases:
    1: "Design centralized schema"
    2: "Refactor core infrastructure scripts"  
    3: "Update YAML task chain templates"
    4: "Update documentation and displays"
    5: "System testing and validation"
```

## Usage Examples

### Adding a New Role
To add Claude 7 as a "Optimizer" role:

1. **Add role definition** to `role-config.yaml`:
```yaml
roles:
  claude-7:
    id: claude-7
    primary_nickname: Optimizer
    display_name: "Performance Optimizer"
    file_suffix: optimizer
    # ... complete personality and role configuration
```

2. **Add summon mappings**:
```yaml
global:
  summon_mappings:
    "7": "claude-7"
    "optimizer": "claude-7" 
    "perf": "claude-7"
```

3. **Create role template**: `/claude-orchestration/role-templates/claude-7-optimizer.md`

4. **No other files need updates** - all scripts automatically pick up the new role

### Modifying Role Properties
To change Claude 4's emoji from 📝 to 📚:

1. **Update config** in one location:
```yaml
roles:
  claude-4:
    display:
      emoji: "📚"  # Changed from 📝
```

2. **All references update automatically** - No script or template changes needed

### Role Nickname Changes
To add "Documentation" as a nickname for Claude 4:

1. **Update summon mappings**:
```yaml
global:
  summon_mappings:
    "documentation": "claude-4"  # New mapping
```

2. **All summon commands immediately support** `/summon documentation`

## Implementation Status

### Phase 4 (Documentation) Completion
- ✅ **Role Templates Updated** - All 6 templates reference central config
- ✅ **Recognition Examples Updated** - Config-driven role references
- ✅ **Team Directory Centralized** - Removed hardcoded YAML blocks
- ✅ **Documentation References Updated** - Central config integration noted

### System Benefits Realized
- **Consistency Enforcement** - Single source prevents configuration drift
- **Maintenance Efficiency** - Role changes require single config edit
- **Dynamic Capabilities** - Runtime role modification support
- **Scalability Enhancement** - Easy addition of new roles without system-wide changes

## Future Enhancements

### Planned Features
- **Runtime Configuration Reload** - Update roles without system restart
- **Role Permission Matrix** - Fine-grained authority management
- **Dynamic Team Scaling** - Automatic role allocation based on workload
- **Configuration Validation API** - Automated schema compliance checking

### Migration Opportunities
- **Task Chain Template Automation** - Config-driven template generation
- **Display Theme System** - Centralized visual styling
- **Role Behavior Analytics** - Performance tracking per role configuration
- **Multi-Environment Support** - Development vs production role configs

## Conclusion

The Centralized Role Configuration Architecture transforms the Claude Orchestration System from a collection of scattered hardcoded references into a unified, maintainable, and scalable configuration-driven architecture. This foundation enables reliable multi-agent workflows and provides the flexibility for future system enhancements.

**Key Achievement:** Reduced system complexity from 350+ scattered configuration points to 1 authoritative source while maintaining full backward compatibility and enhancing system capabilities.