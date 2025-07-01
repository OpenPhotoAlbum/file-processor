# Feature Complete Command

Complete development workflow for finishing a feature safely and maintaining code quality.

## Purpose
Run this after implementing any new feature or making significant changes to ensure the codebase remains production-ready and all systems are properly updated. If any of these steps fail, please confirm with me and if I agree, proceed to debug and fix the issue.

## Steps

1. **Run quality checks**
   ```bash
   npm run lint:check
   ```
   Verify ESLint compliance with zero warnings/errors.

2. **Verify TypeScript compilation**
   ```bash
   npm run typecheck
   ```
   Ensure all types are correct and no compilation errors exist.

3. **Build the project**
   ```bash
   npm run build
   ```
   Complete build pipeline including all quality gates.

4. **Run complete test suite**
   ```bash
   npm test
   ```
   Execute all unit tests and CLI response tests to prevent regressions.

5. **Update MCP search index**
   ```bash
   npm run mcp-project:rebuild
   ```
   Ensure new code and documentation are searchable.

6. **Verify MCP system health**
   ```bash
   npm run mcp-project:check-drift
   ```
   Confirm no drift detected and system is synchronized.

## Success Criteria
- ✅ Linting passes with zero warnings/errors
- ✅ TypeScript compilation succeeds without errors  
- ✅ Full build pipeline completes successfully
- ✅ All tests pass (no regressions)
- ✅ MCP index updated successfully
- ✅ MCP drift check shows "NO DRIFT: Database is up to date"

## When to Use
- After implementing a new feature
- Before committing major changes
- After refactoring existing code
- Before creating pull requests
- When preparing for deployment

## Notes
This command enforces the project's quality standards. If any step fails, fix the issues before proceeding with commits or deployments.