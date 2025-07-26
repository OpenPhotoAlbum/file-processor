# Documentation Requirements Protocol

## Mandatory Documentation Workflow

### Before Creating ANY Documentation

1. **Check `/docs/REGISTRY.md`** - ALWAYS search for existing documentation first
2. **Search existing docs** using the required search workflow
3. **Never create duplicate documentation** - update existing instead

### Documentation Search Protocol

**BEFORE creating ANY new .md file:**
```bash
# MANDATORY search workflow:
grep -r "topic keywords" /docs/ --include="*.md"
find /docs -name "*.md" -exec grep -l "related.*terms" {} \;
```

**Three options only:**
- **Update existing doc** if topic already covered (PREFERRED)
- **Create related doc** under existing topic umbrella  
- **Register new topic** in `/docs/REGISTRY.md` first, then create

## Documentation Standards

**Every document created MUST:**
- [ ] Be registered in `/docs/REGISTRY.md`
- [ ] Include accurate examples that actually work
- [ ] Show current dates and status information
- [ ] Match actual working implementation (not planned implementation)

## Registry Management

### Core Registry Operations
1. **Maintain `/docs/REGISTRY.md`** - Keep it comprehensive and current
2. **Update master index** `/docs/README.md` with all changes
3. **Consolidate duplicate docs** when discovered
4. **Archive outdated docs** to `/docs/archive/deprecated/`
5. **Verify documentation accuracy** against actual system behavior

## Role-Specific Documentation Requirements

### Architect Requirements
- Include documentation impact assessment in all task delegations
- Specify affected documentation in task specifications
- Never delegate tasks without documentation update requirements

### Implementation Requirements  
- Plan documentation updates alongside code implementation
- Update CLI help text when commands change
- Ensure documentation reflects actual implementation

### QA Requirements
- Document test procedures and coverage
- Create validation reports for major features
- Update testing sections in feature documentation

### Documentation Requirements
- Primary responsibility for registry management
- Consolidate and organize documentation ecosystem
- Ensure accuracy and prevent duplication

### Photo Processing Requirements
- Document all workflow procedures used
- Update scanning and processing guides
- Maintain heritage photo safety documentation

## Quality Gates

**No task is complete until:**
- [ ] Documentation reflects the implemented reality
- [ ] Registry is updated with any new documentation
- [ ] Affected documentation is updated
- [ ] CLI help text matches actual functionality (if applicable)

## Quality Standard

**Documentation is only valuable if it's accurate, discoverable, and prevents duplicates.**