# Claude 2 Task: MMP CLI Refactoring for File Size Compliance

**Task ID:** mmp-cli-refactoring-2025-07-23  
**From:** Claude 1 (Architect/CTO)  
**To:** Claude 2 (Builder/Implementation)  
**Priority:** HIGH  
**Working Directory:** `/mmp/src/`

## Task Overview

Refactor the oversized MMP CLI file (`cli.ts` - 689 lines) to comply with our 500-line STRICT zone enforcement. The CLI is a critical performance bottleneck due to expensive Read() operations on large files.

## Critical Context

**Problem:** `/mmp/src/cli.ts` is 689 lines, exceeding STRICT zone limit by 189 lines  
**Impact:** Read() operations are expensive; large files indicate poor separation of concerns  
**Zone:** CLI implementations are STRICT enforcement zone (500 line maximum)  
**Performance:** This file is frequently read during development, causing slowdowns

## Implementation Requirements

### Target Architecture

Break `cli.ts` into focused modules with single responsibility:

```
/mmp/src/
├── cli/
│   ├── index.ts              # Main CLI entry point (<100 lines)
│   ├── commands/            # Individual command handlers
│   │   ├── scan.ts          # MMP scan command
│   │   ├── crop.ts          # MMP crop command  
│   │   ├── gps.ts           # MMP gps command
│   │   ├── dates.ts         # MMP dates command
│   │   ├── rotate.ts        # MMP rotate command
│   │   └── transcribe.ts    # MMP transcribe command
│   ├── options/            # Option parsing and validation
│   │   ├── parser.ts        # Command-line argument parsing
│   │   ├── validator.ts     # Input validation logic
│   │   └── types.ts         # CLI option type definitions
│   └── output/             # Output formatting
│       ├── formatter.ts     # Output format handling (JSON, text)
│       ├── progress.ts      # Progress bar implementations
│       └── logger.ts        # CLI-specific logging
└── cli.ts                   # Deprecated - remove after refactoring
```

### Modularization Principles

1. **Single Responsibility:** Each file handles one command or one cross-cutting concern
2. **Import/Export Clarity:** Clean module boundaries with typed interfaces
3. **Command Isolation:** Each command handler is independently testable
4. **Shared Infrastructure:** Common options/output logic properly abstracted

### File Size Targets

- **`cli/index.ts`:** <100 lines (main router only)
- **Command handlers:** <150 lines each (focused on single command logic)
- **Option/output modules:** <200 lines each (infrastructure, more flexibility)
- **All files:** Must be <500 lines (STRICT zone compliance)

### Functional Requirements

**Before refactoring:**
1. Run existing tests to establish baseline: `npm test`
2. Verify current CLI behavior works as expected
3. Document any existing bugs or issues

**After refactoring:**
1. All existing functionality preserved (no behavior changes)
2. All tests continue to pass
3. CLI command interface identical (backward compatibility)
4. Performance maintained or improved

## Success Metrics

### File Size Compliance
- [ ] Original `cli.ts` removed or <500 lines
- [ ] All new files <500 lines (with targets above)
- [ ] No single file exceeds STRICT zone limit

### Functional Preservation
- [ ] All MMP commands work identically: `mmp scan`, `mmp crop`, `mmp gps`, `mmp dates`, `mmp rotate`, `mmp transcribe`
- [ ] Option parsing unchanged (all flags and arguments work)
- [ ] Error handling preserved
- [ ] Output formatting identical

### Quality Gates
- [ ] `npm run lint:check` passes with no new warnings
- [ ] `npm run typecheck` succeeds without errors
- [ ] `npm run build` completes successfully
- [ ] `npm test` maintains existing pass rate
- [ ] Manual testing confirms CLI behavior unchanged

### Architecture Quality
- [ ] Clean module boundaries with typed interfaces
- [ ] No circular dependencies between modules
- [ ] Consistent import/export patterns
- [ ] Each module has single, clear responsibility

## Documentation Impact Assessment

**Affected Documentation:**
- [ ] `/photos/tools/refactor/mmp/README.md` - Update with new file structure
- [ ] Any CLI usage examples that reference file structure

**New Documentation Required:**
- [ ] Architecture notes on modular CLI design in existing docs

## Context Notes

**Existing CLI Structure:**
The current `cli.ts` likely contains:
- Argument parsing logic
- Command routing/dispatch
- Individual command implementations
- Output formatting
- Error handling
- Progress reporting

**Critical Constraints:**
- **Zero behavior changes** - Users rely on existing CLI interface
- **Backward compatibility** - All existing scripts must continue working
- **Heritage photo safety** - CLI used for irreplaceable photo processing
- **Performance** - Modular design should improve, not degrade, performance

**Testing Strategy:**
- Use existing test suite as regression prevention
- Test each command individually after refactoring
- Verify option parsing with complex flag combinations
- Test error scenarios and edge cases

## Delivery Requirements

**Evidence Required:**
1. **Before/after line counts:** Show file size reduction
2. **Test results:** Demonstrate no regressions
3. **Build output:** Confirm successful compilation
4. **CLI verification:** Show commands work identically

**Communication Protocol:**
1. Acknowledge task receipt with analysis of current structure
2. Provide refactoring plan for approval before implementation
3. Report progress with file-by-file completion
4. Final delivery with comprehensive testing evidence

## Risk Mitigation

**High Risks:**
- Breaking existing scripts that use MMP CLI
- Introducing subtle behavior changes
- Creating circular dependencies between modules

**Mitigation Strategies:**
- Extensive testing before/after refactoring
- Preserve existing interfaces exactly
- Careful dependency analysis during modularization
- Keep backup of original file until verification complete

This refactoring directly addresses performance concerns while establishing sustainable code architecture for future MMP development.