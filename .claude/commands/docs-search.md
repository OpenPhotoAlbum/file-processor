# /docs-search - Intelligent Documentation Query

**Usage:** `/docs-search [query]`

You are any Claude role receiving a documentation query. Execute this protocol to provide intelligent documentation search results.

## Documentation Search Protocol

### Step 1: Acknowledge Query
Respond with:
```
📚 **Documentation Search: "[query]"**
Searching documentation registry and content...
```

### Step 2: Registry Search
1. **Check `/docs/REGISTRY.md`** for topic keywords matching the query
2. **Identify primary docs** and related files for the topic
3. **Note doc owners** and last updated dates
4. **Check status indicators** (✅ Current / ⚠️ Needs Update / ❌ Outdated)

### Step 3: Content Search  
Execute comprehensive search strategy:
```bash
# Multi-level search approach:
grep -r -i "query terms" /docs/ --include="*.md"
find /docs -name "*.md" -exec grep -l "keyword1\|keyword2\|keyword3" {} \;
```

### Step 4: MCP Semantic Search Integration
If available, also run semantic search for code-level context:
```bash
mcp__media-processor__search_codebase --query "[user query]"
```

### Step 5: Response Format
```markdown
📚 **Documentation Search Results for: "[query]"**

## Primary Documentation
- **[/docs/primary-doc.md](primary-doc.md)** - [Brief description]
  - **Status:** ✅ Current / ⚠️ Needs Update / ❌ Outdated
  - **Owner:** Claude X ([Role])
  - **Last Updated:** [date]

## Related Documentation
- **[/docs/related-doc.md](related-doc.md)** - [Description]
- **[/docs/workflows/workflow.md](workflows/workflow.md)** - [Description]

## Key Sections to Read
- **Section X:** [Specific answer to query]
- **Section Y:** [Related information]
- **Section Z:** [Implementation details]

## Quick Answer
[Direct answer if found in documentation - 1-2 sentences]

## Code Context (if available)
[Results from MCP semantic search showing related implementation]

## Documentation Status
- **Coverage:** Complete / Partial / Missing
- **Accuracy:** Current / Needs Verification / Outdated
- **Gaps:** [Any missing documentation identified]

## Suggested Next Steps
- [What to read first]
- [Additional searches to try]
- [Related topics to explore]
```

## Search Strategy Examples

### Feature Status Queries
**Query:** `/docs-search "MMP implementation status"`
**Search approach:**
- Look for registry entries with "MMP", "unified CLI", "command line"
- Search content for "status", "implemented", "working", "pending"
- Cross-reference with actual implementation (test commands)

### Workflow Queries  
**Query:** `/docs-search "how to scan photos"`
**Search approach:**
- Look for workflow documentation in `/docs/workflows/`
- Search for "scan", "scanning", "photo", "digitization"
- Find step-by-step procedures and tool usage

### Architecture Queries
**Query:** `/docs-search "database schema"`
**Search approach:**
- Look for architecture documentation
- Search for "database", "schema", "tables", "migration"
- Find design decisions and current structure

### System Integration Queries
**Query:** `/docs-search "Claude orchestration"`
**Search approach:**
- Look for system design documentation
- Search for "orchestration", "multi-agent", "Claude", "workflow"
- Find role definitions and communication protocols

## Advanced Search Features

### Status-Aware Results
Always include current status of documented features:
- ✅ **Implemented and working** - Feature fully operational
- 🔄 **In progress** - Feature partially implemented  
- ⚠️ **Needs update** - Documentation outdated
- ❌ **Deprecated** - Feature removed or replaced

### Owner-Based Context
Show which Claude role is responsible for maintaining the documentation:
- **Claude 1 (Architect):** System design, architecture decisions
- **Claude 2 (Implementation):** Feature implementation, technical details
- **Claude 3 (QA):** Testing procedures, quality standards
- **Claude 4 (Documentation):** User guides, API references
- **Claude 5 (Photo Intern):** Workflow procedures, operational guides

### Gap Analysis
Identify missing documentation:
- **Found:** Complete coverage available
- **Partial:** Some documentation exists but incomplete
- **Missing:** No documentation found for this topic
- **Outdated:** Documentation exists but needs updating

## Registry Integration

### Before Registry Exists (Fallback Mode)
If `/docs/REGISTRY.md` doesn't exist yet:
1. **Use content search only** with comprehensive grep strategy
2. **Note registry status:** "Documentation registry not yet available"
3. **Suggest registry creation:** "This search would be more effective with a documentation registry"

### After Registry Implementation
Once Claude 4 creates the registry:
1. **Always check registry first** for topic mapping
2. **Use registry keywords** to improve search accuracy
3. **Update registry** if new documentation topics discovered during search

## Error Handling

### No Results Found
```markdown
📚 **Documentation Search Results for: "[query]"**

## No Direct Matches Found
- Searched `/docs/` directory comprehensively
- No registry entries match query keywords
- No content matches found in existing documentation

## Suggested Alternatives
- Try related keywords: [suggestions]
- Check if topic is covered under different name
- Consider if documentation needs to be created

## Create Documentation?
This may be a documentation gap. Consider:
- Registering new topic in `/docs/REGISTRY.md`
- Creating documentation for this area
- Asking specialist Claude for information
```

### Registry Unavailable
```markdown
📚 **Documentation Search Results for: "[query]"**

## Registry Status
⚠️ Documentation registry not yet available
Falling back to content-only search...

[Continue with content search results]

## Note
Search effectiveness will improve once Claude 4 completes the documentation registry system.
```

## Quality Standards

### Search Accuracy
- **Be specific** about what documentation covers
- **Distinguish current vs outdated** information clearly
- **Provide context** about why documentation might be relevant
- **Suggest follow-up actions** based on search results

### Response Completeness
- **Direct answer** if query can be answered immediately
- **Navigation guidance** to find detailed information
- **Status awareness** about documentation currency
- **Gap identification** for missing coverage

Execute this documentation search protocol immediately when the slash command is invoked with a query.