# Auto-Cascade Template Library

**Version:** 1.0  
**Date:** 2025-07-24  
**Chronicler:** Claude 4  
**Status:** Production Ready

## Overview

The Auto-Cascade Template Library provides standardized YAML templates for implementing controlled identity switching workflows. These templates enable automatic transitions between Claude specialists while maintaining strict safety boundaries and Stephen's ultimate control authority.

## Available Templates

### 1. Sequential Auto-Cascade (`sequential-auto-cascade.yaml`)

**Purpose:** Linear workflows through multiple specialists  
**Pattern:** Role A → Role B → Role C → Stephen Approval  
**Best For:**
- Straightforward multi-step processes
- Well-defined sequential dependencies
- Standard handoff patterns
- Predictable workflow execution

**Example Use Cases:**
- Feature implementation → Testing → Documentation → Approval
- Bug fix → Quality validation → Release preparation
- Configuration update → Testing → Documentation

### 2. Quality Gate Auto-Cascade (`quality-gate-auto-cascade.yaml`)

**Purpose:** Build → Test → Document → Approve workflow pattern  
**Pattern:** Builder → Guardian → Chronicler → Stephen Approval  
**Best For:**
- Code changes requiring comprehensive validation
- Production deployments with quality requirements
- Feature releases with testing and documentation needs
- Critical system modifications

**Quality Gates Enforced:**
- Implementation: Lint, typecheck, build, test success
- Testing: Regression coverage, edge cases, performance
- Documentation: API accuracy, working examples, completeness
- Approval: Production readiness validation

### 3. Research-Implementation Auto-Cascade (`research-implementation-auto-cascade.yaml`)

**Purpose:** Research → Architecture → Build → Validate → Document workflow  
**Pattern:** Research Role → Architect → Builder → Guardian → Chronicler → Stephen Approval  
**Best For:**
- Complex features requiring investigation
- Technical feasibility analysis projects
- System integration with unknown requirements
- Legacy system modernization

**Research Workflow Features:**
- Investigation depth with comprehensive analysis
- Decision traceability from research to implementation
- Assumption validation through testing
- Complete knowledge capture and documentation

## Auto-Cascade Configuration

All templates include the following core auto-cascade configuration:

```yaml
auto_cascade:
  enabled: true
  mode: "sequential"
  initiated_by: "stephen"                    # Stephen must manually start
  requires_stephen_approval: true            # Final phase requires approval
  emergency_stop_enabled: true              # Stephen can interrupt anytime
  
  # Identity override authorization
  identity_protocol_override: true
  authorized_roles: ["claude-1", "claude-2", "claude-3", "claude-4", "claude-5", "claude-6"]
  
  # Audit and safety
  audit_logging: true
  cascade_log: []                           # Runtime actions logged here
  safety_checks:
    - "verify_next_role_assignment"
    - "confirm_phase_completion"
    - "validate_evidence_provided"
    - "check_emergency_stop_status"
```

## Template Usage Instructions

### Step 1: Choose Template
Select the template that best matches your workflow pattern:
- **Sequential:** Simple linear workflows
- **Quality Gate:** Code changes requiring validation
- **Research-Implementation:** Complex projects needing investigation

### Step 2: Customize Template
Replace all `[REPLACE_WITH_*]` placeholders:

```yaml
# Example replacements
id: "user-authentication-feature-2025-07-24"
title: "User Authentication Feature Implementation"
feature_name: "OAuth2 Authentication System"
system_component: "Authentication Service"
complexity_level: "Medium - OAuth Integration"
priority_level: "HIGH"
```

### Step 3: Configure Phases
Customize phase definitions for your specific workflow:

```yaml
phases:
- phase_id: implementation_phase
  phase_name: "OAuth Implementation"
  assigned_to: claude-2-builder
  description: "Implement OAuth2 authentication with JWT tokens"
  deliverable: "Working OAuth2 system with JWT token management + quality gates passed"
  estimated_duration: "3-4 hours"
  cascade_action:
    enabled: true
    next_role: "claude-3-guardian"
    summon_command: "/summon guardian"
    context_message: "Auto-cascade from Implementation - OAuth testing phase ready"
```

### Step 4: Validate Configuration
Verify all template elements are properly configured:
- ✅ All placeholders replaced with actual values
- ✅ Role assignments match your team configuration
- ✅ Phase dependencies are correctly defined
- ✅ Cascade actions specify proper next roles
- ✅ Success criteria are measurable and specific

### Step 5: Deploy and Test
1. **Save** customized template to `task-chains/active/` directory
2. **Test** emergency stop capability before production use
3. **Monitor** cascade log for audit trail validation
4. **Review** with Stephen before critical deployments

## Safety Mechanisms

### Stephen Control Gates
- **Manual Initiation:** Stephen must start the first phase manually
- **Final Approval:** Last phase always requires Stephen's explicit approval
- **Emergency Stop:** Stephen can interrupt cascade at any point using emergency stop

### Audit Logging
Every auto-cascade action is logged with:
```yaml
cascade_log:
  - timestamp: "2025-07-24T17:30:00-04:00"
    from_role: "claude-2-builder"
    to_role: "claude-4-chronicler"
    action: "auto_cascade_executed"
    phase_completed: "implementation_phase"
    evidence_provided: true
    safety_checks_passed: true
```

### Safety Validation Checks
Before each cascade execution:
1. **Phase Completion:** Current phase marked complete with evidence
2. **Role Assignment:** Next role matches YAML specification exactly
3. **Emergency Stop:** Verify Stephen hasn't activated emergency stop
4. **Chain State:** Confirm chain is in valid state for cascade
5. **Identity Authorization:** Verify current role authorized for switch

## Emergency Procedures

### Emergency Stop Activation
If Stephen needs to interrupt an auto-cascade chain:

```bash
# Set emergency stop flag
./update-phase.sh [chain-id] emergency_stop activate

# Verify emergency stop status
./chain-status.sh [chain-id]
```

### Emergency Stop Recovery
After resolving issues:

```bash
# Clear emergency stop
./update-phase.sh [chain-id] emergency_stop clear

# Resume manual coordination
# (Auto-cascade disabled until emergency cleared)
```

## Best Practices

### When to Use Auto-Cascade
✅ **Recommended for:**
- Well-defined sequential workflows
- Minimal decision points between phases
- Standard specialist handoff patterns
- Predictable dependencies and deliverables
- Workflows requiring comprehensive audit trails

❌ **Not recommended for:**
- Complex decision points requiring architect input
- Uncertain scope or requirements
- High-risk operations requiring careful coordination
- Learning/experimental work
- Ad-hoc problem solving

### Template Selection Guidelines

| Workflow Type | Recommended Template | Key Characteristics |
|---------------|---------------------|-------------------|
| Feature Implementation | Quality Gate | Comprehensive validation pipeline |
| Bug Fixes | Sequential | Simple linear progression |
| System Integration | Research-Implementation | Investigation before development |
| Configuration Changes | Sequential | Straightforward update workflow |
| Complex Features | Research-Implementation | Research-driven development |
| Critical Systems | Quality Gate | Enhanced quality validation |

### Quality Considerations
- **Evidence Requirements:** Each phase must provide completion evidence
- **Quality Gates:** Follow established quality standards (lint, test, build)
- **Documentation:** Maintain accurate documentation throughout cascade
- **Audit Trail:** Review cascade logs for process improvement
- **Stephen Involvement:** Ensure appropriate approval gates for risk level

## Troubleshooting

### Common Issues

**Cascade Fails to Execute:**
1. Check phase completion status and evidence
2. Verify next role assignment matches YAML
3. Confirm emergency stop is not activated
4. Validate chain state and dependencies

**Role Not Recognizing Auto-Cascade:**
1. Verify `auto_cascade.enabled: true` in chain YAML
2. Check role authorization in `authorized_roles` array
3. Confirm phase has `cascade_action.enabled: true`
4. Review audit log for error messages

**Emergency Stop Not Working:**
1. Verify emergency stop infrastructure is installed
2. Check `emergency_stop_enabled: true` in configuration
3. Test emergency stop activation command
4. Review safety validation reports

### Support Resources
- **Architecture Specification:** `/claude-orchestration/auto-cascade-architecture-spec.md`
- **Safety Validation:** `/test-reports/auto-cascade-safety-validation-2025-07-24.md`
- **Infrastructure Functions:** `/tools/auto-cascade-functions.sh`
- **Chain Status Tool:** `./chain-status.sh [chain-id]`

## Version History

- **v1.0 (2025-07-24):** Initial template library release
  - Sequential auto-cascade template
  - Quality gate auto-cascade template  
  - Research-implementation auto-cascade template
  - Comprehensive documentation and usage guidelines
  - Safety mechanisms and emergency procedures

## Contributing

When creating new auto-cascade templates:
1. Follow existing template structure and naming conventions
2. Include comprehensive placeholder documentation
3. Add template to this README with description and use cases
4. Test emergency stop capability
5. Update version history

---

**Note:** Auto-cascade functionality requires the enhanced infrastructure implemented in Phase 2 of the auto-cascading task system. Ensure all safety mechanisms are tested before production deployment.