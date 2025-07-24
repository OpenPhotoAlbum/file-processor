#!/usr/bin/env python3
"""
Update YAML task chain templates to use config-driven role assignments
instead of hardcoded role IDs.

This script processes all template files and replaces hardcoded assigned_to
values with role-config.yaml driven values.
"""

import yaml
import os
import re
from pathlib import Path

def load_role_config():
    """Load the centralized role configuration."""
    script_dir = Path(__file__).parent
    config_path = script_dir.parent / "role-config.yaml"
    
    with open(config_path, 'r') as f:
        return yaml.safe_load(f)

def normalize_role_assignment(assigned_to, role_config):
    """
    Convert hardcoded role assignments to config-driven format.
    
    Examples:
    - "claude-6-data" -> claude-6
    - "claude-3-guardian" -> claude-3  
    - "claude-1" -> claude-1
    - "claude-2-builder" -> claude-2
    """
    
    # Clean up the assigned_to value
    clean_assigned = assigned_to.strip('"').strip("'")
    
    # Create mapping table for extended role formats
    role_mappings = {}
    for role_id, role_data in role_config['roles'].items():
        # Map basic claude-X format
        role_mappings[role_id] = role_id
        
        # Map claude-X-suffix format using file_suffix
        role_mappings[f"{role_id}-{role_data['file_suffix']}"] = role_id
        
        # Map claude-X-nickname format using primary nickname (lowercase)
        nickname_lower = role_data['nicknames']['primary'].lower()
        role_mappings[f"{role_id}-{nickname_lower}"] = role_id
        
        # Map common variations
        for ref in role_data['nicknames']['common_references']:
            if ref.lower() not in ['the strategic one', 'the one who codes', 'the careful one', 'the organized one', 'the hands-on one', 'the data one']:
                role_mappings[f"{role_id}-{ref.lower()}"] = role_id
    
    # Try to find exact match
    if clean_assigned in role_mappings:
        return role_mappings[clean_assigned]
    
    # Try case-insensitive match
    clean_lower = clean_assigned.lower()
    for pattern, role_id in role_mappings.items():
        if clean_lower == pattern.lower():
            return role_id
    
    # Fallback: return original if no mapping found
    print(f"Warning: No mapping found for role assignment: {assigned_to}")
    return clean_assigned

def update_template_file(file_path, role_config):
    """Update a single template file with config-driven role assignments."""
    
    print(f"Processing: {file_path}")
    
    with open(file_path, 'r') as f:
        content = f.read()
    
    # Load as YAML to preserve structure
    try:
        data = yaml.safe_load(content)
    except yaml.YAMLError as e:
        print(f"Error parsing YAML in {file_path}: {e}")
        return False
    
    # Track changes
    changes_made = 0
    
    # Update assigned_to fields in phases
    if 'phases' in data:
        for phase in data['phases']:
            if 'assigned_to' in phase:
                old_assignment = phase['assigned_to']
                new_assignment = normalize_role_assignment(old_assignment, role_config)
                
                if old_assignment != new_assignment:
                    phase['assigned_to'] = new_assignment
                    changes_made += 1
                    print(f"  Updated: {old_assignment} -> {new_assignment}")
    
    # Write back if changes were made
    if changes_made > 0:
        with open(file_path, 'w') as f:
            yaml.dump(data, f, default_flow_style=False, sort_keys=False, indent=2)
        print(f"  ✅ {changes_made} role assignments updated")
        return True
    else:
        print(f"  ✅ No changes needed")
        return False

def main():
    """Main function to process all template files."""
    
    print("🔄 Updating YAML task chain templates with config-driven role assignments")
    print("=" * 80)
    
    # Load role configuration
    try:
        role_config = load_role_config()
        print(f"✅ Loaded role configuration with {len(role_config['roles'])} roles")
    except Exception as e:
        print(f"❌ Error loading role configuration: {e}")
        return 1
    
    # Find all template files
    script_dir = Path(__file__).parent
    templates_dir = script_dir.parent / "communication" / "task-chains" / "templates"
    
    if not templates_dir.exists():
        print(f"❌ Templates directory not found: {templates_dir}")
        return 1
    
    template_files = list(templates_dir.glob("*.yaml"))
    print(f"📁 Found {len(template_files)} template files")
    print()
    
    # Process each template file
    updated_files = 0
    total_files = 0
    
    for template_file in template_files:
        total_files += 1
        if update_template_file(template_file, role_config):
            updated_files += 1
        print()
    
    # Summary
    print("=" * 80)
    print(f"🎯 Summary: {updated_files}/{total_files} files updated")
    
    if updated_files > 0:
        print("✅ Template migration completed successfully!")
        print("📝 Review the changes and commit when ready")
    else:
        print("ℹ️  No templates needed updates (already using correct format)")
    
    return 0

if __name__ == "__main__":
    exit(main())