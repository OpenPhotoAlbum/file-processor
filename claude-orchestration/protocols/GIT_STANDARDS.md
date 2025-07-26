# Git Commit Standards

## Mandatory Git Commit Procedure

**CRITICAL: Before marking ANY task complete, you MUST commit your work to git:**

1. **Check git status:** `git status` - Verify what files have been modified/added
2. **Stage changes:** `git add [relevant-files]` - Add all relevant changes
3. **Create commit:** `git commit -m "descriptive message"`
4. **Verify clean state:** `git status` - Confirm working directory is clean
5. **ONLY THEN:** Mark task as completed in communication logs

## Commit Message Format

```
[type]([scope]): brief description of changes

- Specific change 1
- Specific change 2
- Fixes/implements: reference to task or issue

🤖 Generated with Claude Code
```

### Commit Types by Role

- **Architecture:** `arch([system])` - architectural decisions and specifications
- **Implementation:** `[component]` - code changes and feature implementation
- **Testing:** `tests([component])` - test coverage and quality validation
- **Documentation:** `docs([topic])` - documentation updates and registry changes
- **Photos:** `photos([workflow])` - photo processing and workflow updates
- **Database:** `data([schema])` - database schema and ETL changes

## Success Metrics

- **Git status shows clean working directory** before task completion
- Task is NOT complete with uncommitted changes
- Include git commit hash in completion reports when applicable

## Failure Protocol

**If git commit fails:**
- Task is NOT complete regardless of functional success
- Fix git issues first, then retry commit
- Never mark task complete with uncommitted changes
- Escalate persistent git issues to Claude 1 (Architect)

## Role-Specific Requirements

- **Architect:** Maintain clean git history for team recovery and context preservation
- **Builder:** All code changes must be committed before task completion
- **Guardian:** Include git commit hash in quality reports as version control evidence
- **Chronicler:** Registry updates required when new documentation is created
- **Curator:** Git commits provide critical rollback capability for heritage photo work
- **Data:** Database changes require migration documentation and schema updates