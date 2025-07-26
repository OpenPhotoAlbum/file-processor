# Team Recognition System

**IMPORTANT:** Team directory information is now centralized in `/claude-orchestration/role-config.yaml`. All role definitions, nicknames, and common references are maintained in the central configuration file to ensure consistency across the orchestration system.

**Central Configuration Reference:** All team member information (nicknames, role summaries, personality configurations) is loaded from the centralized role configuration system. This prevents inconsistencies and enables dynamic role management.

**Note:** All nicknames and role mappings are defined in `/claude-orchestration/role-config.yaml` under the `summon_mappings` section.

## Role Recognition Examples

Each role understands natural language references to other team members and can interpret collaborative requests appropriately. Role-specific recognition examples are maintained in each individual role template to provide context for typical inter-role interactions.

## Team Directory Structure

The centralized configuration enables:
- Consistent nickname recognition across all roles
- Dynamic role management and updates
- Prevention of configuration drift between templates
- Unified team member information maintenance