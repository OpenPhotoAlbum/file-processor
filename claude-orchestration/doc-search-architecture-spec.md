# Interactive Documentation Search Tool - Architecture Specification

**Version:** 1.0  
**Date:** 2025-07-24  
**Architect:** Claude 1  
**Target:** 52 documentation files (552KB total)  
**Users:** Stephen and all Claude specialists

## Executive Summary

The Interactive Documentation Search Tool (`doc-search.sh`) provides fast, multi-keyword search across all project documentation with relevance ranking, interactive result selection, and clean markdown display. This eliminates the current manual grep searches and makes Claude 4's comprehensive documentation easily accessible.

## Core Architecture

### 1. Command Interface

```bash
# Multi-keyword search with AND logic
./doc-search.sh "mmp" "exif"
./doc-search.sh "claude" "orchestration" "tasks"

# Interactive mode (prompts for keywords)
./doc-search.sh --interactive

# Advanced options
./doc-search.sh --help
./doc-search.sh --version
```

### 2. Search Algorithm Design

#### A. Multi-Keyword Processing
```bash
# Input: ./doc-search.sh "mmp" "exif" "metadata"
# Processing:
# 1. Normalize keywords (lowercase, trim)
# 2. Create ripgrep pattern with AND logic
# 3. Search all .md files in docs/ recursively
```

#### B. Relevance Ranking Algorithm

**Scoring Factors (weighted):**
1. **Keyword Density** (40%) - Total matches per document
2. **Keyword Proximity** (30%) - How close keywords appear together  
3. **Section Importance** (20%) - Headers weight more than body text
4. **File Priority** (10%) - Some files more important (README, getting-started)

**Scoring Formula:**
```bash
relevance_score = (
    (keyword_count / document_length) * 0.4 +
    (proximity_bonus) * 0.3 +
    (header_match_bonus) * 0.2 +
    (file_priority_bonus) * 0.1
) * 100
```

#### C. Search Implementation Pipeline

```bash
#!/bin/bash
# doc-search.sh core search pipeline

function search_documentation() {
    local keywords=("$@")
    local search_pattern=""
    local temp_results="/tmp/doc-search-results-$$"
    
    # 1. Build ripgrep pattern for AND logic
    for keyword in "${keywords[@]}"; do
        search_pattern+="(?=.*${keyword})"
    done
    
    # 2. Execute search with context
    rg --ignore-case \
       --type md \
       --heading \
       --line-number \
       --context 2 \
       --multiline \
       "${search_pattern}" \
       docs/ > "$temp_results"
    
    # 3. Parse and score results
    parse_and_rank_results "$temp_results" "${keywords[@]}"
    
    # 4. Present interactive menu
    show_interactive_menu
}
```

### 3. Interactive Menu System

#### A. Results Display Format
```
┌─ Documentation Search Results ────────────────────────────────────────┐
│                                                                       │
│  Found 8 matches for: "mmp" + "exif"                                 │
│                                                                       │
│  [1] 📊 docs/cli/README.md (Score: 89)                               │
│      ↳ "MMP CLI tool for EXIF metadata extraction..."                │
│                                                                       │
│  [2] 🔧 docs/mmp-tool-documentation.md (Score: 76)                   │
│      ↳ "EXIF data processing with MMP pipeline..."                   │
│                                                                       │
│  [3] 📚 docs/getting-started.md (Score: 62)                          │
│      ↳ "Quick start guide for MMP EXIF processing..."                │
│                                                                       │
│  [q] Quit   [r] Refine search   [h] Help                            │
│                                                                       │
└───────────────────────────────────────────────────────────────────────┘

Select document to view (1-8): 
```

#### B. Document Viewer Design

```bash
function display_document() {
    local file_path="$1"
    local keywords=("${@:2}")
    
    # Clean markdown display with:
    # - Syntax highlighting for headers
    # - Keyword highlighting 
    # - Line numbers for reference
    # - Pagination with less
    
    cat "$file_path" | \
        highlight_keywords "${keywords[@]}" | \
        add_line_numbers | \
        less -R -S
}
```

### 4. Unix Tool Integration

#### A. Core Dependencies (Standard Unix Tools)
- **ripgrep (rg)** - Fast multi-line regex search
- **less** - Paginated document viewing
- **awk** - Text processing and scoring
- **sort** - Result ranking
- **bash** - Core script execution

#### B. Fallback Strategy
```bash
# If ripgrep not available, fallback to grep
if ! command -v rg >/dev/null 2>&1; then
    echo "Warning: ripgrep not found, using grep (slower)"
    use_grep_search "${keywords[@]}"
else
    use_ripgrep_search "${keywords[@]}"
fi
```

### 5. User Experience Features

#### A. Progressive Search Refinement
```bash
# After viewing results, user can refine
Select document to view (1-8, r to refine): r

Current search: "mmp" + "exif"
Add keyword: metadata
New search: "mmp" + "exif" + "metadata"

# Re-run search with additional keyword
```

#### B. Context-Aware Display
```bash
# Show surrounding context for matches
Line 42: ## MMP Configuration
Line 43: 
Line 44: The **MMP tool** processes **EXIF** metadata from photos...
         ^^^              ^^^
Line 45: This includes camera settings, GPS coordinates, and timestamps.
Line 46:
```

#### C. Search History (Optional)
```bash
# Save recent searches to ~/.doc-search-history
echo "$(date): mmp exif" >> ~/.doc-search-history

# Quick access to recent searches
./doc-search.sh --history
```

### 6. Performance Optimization

#### A. File Caching
```bash
# Cache file list to avoid repeated filesystem scans
DOCS_CACHE="/tmp/doc-search-files-cache"
if [[ ! -f "$DOCS_CACHE" || docs/ -nt "$DOCS_CACHE" ]]; then
    find docs/ -name "*.md" > "$DOCS_CACHE"
fi
```

#### B. Search Result Limits
```bash
# Limit results to prevent overwhelming display
MAX_RESULTS=20
MIN_SCORE_THRESHOLD=30
```

### 7. Integration Points

#### A. Claude Role Integration
```bash
# Integration with chain-status.sh for easy access
# Add to role templates:
echo "Use './doc-search.sh [keywords]' to find relevant documentation"
```

#### B. MCP Integration (Future)
```bash  
# Potential future enhancement - MCP semantic search
# For now, focus on keyword-based search that's immediately useful
```

### 8. Error Handling & Edge Cases

#### A. No Results Found
```bash
┌─ Documentation Search Results ────────────────────────────────────────┐
│                                                                       │
│  No matches found for: "nonexistent" + "keyword"                     │
│                                                                       │
│  Suggestions:                                                         │
│  • Check spelling of keywords                                         │
│  • Try broader search terms                                           │
│  • Use './doc-search.sh --interactive' for guided search             │
│                                                                       │
│  [r] Refine search   [q] Quit                                        │
│                                                                       │
└───────────────────────────────────────────────────────────────────────┘
```

#### B. Large Result Sets
```bash
# When >20 results found
Found 47 matches for: "claude"
Showing top 20 results (sorted by relevance)

[20] ... (27 more results available)
[a] Show all results   [r] Refine search   [q] Quit
```

#### C. Malformed Keywords
```bash
# Handle special characters, empty strings, etc.
function sanitize_keywords() {
    local keyword="$1"
    # Remove special regex characters, normalize spacing
    echo "$keyword" | sed 's/[.*\[\]{}()\+\?^$|\\]/\\&/g' | xargs
}
```

### 9. Implementation Phases

#### Phase 1: Core Search Engine (Builder)
- Multi-keyword search with ripgrep
- Basic relevance scoring
- File discovery and caching

#### Phase 2: Interactive Interface (Builder)  
- Menu system with numbered selection
- Clean results display
- Keyword highlighting in documents

#### Phase 3: Enhanced UX (Builder)
- Search refinement
- Context display
- Error handling and suggestions

#### Phase 4: Testing & Validation (Guardian)
- Test across all 52 documentation files
- Edge case validation
- Performance benchmarking

### 10. Success Metrics

**Functionality:**
- ✅ Multi-keyword AND search works correctly
- ✅ Results ranked by relevance
- ✅ Interactive selection functional
- ✅ Clean document display

**Performance:**
- ✅ Search completes in <2 seconds for typical queries
- ✅ Handles 50+ result sets gracefully
- ✅ Memory usage stays reasonable

**Usability:**
- ✅ Both Stephen and Claudes can use effectively
- ✅ No external dependencies beyond standard Unix tools
- ✅ Clear error messages and suggestions

### 11. Future Enhancements (Post-MVP)

**Advanced Features:**
- Regular expression search mode
- Full-text indexing for faster searches
- Search within specific documentation sections
- Export search results to file
- Integration with MCP semantic search

**Quality of Life:**
- Fuzzy keyword matching
- Typo correction suggestions
- Most frequently searched terms tracking
- Quick access to recently viewed documents

## Implementation Notes

**File Location:** `/claude-orchestration/tools/doc-search.sh`  
**Permissions:** Executable by all users (`chmod +x`)  
**Dependencies:** Standard Unix tools (rg preferred, grep fallback)  
**Testing:** Validate against all 52 current documentation files

## Conclusion

This Interactive Documentation Search Tool will transform how Stephen and all Claude specialists access our comprehensive documentation. By providing fast, intuitive search with clean display, it eliminates the current friction of manual grep searches and makes Claude 4's excellent documentation truly accessible.

The focus on Unix tool integration and zero external dependencies ensures reliability and broad compatibility across development environments.

---

**Next Phase:** Script Implementation (Claude 2 Builder)