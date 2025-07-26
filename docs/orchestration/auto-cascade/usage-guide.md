# Auto-Cascade Implementation Guide

**Version:** 1.0  
**Date:** 2025-07-24  
**Chronicler:** Claude 4  
**Audience:** Stephen and Claude Team

## Quick Start

### 1. Choose Your Template
```bash
# View available templates
ls /claude-orchestration/communication/task-chains/templates/

# Auto-cascade templates available:
# - sequential-auto-cascade.yaml (linear workflows)
# - quality-gate-auto-cascade.yaml (build→test→doc→approve)
# - research-implementation-auto-cascade.yaml (research→build→validate)
```

### 2. Create Your Chain
```bash
# Copy template and customize
cp communication/task-chains/templates/quality-gate-auto-cascade.yaml \
   communication/task-chains/active/my-feature-auto-cascade-2025-07-24.yaml

# Edit with your specific values
# Replace all [REPLACE_WITH_*] placeholders
```

### 3. Start Auto-Cascade
```bash
# Stephen initiates manually (required for auto-cascade)
/summon builder "Start my-feature-auto-cascade-2025-07-24 Phase 1"

# Chain will auto-cascade through phases automatically
# Final phase requires Stephen approval
```

## Detailed Implementation Workflow

### Phase 1: Template Selection and Customization

#### Choose Template Based on Workflow
- **Sequential:** Simple A→B→C progression
- **Quality Gate:** Code changes requiring comprehensive validation
- **Research-Implementation:** Complex projects needing investigation

#### Template Customization Checklist
```yaml
# Required replacements (example)
id: "oauth-authentication-feature-2025-07-24"
title: "OAuth2 Authentication System Implementation"
description: "Implement secure OAuth2 authentication with JWT token management"

variables:
  feature_name: "OAuth2 Authentication System"
  system_component: "Authentication Service Layer"
  complexity_level: "Medium-High - Third-party Integration"
  priority_level: "HIGH"

# Phase customization
phases:
- phase_id: implementation_phase
  phase_name: "OAuth2 Core Implementation"
  assigned_to: claude-2-builder
  description: "Implement OAuth2 flow with provider integration and JWT handling"
  deliverable: "Working OAuth2 authentication system + comprehensive test coverage + quality gates passed"
  estimated_duration: "4-6 hours"
```

### Phase 2: Safety Configuration Validation

#### Auto-Cascade Configuration Review
```yaml
auto_cascade:
  enabled: true                              # ✅ Must be true
  mode: "sequential"                         # ✅ Only supported mode currently
  initiated_by: "stephen"                    # ✅ Required - manual start
  requires_stephen_approval: true            # ✅ Required - manual end
  emergency_stop_enabled: true              # ✅ Required - safety mechanism
  
  identity_protocol_override: true           # ✅ Enables controlled identity breaking
  authorized_roles: [...]                   # ✅ List all participating roles
  
  audit_logging: true                       # ✅ Required for compliance
  cascade_log: []                           # ✅ Will populate during execution
```

#### Safety Mechanism Verification
- ✅ **Stephen Control:** Manual initiation and final approval configured
- ✅ **Emergency Stop:** Enabled and tested
- ✅ **Audit Logging:** Comprehensive cascade action recording
- ✅ **Role Authorization:** Only authorized roles can participate
- ✅ **Phase Dependencies:** Clear dependency chain defined

### Phase 3: Cascade Action Configuration

#### Phase-Level Cascade Setup
```yaml
cascade_action:
  enabled: true                             # Enable for this phase
  next_role: "claude-3-guardian"            # Exact role ID from role-config.yaml
  summon_command: "/summon guardian"        # Command to execute for identity switch
  context_message: "Auto-cascade from Implementation - comprehensive testing phase ready for OAuth2 validation"
```

#### Cascade Context Messages
Write clear, informative context messages:
- **Explain previous phase completion:** "Implementation phase completed"
- **Describe upcoming work:** "Testing phase ready for validation"
- **Provide specific context:** "OAuth2 system implemented with JWT tokens"
- **Reference chain ID:** Clear chain identification for continuity

### Phase 4: Quality Gate Integration

#### Implementation Quality Gates
```yaml
quality_requirements:
  - "cd pipeline-cli && npm run lint:check passes with zero warnings"
  - "cd pipeline-cli && npm run typecheck passes with zero errors"
  - "cd pipeline-cli && npm run build succeeds completely"
  - "npm test passes all existing tests"
  - "OAuth2 integration tests validate token flow"
```

#### Testing Quality Gates
```yaml
quality_requirements:
  - "All existing tests continue to pass"
  - "OAuth2 authentication flow tested end-to-end"
  - "JWT token validation and refresh tested"
  - "Error handling for invalid credentials tested"
  - "Security edge cases validated"
```

#### Documentation Quality Gates
```yaml
quality_requirements:
  - "OAuth2 API documentation reflects actual implementation"
  - "Authentication flow diagrams updated"
  - "Configuration examples tested and working"
  - "Troubleshooting guide covers common issues"
```

## Execution Flow Examples

### Example 1: Quality Gate Auto-Cascade Execution

```bash
# Stephen starts the chain
Stephen: /summon builder "Start oauth-auth-feature-2025-07-24 Phase 1"

# Builder completes implementation
Builder: ✅ OAuth2 implementation complete with JWT token management.
         Quality gates passed: lint ✅ typecheck ✅ build ✅ test ✅
         Auto-cascading to Guardian for comprehensive testing...
         
         /summon guardian
         
# Guardian automatically receives control
Guardian: Auto-cascade received. Testing phase ready for OAuth2 validation.
          Previous: OAuth2 Core Implementation completed by Builder
          Chain: oauth-auth-feature-2025-07-24
          
          Beginning comprehensive OAuth2 testing...

# Guardian completes testing
Guardian: ✅ OAuth2 testing complete. All authentication flows validated.
          Security edge cases tested. Performance acceptable.
          Auto-cascading to Chronicler for documentation...
          
          /summon chronicler

# Chronicler automatically receives control
Chronicler: Auto-cascade received. Documentation phase ready.
            Previous: OAuth2 testing completed by Guardian
            Chain: oauth-auth-feature-2025-07-24
            
            Creating comprehensive OAuth2 documentation...

# Chronicler completes documentation
Chronicler: ✅ OAuth2 documentation complete. API docs updated, flow diagrams created.
            Configuration examples tested. Troubleshooting guide comprehensive.
            
            🛑 Auto-cascade chain requires Stephen's final approval
            Chain: oauth-auth-feature-2025-07-24
            Ready for production deployment approval.

# Stephen provides final approval
Stephen: "OAuth2 implementation approved for production deployment"
```

### Example 2: Emergency Stop Scenario

```bash
# Chain in progress
Builder: Working on OAuth2 implementation...

# Stephen discovers issue requiring immediate stop
Stephen: ./update-phase.sh oauth-auth-feature-2025-07-24 emergency_stop activate

# Builder completes phase but cascade is blocked
Builder: ✅ Implementation complete. Checking auto-cascade eligibility...
         
         🛑 EMERGENCY STOP ACTIVE
         Auto-cascade stopped by Stephen - manual coordination required
         Chain: oauth-auth-feature-2025-07-24
         
         Awaiting manual direction for next steps.

# After issue resolution
Stephen: ./update-phase.sh oauth-auth-feature-2025-07-24 emergency_stop clear
Stephen: /summon guardian "Resume OAuth2 testing - emergency resolved"
```

## Advanced Configuration

### Custom Quality Checks
Add specialized quality requirements for specific domains:

```yaml
# Heritage photo processing quality checks
quality_requirements:
  - "XMP metadata detection accuracy validated"
  - "Heritage photo context enrichment tested"
  - "Batch processing performance meets volume requirements"
  - "Memory usage remains stable during large collection processing"

# Database operation quality checks  
quality_requirements:
  - "Migration scripts tested on backup database"
  - "Data integrity validation passed"
  - "Performance impact assessment completed"
  - "Rollback procedures verified"
```

### Conditional Cascade Logic
Configure phases with conditional cascade behavior:

```yaml
cascade_action:
  enabled: true
  condition: "quality_gates_passed"           # Only cascade if quality checks pass
  fallback_action: "manual_intervention"     # What to do if condition fails
  next_role: "claude-3-guardian"
  summon_command: "/summon guardian"
```

### Multi-Role Phase Support
For phases requiring multiple specialists:

```yaml
- phase_id: parallel_validation
  phase_name: "Parallel Quality Validation"
  assigned_to: 
    - claude-3-guardian    # Primary testing
    - claude-6-data        # Database validation
  coordination_required: true
  cascade_action:
    enabled: true
    condition: "all_specialists_complete"
    next_role: "claude-4-chronicler"
```

## Monitoring and Debugging

### Cascade Log Analysis
Review auto-cascade execution:

```bash
# View cascade log entries
./chain-status.sh oauth-auth-feature-2025-07-24 | grep "cascade_log"

# Typical log entry
cascade_log:
  - timestamp: "2025-07-24T17:30:00-04:00"
    from_role: "claude-2-builder"
    to_role: "claude-3-guardian"
    action: "auto_cascade_executed"
    phase_completed: "implementation_phase"
    evidence_provided: true
    safety_checks_passed: true
    context_message: "Auto-cascade from Implementation - testing ready"
```

### Common Troubleshooting

#### Cascade Not Executing
**Symptoms:** Phase completes but no auto-cascade occurs

**Diagnosis Steps:**
1. Check `auto_cascade.enabled: true` in chain YAML
2. Verify `cascade_action.enabled: true` for completed phase
3. Confirm next role in `authorized_roles` array
4. Check emergency stop status: `emergency_stop_enabled: false`

**Resolution:**
```bash
# Check chain configuration
./chain-status.sh [chain-id]

# Verify emergency stop status
grep "emergency_stop" task-chains/active/[chain-id].yaml

# Manual intervention if needed
/summon [next-role] "Manual cascade - auto-cascade failed"
```

#### Incorrect Role Transition
**Symptoms:** Wrong Claude receives cascade

**Diagnosis Steps:**
1. Verify `next_role` matches exactly with role ID in `role-config.yaml`
2. Check `summon_command` uses correct nickname
3. Confirm role authorization

**Resolution:**
```yaml
# Correct configuration
cascade_action:
  next_role: "claude-3-guardian"           # Exact role ID
  summon_command: "/summon guardian"       # Correct nickname
```

#### Audit Log Gaps
**Symptoms:** Missing cascade actions in log

**Diagnosis Steps:**
1. Verify `audit_logging: true` in chain configuration
2. Check cascade function execution logs
3. Review update-phase.sh execution output

**Resolution:**
```bash
# Check audit function
source tools/auto-cascade-functions.sh
log_cascade_action [chain-id] [phase-id] "test_log_entry"
```

## Security Considerations

### Identity Override Safety
The auto-cascade system creates controlled exceptions to identity lock:
- ✅ **Authorized Only:** Only specified roles can participate
- ✅ **Phase-Gated:** Identity switch only after phase completion
- ✅ **Evidence Required:** Must provide completion evidence
- ✅ **Audit Trail:** All switches logged with timestamps
- ✅ **Emergency Stop:** Stephen can interrupt at any time

### Risk Mitigation
- **Comprehensive Testing:** All safety mechanisms validated
- **Stephen Control:** Manual initiation and final approval required
- **Emergency Procedures:** Immediate stop capability available
- **Audit Compliance:** Complete action logging for review
- **Rollback Capability:** Emergency stop enables manual coordination

## Best Practices Summary

### Template Selection
- **Sequential:** Simple, well-defined linear workflows
- **Quality Gate:** Code changes requiring validation pipeline
- **Research-Implementation:** Complex projects needing investigation

### Configuration Standards
- Replace ALL `[REPLACE_WITH_*]` placeholders
- Define measurable success criteria
- Configure appropriate quality gates
- Test emergency stop before production use

### Execution Guidelines
- Stephen initiates all auto-cascade chains manually
- Monitor cascade logs for audit compliance
- Provide clear context messages for role transitions
- Maintain comprehensive completion evidence

### Safety Protocols
- Test emergency stop capability regularly
- Review audit logs for process improvement
- Validate role authorizations before deployment
- Maintain backward compatibility with manual chains

---

**Next Steps:** After template creation and documentation, proceed to Phase 5 (Pilot Implementation) with Builder (Claude 2) for complete system testing.