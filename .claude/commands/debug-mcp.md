# Debug MCP Command

Diagnose and fix MCP (Model Context Protocol) system issues when search isn't working properly.

## Purpose
Use this when MCP search results seem stale, drift detection is reporting false positives, or the search index appears out of sync.

## Steps

1. **Check current MCP status**
   ```bash
   npm run mcp-project:check-drift
   ```
   Identify if there are real alignment issues or false positives.

2. **Preview what files would be processed**
   ```bash
   npm run mcp-project:preview
   ```
   Verify file filtering is working correctly and count looks reasonable.

3. **Clean database if needed**
   ```bash
   cd mcp-project-context && rm -f embeddings.db project-embeddings.db
   ```
   Only run if drift shows major alignment issues or database corruption.

4. **Initialize fresh database**
   ```bash
   npm run mcp-project:setup
   ```
   Create clean database tables (only needed after step 3).

5. **Rebuild search index**
   ```bash
   npm run mcp-project:rebuild
   ```
   Generate fresh embeddings for current project state.

6. **Verify system health**
   ```bash
   npm run mcp-project:check-drift
   ```
   Should show "NO DRIFT: Database is up to date" with matching file counts.

7. **Test search functionality**
   ```bash
   npm run mcp-project:test
   ```
   Verify semantic search is returning relevant results.

## Success Criteria
- ✅ Preview shows reasonable file count (around 244 files)
- ✅ Rebuild completes without errors (~2,680 chunks)
- ✅ Drift check shows perfect alignment (0 issues)
- ✅ Search test returns relevant code snippets

## Common Issues
- **High file count in preview**: Check .brainignore patterns, may be including node_modules or other large directories
- **False drift warnings**: Database might contain stale entries from different project or old rebuild
- **Search returns irrelevant results**: Index may be stale or corrupted, needs rebuild

## When to Use
- MCP search returns outdated or irrelevant results
- Drift detection shows false positives
- After major file reorganization or cleanup
- When switching between different project branches
- If MCP server seems unresponsive