# /misunderstood - Claude Misunderstanding Tracking System

**Usage:** `/misunderstood [category|report|list|patterns|help]`

Execute comprehensive misunderstanding capture and pattern analysis for continuous Claude improvement.

## Command Modes

### `/misunderstood` (Interactive Mode)

Start interactive capture workflow to document a recent Claude misunderstanding:

1. **Context Detection:** Analyze recent conversation for misunderstanding context
2. **Guided Capture:** Walk through structured data collection:
   - What was your original request?
   - What did Claude do instead?
   - Which Claude was involved? (1-5 or unknown)
   - Category confirmation with suggestions
   - Additional context or tags
3. **Report Generation:** Create timestamped report with complete context
4. **Storage:** Save to `/claude-orchestration/feedback/misunderstandings/`

### `/misunderstood [category]` (Quick Capture)

Rapid capture with predefined category. Available categories:
- **wrong-action** - Did something different than requested
- **incomplete** - Partially completed task without finishing  
- **overreach** - Did more than asked or exceeded scope
- **misinterpret** - Misunderstood the intent or requirements
- **wrong-role** - Claude acting outside their designated role
- **process-skip** - Skipped required processes or protocols
- **assumption** - Made incorrect assumptions without clarification
- **context-loss** - Lost important context from conversation

Example: `/misunderstood wrong-action`

### `/misunderstood report` (Statistics)

Generate comprehensive statistics report showing:
- Total reports and time period
- Breakdown by category with percentages
- Distribution by Claude role (1-5)
- Severity analysis (high/medium/low)
- Recent trend analysis
- Most common patterns identified

### `/misunderstood list` (Recent Items)

Show recent misunderstandings with summaries:
- Last 10 reports by default
- Brief description and category
- Date and Claude role involved
- Severity indication
- Quick access to full reports

### `/misunderstood patterns` (Pattern Analysis)

Detailed pattern analysis and recommendations:
- Recurring failure modes identification
- Project context correlations
- Process improvement suggestions
- Trend tracking over time
- Role template update recommendations

### `/misunderstood help` (Usage Guide)

Complete usage documentation with examples and best practices.

## Implementation

When this command is executed, the Claude should:

1. **Parse the command arguments** to determine mode
2. **Load required data files** from `/claude-orchestration/feedback/data/`
3. **Execute the appropriate workflow** based on the mode
4. **Update statistics and patterns** as needed
5. **Provide clear, actionable output** to the user

## Data Structure

### Individual Report Format
```markdown
# Misunderstanding Report: [Category]

**Report ID:** [timestamp]-[category]
**Date:** [ISO timestamp]
**Claude Role:** [Which Claude if known, or "Unspecified"]
**Session Context:** [Current task/project context]
**Severity:** [high/medium/low]

## What Was Requested
[Clear description of user's actual request]

## What Claude Did Instead  
[Description of Claude's incorrect action or response]

## Impact Assessment
[Brief assessment of consequences or problems caused]

## Root Cause Analysis
[Analysis of why this misunderstanding occurred]

## Conversation Snippet
```
[Relevant conversation excerpt showing the misunderstanding]
```

## Pattern Tags
[Auto-generated and manual tags for pattern analysis]
- #[category]
- #[claude-role]
- #[project-context]
- #[custom-tags]

## Resolution Notes
[How the issue was resolved, if applicable]
```

### Interactive Capture Workflow

For the basic `/misunderstood` command, Claude should:

1. **Analyze recent conversation** for context clues
2. **Suggest likely category** based on conversation analysis
3. **Prompt for details** with guided questions:
   ```
   I'll help capture this misunderstanding for pattern analysis.
   
   What was your original request? 
   > [Wait for user input]
   
   What did Claude do instead?
   > [Wait for user input]
   
   Which Claude was involved? [1-5 or unknown]
   > [Wait for user selection]
   
   Suggested category: [category] - Change? [y/n]
   > [Wait for user confirmation]
   
   Additional context or tags?
   > [Wait for optional user input]
   ```

4. **Generate complete report** with conversation context
5. **Show generated report** for user approval
6. **Save to timestamped file** in misunderstandings directory
7. **Update statistics** in data files

## Expected Behavior

- **File Management:** Create timestamped files in proper directory structure
- **Data Persistence:** Update JSON data files with new statistics
- **Pattern Detection:** Identify recurring issues for analysis
- **User Experience:** Streamlined capture workflow
- **Integration:** Connect with orchestration system logs when available

## File Locations

- **Command Definition:** `/.claude/commands/misunderstood.md` (this file)
- **Misunderstanding Reports:** `/claude-orchestration/feedback/misunderstandings/`
- **Categories:** `/claude-orchestration/feedback/data/categories.json`
- **Statistics:** `/claude-orchestration/feedback/data/statistics.json`
- **Patterns:** `/claude-orchestration/feedback/data/patterns.json`
- **Analysis Reports:** `/claude-orchestration/feedback/reports/`

## Success Metrics

- Captures misunderstandings completely and accurately
- Generates meaningful statistics and pattern analysis
- Provides actionable insights for Claude improvement
- Integrates seamlessly with existing orchestration system
- Maintains data integrity across multiple sessions

## Command Execution Logic

When `/misunderstood` is executed, Claude should immediately:

### Parse Arguments and Execute

```
ARGUMENTS: {arguments}

Based on the arguments provided, execute the appropriate workflow:
```

### No Arguments - Interactive Capture

```javascript
if (arguments === "" || arguments === undefined) {
  // Interactive capture workflow
  console.log("I'll help capture this misunderstanding for pattern analysis.\n");
  
  // Step 1: Context analysis
  const context = analyzeRecentConversation();
  const suggestedCategory = suggestCategoryFromContext(context);
  
  // Step 2: Guided prompts
  const userRequest = await prompt("What was your original request?");
  const claudeAction = await prompt("What did Claude do instead?");
  const claudeRole = await prompt("Which Claude was involved? [1-5 or unknown]");
  const categoryConfirm = await prompt(`Suggested category: ${suggestedCategory} - Change? [y/n]`);
  const additionalContext = await prompt("Additional context or tags? (optional)");
  
  // Step 3: Generate and save report
  const report = generateMisunderstandingReport({
    userRequest,
    claudeAction,
    claudeRole,
    category: categoryConfirm === 'n' ? await prompt("Enter category:") : suggestedCategory,
    additionalContext,
    conversationContext: context
  });
  
  console.log("Generated Report:\n" + report);
  const approval = await prompt("Save this report? [y/n]");
  
  if (approval === 'y') {
    saveMisunderstandingReport(report);
    updateStatistics(report);
    console.log("✅ Misunderstanding report saved successfully");
  }
}
```

### Category Argument - Quick Capture

```javascript
if (isValidCategory(arguments)) {
  // Quick capture with predefined category
  const category = arguments;
  const timestamp = new Date().toISOString();
  
  console.log(`Quick capture mode: ${category}`);
  console.log("Please provide the key details:\n");
  
  const userRequest = await prompt("What was your original request?");
  const claudeAction = await prompt("What did Claude do instead?");
  
  const report = generateMisunderstandingReport({
    userRequest,
    claudeAction,
    category,
    claudeRole: "unknown",
    conversationContext: analyzeRecentConversation()
  });
  
  saveMisunderstandingReport(report);
  updateStatistics(report);
  console.log("✅ Quick capture completed");
}
```

### Report Mode - Statistics

```javascript
if (arguments === "report") {
  const stats = loadStatistics();
  const report = generateStatisticsReport(stats);
  console.log(report);
}
```

### List Mode - Recent Items

```javascript
if (arguments === "list") {
  const recentReports = loadRecentMisunderstandings(10);
  const summary = formatRecentSummary(recentReports);
  console.log(summary);
}
```

### Patterns Mode - Analysis

```javascript
if (arguments === "patterns") {
  const patterns = analyzePatterns();
  const analysis = formatPatternAnalysis(patterns);
  console.log(analysis);
}
```

### Help Mode

```javascript
if (arguments === "help") {
  console.log(getHelpText());
}
```

## Implementation Functions

The Claude executing this command should implement these core functions:

### Data Management Functions

```typescript
function loadCategories(): Record<string, CategoryInfo> {
  // Load from /claude-orchestration/feedback/data/categories.json
}

function loadStatistics(): StatisticsData {
  // Load from /claude-orchestration/feedback/data/statistics.json
}

function saveMisunderstandingReport(report: MisunderstandingReport): void {
  // Save to /claude-orchestration/feedback/misunderstandings/[timestamp]-[category].md
}

function updateStatistics(report: MisunderstandingReport): void {
  // Update statistics.json with new data
}
```

### Analysis Functions

```typescript
function analyzeRecentConversation(): ConversationContext {
  // Analyze recent messages for context clues
}

function suggestCategoryFromContext(context: ConversationContext): string {
  // Use context to suggest most likely category
}

function analyzePatterns(): PatternAnalysis {
  // Analyze all reports for recurring patterns
}
```

### Report Generation Functions

```typescript
function generateMisunderstandingReport(data: ReportData): string {
  // Generate full markdown report using template
}

function generateStatisticsReport(stats: StatisticsData): string {
  // Generate formatted statistics display
}

function formatRecentSummary(reports: MisunderstandingReport[]): string {
  // Format recent reports summary
}
```

This system enables systematic improvement of Claude performance through structured feedback collection and pattern analysis.