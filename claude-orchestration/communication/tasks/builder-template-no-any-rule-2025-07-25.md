# Task: Update Builder Template - Enforce No-Any Rule

**Task ID:** builder-template-no-any-rule-2025-07-25  
**From:** Claude 1 (Architect)  
**To:** Claude 1 (Self) / Template Maintenance  
**Priority:** MEDIUM  
**Date:** 2025-07-25

## Task Overview

Update Claude 2 (Builder) role template to explicitly enforce the "no-any" rule when working with TypeScript in both the MMP CLI and main pipeline CLI projects.

## Current Situation

The project CLAUDE.md already specifies:
- **Type safety**: **NEVER use `any` type** - use semantic aliases from `types/semantic-any.ts` when dynamic typing is truly required

However, this needs to be reinforced in Builder's specific role template to ensure consistent enforcement during implementation tasks.

## Required Changes

### 1. Update Builder Role Template
Add to `/claude-orchestration/role-templates/claude-2-implementation.md`:

```markdown
### TypeScript Standards (CRITICAL)
**NEVER use the `any` type in TypeScript code.** This is a hard rule with zero exceptions.

When dynamic typing is genuinely required:
1. First, question if dynamic typing is truly necessary
2. Use semantic type aliases from `types/semantic-any.ts`:
   - `ExternalToolOutput` - For external tool responses
   - `UnknownSidecarData` - For variable metadata structures
   - `UnknownJsonContent` - For parsed JSON of unknown shape
3. Document WHY dynamic typing is needed with a comment
4. Convert to proper types as soon as the structure is known

Example enforcement:
```typescript
// ❌ NEVER DO THIS
function processData(input: any): any {
  return input.data;
}

// ✅ DO THIS INSTEAD
import { ExternalToolOutput } from '../../types/semantic-any.js';

function processData(input: ExternalToolOutput): unknown {
  // ExternalToolOutput used because whisper.cpp output format varies by version
  return input.data;
}
```
```

### 2. Add to Builder's Quality Checklist
Include in implementation checklist:
- [ ] No `any` types used (verified with ESLint no-explicit-any rule)
- [ ] All dynamic types use semantic aliases with documentation
- [ ] Type assertions minimized and justified

### 3. Update Task Communication
When Architect assigns TypeScript tasks to Builder, include reminder:
"Remember: Zero tolerance for `any` types. Use semantic aliases from types/semantic-any.ts if dynamic typing is genuinely required."

## Implementation Notes

1. This applies to:
   - MMP CLI (`/photos/tools/refactor/mmp/`)
   - Main pipeline CLI (`/src/`)
   - Any TypeScript code in the project

2. The semantic-any system exists to:
   - Maintain type safety discipline
   - Document why dynamic typing is needed
   - Make it easy to find and convert dynamic types later

3. ESLint already enforces this via `@typescript-eslint/no-explicit-any`

## Success Criteria

- Builder's role template explicitly mentions the no-any rule
- All new TypeScript code from Builder uses proper types or semantic aliases
- Dynamic typing decisions are documented and justified
- Code reviews catch any `any` usage before merge

## Timeline

This should be implemented before the next major TypeScript task assignment to ensure consistent code quality across all new implementations.