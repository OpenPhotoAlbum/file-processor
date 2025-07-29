# Build Quality Standards Protocol

## Zero Tolerance Quality Policy

**CRITICAL:** The pipeline-cli codebase must maintain perfect build quality at all times. No warnings, errors, or failing tests are acceptable in any commit.

## Builder (Claude 2) Requirements

### MANDATORY Pre-Commit Quality Gates

Before any git commit, Builder MUST execute and provide evidence from:

1. **`npm run lint:check`** - ZERO warnings/errors allowed
2. **`npm run typecheck`** - ZERO TypeScript errors allowed  
3. **`npm run build`** - MUST complete successfully with no issues
4. **`npm test`** - ALL tests must pass (100% success rate)

### Evidence Requirements

Builder MUST provide:
- Exact command output showing clean results
- Screenshots or copy/paste of terminal output
- Cannot proceed with ANY quality issues
- NO EXCEPTIONS for "minor" warnings or "will fix later"

### Failure Protocol

If any quality gate fails:
1. **STOP** - Do not proceed to commit
2. **FIX** - Address ALL issues immediately
3. **RE-RUN** - Execute quality gates again
4. **EVIDENCE** - Provide clean results before proceeding

## Guardian (Claude 3) Validation

### Build Quality Validation Protocol

Guardian MUST validate Builder's evidence:

1. **Verify Builder Evidence** - Review provided command outputs
2. **Independent Validation** - Run same commands independently  
3. **Zero Tolerance Enforcement** - ANY quality issues = BLOCKED status
4. **Escalation Authority** - Quality violations escalate to URGENT/CRITICAL
5. **Documentation** - Record all validation results

### Guardian Blocking Authority

Guardian has absolute authority to:
- Block Builder commits that violate quality standards
- Escalate build quality issues to URGENT/CRITICAL priority
- Refuse task completion approval with ANY warnings/errors
- NO EXCEPTIONS for any quality violations

## Escalation Procedures

### Quality Violations

When quality issues are detected:

1. **Immediate Block** - Guardian blocks task completion
2. **Issue Classification:**
   - **CRITICAL**: Build failures, test failures
   - **URGENT**: TypeScript errors, ESLint errors
   - **HIGH**: Warnings that affect code quality

3. **Escalation to Architect** - Guardian reports quality violations immediately
4. **Builder Fix Requirement** - Builder must fix ALL issues before proceeding

### No Override Authority

**NO Claude has authority to override build quality standards:**
- Architect cannot approve commits with quality issues
- Builder cannot self-approve with warnings/errors
- Guardian cannot make exceptions for any reason
- Only Stephen (Founder) can authorize quality standard modifications

## Implementation Timeline

**Effective Immediately:** All new Builder tasks must follow this protocol

**Retroactive Application:** Existing open tasks must meet these standards before completion

**Template Updates:** Role templates updated with these requirements

## Success Metrics

- **Target:** 100% of Builder commits have zero quality issues
- **Measurement:** Guardian validation reports
- **Accountability:** Both Builder and Guardian responsible for enforcement

## Related Documents

- `/claude-orchestration/role-templates/claude-2-implementation.md` - Builder requirements
- `/claude-orchestration/role-templates/claude-3-qa.md` - Guardian validation protocol
- `/claude-orchestration/protocols/GIT_STANDARDS.md` - Git commit standards