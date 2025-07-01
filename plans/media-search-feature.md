# Media File Search Feature Plan

## Overview
Add a search command to the CLI that allows users to find media files in the database using various criteria. The feature will start with essential search parameters but be designed for extensibility.

## Command Structure
```bash
media-processor search [options]
```

The search functionality will be implemented as a subcommand, providing clean separation from the main processing commands.

## Core Requirements

### 1. Search Scope
- **Data Source**: Search only files already in the database (no filesystem scanning)
- **Default Collection**: `archive` collection by default
- **Collection Override**: `--collection <name>` flag to search other collections (staging, processed)

### 2. Initial Search Parameters

#### Date/Time Searches
- `--date YYYY-MM-DD` - Exact date match
- `--date-range YYYY-MM-DD..YYYY-MM-DD` - Date range search
- `--date "relative"` - Relative dates like "yesterday", "last week", "last month"

#### Location Searches

**Generic Location Search (Broad Match)**
- `--location "searchterm"` - Searches across ALL location data (geolocation, landmarks, geographic features)
  - Uses flexible `LIKE %searchterm%` matching
  - Returns results with source indicator (e.g., "via GPS", "via landmark")

**Specific Location Searches (Precise Control)**

*Geolocation-based:*
- `--city "name"` - Search only geolocation city field
- `--state "abbr"` - Search only geolocation state field  
- `--city "name" --state "abbr"` - Combine for precision

*Landmark-based:*
- `--landmark [value]` - Search landmarks table
  - No value: Has any landmark nearby
  - `NONE`: Has no landmarks nearby
  - `"name"`: Near specific landmark
- `--park [value]` - Search landmarks where category='park'
  - No value: Near any park
  - `NONE`: Not near any parks
  - `"name"`: Near specific park
- `--recreation [value]` - Search Recreation.gov facilities

*Geographic Features:*
- `--feature [value]` - Search GNIS geographic features
- `--feature-type "type"` - Search by feature type (summit, lake, river, etc.)

*GPS Coordinates:*
- `--near lat,lng` - Search near GPS coordinates (future: add radius support)

### 3. Search Combinations
- **Default Logic**: AND operations (all criteria must match)
- **Example**: `search --date "last week" --location "Portland, ME"` finds photos from last week in Portland
- **Future Enhancement**: Add `--match-any` flag for OR logic

### 4. Output Formats

Support all existing output modes plus search-specific formats:

#### Standard Formats
- **Default**: Human-readable summary with counts and sample results
- `--json`: Full JSON output with complete metadata
- `--quiet`: Minimal output
- `-o filename`: Save results to file

#### Search-Specific Formats
- `--paths-only`: Output only file paths (one per line) for Unix pipeline integration
  ```bash
  media-processor search --date 2023-07-15 --paths-only | xargs cp -t /tmp/july15/
  ```

### 5. Result Management
- **Default Limit**: 20 results
- `--limit <n>`: Override result limit (0 = unlimited)
- **Ordering**: By `primary_timestamp DESC` (newest first)

### 6. Performance Features
- **Query Result Caching**: Cache search results with time-based invalidation
- **Leverage Existing Indexes**: Use database indexes on `primary_timestamp`, `collection`, GPS coordinates

### 7. Search Syntax Support

#### Simple Flag-Based (Primary Interface)
```bash
media-processor search --date 2023-07-15 --location "Acadia"
```

#### Query Language (Power Users)
```bash
media-processor search --query "date:2023-07-15 AND location:Acadia"
```

Both syntaxes will be supported, with simple flags being the recommended approach for most users.

### 8. Error Handling
- **Strict Validation**: Clear error messages for invalid inputs
- **Examples**:
  - Invalid date: "Error: Date must be YYYY-MM-DD format"
  - No results: "No media files found matching criteria"
  - Invalid location: "Error: Location 'Portlnd' not found in database"

## Implementation Architecture

### 1. New Module Structure
```
src/cli/search/
├── index.ts          # Search command registration
├── handler.ts        # SearchHandler class
├── query-builder.ts  # SQL query construction
├── cache.ts          # Result caching logic
├── formatters.ts     # Output formatting (JSON, paths, summary)
└── types.ts          # SearchCriteria, SearchOptions interfaces
```

### 2. Database Integration
- Create `SearchService` in `src/services/database/SearchService.ts`
- Use Knex.js query builder for flexible SQL construction
- Join tables as needed: `media_files`, `media_locations`, `media_landmarks`, `landmarks`

### 3. CLI Integration
- Register search subcommand in `src/cli/index.ts`
- Reuse existing output handlers where possible
- Add search-specific options to `CLIOptions` type

## Testing Strategy

### 1. Unit Tests - Query Builder (No Database)
```typescript
// Test SQL generation without database connection
test('date parameter creates correct WHERE clause', () => {
  const query = buildSearchQuery({ date: '2023-07-15' });
  expect(query.toSQL()).toContain("DATE(primary_timestamp) = '2023-07-15'");
});
```

### 2. CLI Parameter Tests (No Database)
```typescript
// Test argument parsing and validation
test('search command parses date flag', () => {
  const args = parseSearchArgs(['--date', '2023-07-15']);
  expect(args.date).toBe('2023-07-15');
});
```

### 3. Integration Tests (Minimal Test Database)
```typescript
// End-to-end tests with small fixture dataset
test('search returns correct results for date', async () => {
  const results = await searchCommand.execute({ date: '2023-07-15' });
  expect(results).toHaveLength(2); // Known test data
});
```

## Usage Examples

### Basic Searches
```bash
# Find all photos from a specific date
media-processor search --date 2023-07-15

# Find photos from last month in Portland (broad search)
media-processor search --date "last month" --location "Portland"

# Find photos from Portland, ME specifically
media-processor search --date "last month" --city "Portland" --state "ME"

# Find photos near Acadia from summer 2023
media-processor search --date-range 2023-06-01..2023-08-31 --location "Acadia National Park"

# Find photos in Boston near any park
media-processor search --city "Boston" --state "MA" --park

# Find photos with landmarks but no recreation facilities
media-processor search --landmark --recreation NONE

# Find street photos in NYC (not near parks)
media-processor search --city "New York" --state "NY" --park NONE
```

### Advanced Workflows
```bash
# Copy all photos from a location to a folder
media-processor search --location "Yosemite" --paths-only | xargs cp -t ./yosemite-photos/

# Copy photos from a specific park
media-processor search --park "Boston Common" --paths-only | xargs -I {} ln -s {} ./boston-common/

# Generate JSON report of recent photos near any landmark
media-processor search --date "last week" --landmark --json -o weekly-landmarks.json

# Find photos from multiple collections
media-processor search --date 2023-07-15 --collection staging --limit 50

# Find mountain summit photos
media-processor search --feature-type "summit" --paths-only > mountain-photos.txt

# Complex location query - photos in Maine near water features but not in cities
media-processor search --state "ME" --feature-type "lake" --city NONE
```

### Power User Query Syntax
```bash
# Complex query (future enhancement)
media-processor search --query "date:2023-07-* AND (location:Portland OR location:Acadia)"
```

## Future Enhancements

1. **Additional Search Parameters**
   - Technical: `--camera`, `--iso`, `--aperture`, `--shutter-speed`
   - Visual: `--color`, `--has-faces`, `--has-objects`
   - File: `--size`, `--mime-type`, `--filename-pattern`

2. **Advanced Query Features**
   - OR logic and grouped conditions
   - Negative filters (`--exclude-location`)
   - Regex support for text fields

3. **Performance Optimizations**
   - Pre-computed search indexes for common queries
   - Materialized views for complex location searches
   - Full-text search on metadata fields

4. **User Experience**
   - Fuzzy matching with "Did you mean..." suggestions
   - Search history and saved searches
   - Interactive search mode with refinement

5. **Export Options**
   - CSV export format
   - GPX export for GPS tracks
   - Thumbnail grid HTML export

## Success Criteria

1. ✅ Search command successfully queries database with date and location parameters
2. ✅ Results respect collection boundaries and limits
3. ✅ All output formats work consistently with main CLI
4. ✅ Query performance acceptable for 100k+ media files
5. ✅ Comprehensive test coverage without requiring full database
6. ✅ Clear documentation and helpful error messages