# Documentation Update Protocol - MANDATORY

**Purpose:** Ensure documentation NEVER goes out of date  
**Scope:** All Claude roles and contributors  
**Status:** Required for all role templates

## Core Principle

**No task is complete until documentation reflects current reality**

## MANDATORY Requirements

### BEFORE Creating ANY New .md File

#### 1. Registry Check (REQUIRED)
```bash
# Check central topic registry
grep -i "your-topic-keywords" /docs/REGISTRY.md

# Search existing documentation
grep -r "keyword1\|keyword2" /docs/ --include="*.md"

# Check plans directory
find /docs /plans -name "*.md" -exec grep -l "topic.*variations" {} \;
```

#### 2. Decision Protocol
After searching, choose ONE of these actions:
- **Update existing documentation** if topic already covered
- **Create related section** in existing document if closely related
- **Register new topic** in REGISTRY.md if genuinely new

#### 3. Prevention Rule
❌ **NEVER create documentation without checking registry first**  
❌ **NEVER assume your topic is unique**  
❌ **NEVER skip the search step**  
❌ **NEVER archive documentation "just in case"**

### AFTER Completing ANY Task

#### 1. Documentation Update (MANDATORY)
- **Update affected documentation** to reflect actual implementation
- **Verify accuracy** against current system state
- **Test examples** to ensure they work as documented
- **Check cross-references** for consistency

#### 2. Index Maintenance (MANDATORY)
- **Update `/docs/README.md`** if feature status changed
- **Update `/docs/REGISTRY.md`** if new topic was created
- **Update section README files** in affected directories
- **Verify navigation paths** are correct

#### 3. Quality Verification (MANDATORY)
- **Status indicators** must reflect actual implementation
- **Last updated dates** must be current
- **External references** must be valid
- **Code examples** must be tested and functional

## Implementation for Claude Roles

### Claude 1 (Architect/CTO)
```markdown
## Documentation Requirements (MANDATORY)

### Before Any Decision:
1. Check /docs/REGISTRY.md for existing architecture documentation
2. Update affected documentation with architectural changes
3. Ensure all design decisions are documented with rationale

### After Architectural Changes:
1. Update master documentation index
2. Cross-reference related architecture documents
3. Verify implementation teams have updated docs
```

### Claude 2 (Implementation)
```markdown
## Documentation Requirements (MANDATORY)

### Before Implementation:
1. Check /docs/REGISTRY.md for existing feature documentation
2. Identify documentation that will need updates
3. Plan documentation changes alongside code changes

### After Implementation:
1. Update feature documentation to reflect actual code
2. Update CLI documentation with new commands/options
3. Add or update code examples that actually work
4. Run quality gates: lint → typecheck → build → test
5. Update /docs/README.md if feature status changed
```

### Claude 3 (QA/Testing)
```markdown
## Documentation Requirements (MANDATORY)

### During Testing:
1. Verify documentation matches actual behavior
2. Test all documented examples and procedures
3. Document any discrepancies found

### After Quality Assurance:
1. Update testing documentation with new test cases
2. Document any quality standards changes
3. Update deployment documentation with quality gates
```

### Claude 4 (Documentation)
```markdown
## Documentation Requirements (MANDATORY)

### Primary Responsibility:
1. Maintain registry system and prevent duplicates
2. Enforce documentation update protocol across all roles
3. Audit documentation accuracy regularly
4. Consolidate duplicate or conflicting documentation

### Quality Standards:
1. All documentation must reflect current implementation
2. No aspirational documentation (document what exists)
3. Maintain bidirectional cross-references
4. Enforce consistent formatting and structure
```

### Claude 5 (Photo Intern)
```markdown
## Documentation Requirements (MANDATORY)

### Before Using Tools:
1. Check workflow documentation for current procedures
2. Document any tool usage that deviates from documented workflow
3. Update workflow documentation if better procedures discovered

### After Photo Processing:
1. Update workflow documentation with lessons learned
2. Document any tool modifications or improvements
3. Maintain staging workflow documentation accuracy
```

## Enforcement Mechanisms

### Pre-Creation Checklist
- [ ] Checked /docs/REGISTRY.md for existing coverage
- [ ] Searched existing docs with multiple keyword variations
- [ ] Identified update target OR confirmed genuinely new topic
- [ ] Planned documentation structure and cross-references

### Post-Task Verification
- [ ] Updated all affected documentation files
- [ ] Verified accuracy against actual implementation
- [ ] Updated master index and registry as needed
- [ ] Tested all code examples and procedures
- [ ] Cross-referenced related documentation

### Quality Gates Integration
```bash
# Add to all role workflows:
echo "Documentation updated and verified" >> task-completion.md

# Include in build process:
npm run docs:verify  # Future implementation
```

## Search Commands Reference

### Find Existing Documentation
```bash
# Search registry for topics
grep -i "heritage\|historical" /docs/REGISTRY.md
grep -i "CLI\|command" /docs/REGISTRY.md
grep -i "database\|schema" /docs/REGISTRY.md

# Search all documentation
grep -r "keyword1\|keyword2" /docs/ --include="*.md"
grep -r "CLI\|command.*line" /docs/ --include="*.md"
grep -r "video\|processing" /docs/ --include="*.md"

# Include plans directory
find /docs /plans -name "*.md" -exec grep -l "search.*terms" {} \;

# Check source code documentation
find /src -name "CLAUDE.md" -exec grep -l "topic" {} \;
```

### Prevent Duplicates
```bash
# Before creating new docs, run comprehensive search:
{
  echo "=== Registry Search ==="
  grep -i "your.*topic" /docs/REGISTRY.md
  
  echo "=== Documentation Search ==="
  grep -r "your.*topic" /docs/ --include="*.md"
  
  echo "=== Plans Search ==="
  grep -r "your.*topic" /plans/ --include="*.md"
  
  echo "=== Architecture Search ==="
  find /docs/architecture -name "*.md" -exec grep -l "your.*topic" {} \;
} > search-results.txt
```

## Violation Detection

### Common Violations
❌ **Created duplicate documentation** without checking registry  
❌ **Updated code without updating documentation**  
❌ **Left status indicators outdated**  
❌ **Created aspirational documentation** for unimplemented features  
❌ **Broke cross-references** by moving files without updating links

### Resolution Protocol
1. **Identify violation** through documentation audit
2. **Consolidate duplicates** into single authoritative source
3. **Update outdated information** to reflect current state
4. **Fix broken references** and update navigation
5. **Add to registry** to prevent future violations

## No Archive Policy

### Documentation Lifecycle Rule
**When work is complete, documentation must be either:**
1. **KEEP** - Still actively useful (workflows, architecture decisions, operational guides)
2. **DELETE** - Outdated planning, duplicate reports, completed strategies
3. **MERGE** - Valuable information integrated into active documentation

### Prohibited Actions
❌ **No "archive" directories** - Creates digital hoarding  
❌ **No "just in case" preservation** - If you won't reference it, delete it  
❌ **No duplicate completion reports** - One authoritative record per achievement  
❌ **No outdated planning documents** - Plans are for execution, not preservation

### Archive Alternative: Accomplishments Structure
For significant achievements requiring detailed documentation:
- **ACCOMPLISHMENTS.md** - Table of contents with high-level metrics
- **docs/accomplishments/** - Detailed completion reports for major milestones
- **Architecture docs** - Decision reasoning that remains relevant

### Decision Framework
**Ask: "Will I realistically reference this again?"**
- **Planning docs for completed work** → DELETE
- **Multiple reports on same topic** → MERGE into single authoritative source
- **Deprecated feature documentation** → DELETE (if code is gone)
- **Technical approaches for finished work** → DELETE (unless reusable)
- **Architecture reasoning** → KEEP (explains current system)
- **Active workflows** → KEEP (operational necessity)

## Success Metrics

### Quantitative Measures
- ✅ 100% of topics registered in REGISTRY.md
- ✅ Master index reflects actual implementation status
- ✅ Zero duplicate topics in main documentation
- ✅ All status indicators verified accurate
- ✅ All cross-references functional

### Qualitative Measures
- ✅ New developers understand system from docs alone
- ✅ Users find relevant information without confusion
- ✅ Documentation updates happen with every feature change
- ✅ Search system prevents duplicate creation
- ✅ Documentation drift eliminated through systematic prevention

## Integration with Role Templates

This protocol must be integrated into all Claude role templates to ensure systematic enforcement. No role can complete tasks without following the documentation update requirements.

---

**Stephen's Requirement Fulfilled:** "I NEVER want documentation to go out of date"

This systematic approach through registry prevention and mandatory updates ensures documentation always reflects current reality.