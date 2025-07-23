# Claude 2 Task: MMP Dates Command Implementation

**Task ID:** mmp-dates-implementation-2025-07-23
**From:** Claude 1 (Architect/CTO)
**To:** Claude 2 (Implementation Specialist)
**Date:** July 23, 2025
**Priority:** HIGH - Unblocks ~1,000 heritage photos in staging
**Working Directory:** `/photos/tools/refactor/mmp`

## Task Overview

Implement the `mmp dates` command to enable efficient date assignment for heritage photos. This will unblock ~1,000 photos in `/photos/staging/ready/` and consolidate fragmented date-setting tools into the unified MMP CLI.

## Implementation Requirements

### **Core Functionality**
```bash
# Primary command patterns
mmp dates photo.jpg --set "12-25-1990"
mmp dates *.jpg --set "1985-07-15"
mmp dates ./some-dir/*.jpg --set "12-15-2000"
mmp dates /photos/staging/ready/ --set "1990" --recursive

# Piping support (Unix philosophy)
find /photos/staging -name "*.jpg" | mmp dates --set "12-25-1990"
mmp dates *.jpg --set "1990" --quiet | mmp gps --set cottage
```

### **Date Format Support**
1. **ISO format:** `"1990-12-25"` (YYYY-MM-DD)
2. **US format:** `"12-25-1990"` (MM-DD-YYYY) - Stephen's requested addition
3. **Year-only:** `"1985"` → defaults to 1985-01-01
4. **Year-month:** `"1990-12"` → defaults to 1990-12-15
5. **Validation range:** 1950-2025 (heritage photo bounds)

### **File Processing Patterns**
```bash
# File patterns (glob support)
mmp dates photo.jpg --set "12-25-1990"
mmp dates *.jpg --set "12-25-1990"
mmp dates ./heritage-batch/*.jpg --set "12-15-2000"

# Directory processing
mmp dates ./heritage-batch/ --set "12-25-1990" --recursive
mmp dates /photos/staging/ready/ --set "1990" --recursive

# Mixed patterns
mmp dates photo1.jpg photo2.jpg ./batch/*.jpg --set "07-04-1985"
```

### **Piping Architecture (Unix Integration)**

#### **Input Piping (Stdin Support)**
```bash
# Auto-detect stdin when no file arguments
find /photos/staging -name "*.jpg" | mmp dates --set "12-25-1990"
ls *.jpg | mmp dates --set "1985-07-15"
cat photo-list.txt | mmp dates --set "07-04-1990"

# Explicit stdin flag
echo -e "photo1.jpg\nphoto2.jpg" | mmp dates --set "1990" --stdin
```

#### **Output Piping (Composable Results)**
```bash
# Default: pipe-friendly filenames
mmp dates *.jpg --set "1990" --quiet
# Output: photo1.jpg\nphoto2.jpg\n

# JSON output for programmatic use
mmp dates *.jpg --set "1990" --json
# Output: {"processed": [...], "summary": {...}}

# Chain with other MMP commands
mmp dates *.jpg --set "1985" --quiet | mmp gps --set cottage
```

### **Command Options**
```bash
--set <date>          # Required: Date to set (supports all formats above)
--recursive, -r       # Process directories recursively
--desc <description>  # Optional: Description for heritage context
--dry-run            # Show what would be processed without changes
--quiet, -q          # Pipe-friendly output (filenames only)
--json               # JSON output for programmatic use
--verbose, -v        # Detailed processing information
--stdin              # Explicit stdin mode
```

## Files to Implement/Modify

### **1. Create `/src/commands/dates.ts`**
Main command implementation following GPS command patterns:
```typescript
interface DateCommand {
  execute(args: string[], options: DateOptions): Promise<void>;
  private readFilesFromStdin(): Promise<string[]>;
  private expandFilePatterns(patterns: string[], recursive: boolean): Promise<string[]>;
  private processBatch(files: string[], date: Date): Promise<ProcessingResult[]>;
  private outputResults(results: ProcessingResult[], mode: OutputMode): Promise<void>;
}
```

### **2. Create `/src/services/DateService.ts`**
Date parsing and validation service:
```typescript
interface DateService {
  parseDate(input: string): Date;
  detectDateFormat(input: string): 'ISO' | 'US' | 'YEAR_ONLY' | 'YEAR_MONTH';
  validateHeritageDate(date: Date): boolean;
  formatForEXIF(date: Date): string;
  generateDefaultTime(date: Date): Date; // 12:00:00 for heritage photos
}
```

### **3. Create `/src/services/EXIFDateService.ts`**
ExifTool date writing operations:
```typescript
interface EXIFDateService {
  writeDate(file: string, date: Date, description?: string): Promise<void>;
  writeBatchDates(files: string[], date: Date, description?: string): Promise<BatchResult>;
}
```

### **4. Update CLI Integration**
- Add dates command to main CLI router
- Register command options and help text
- Integrate with existing error handling patterns

## Technical Specifications

### **ExifTool Date Writing**
```bash
# Core ExifTool command structure
exiftool \
  -DateTimeOriginal="1990:12:25 12:00:00" \
  -CreateDate="1990:12:25 12:00:00" \
  -ModifyDate="$(date '+%Y:%m:%d %H:%M:%S')" \
  -overwrite_original \
  "${photo_file}"
```

### **Date Parsing Logic**
```typescript
function parseDate(input: string): Date {
  // ISO: 1990-12-25
  if (/^\d{4}-\d{2}-\d{2}$/.test(input)) {
    return parseISO(input);
  }
  
  // US: 12-25-1990
  if (/^\d{2}-\d{2}-\d{4}$/.test(input)) {
    const [month, day, year] = input.split('-');
    return new Date(parseInt(year), parseInt(month) - 1, parseInt(day));
  }
  
  // Year-only: 1985 → 1985-01-01
  if (/^\d{4}$/.test(input)) {
    return new Date(parseInt(input), 0, 1);
  }
  
  // Year-month: 1990-12 → 1990-12-15
  if (/^\d{4}-\d{2}$/.test(input)) {
    const [year, month] = input.split('-');
    return new Date(parseInt(year), parseInt(month) - 1, 15);
  }
  
  throw new Error(`Invalid date format: ${input}`);
}
```

### **File Pattern Expansion**
```typescript
async function expandFilePatterns(patterns: string[], recursive: boolean = false): Promise<string[]> {
  const files: string[] = [];
  
  for (const pattern of patterns) {
    if (await isDirectory(pattern)) {
      const dirFiles = recursive 
        ? await glob(`${pattern}/**/*.{jpg,jpeg,png,tiff,heic}`)
        : await glob(`${pattern}/*.{jpg,jpeg,png,tiff,heic}`);
      files.push(...dirFiles);
    } else {
      const matchedFiles = await glob(pattern);
      files.push(...matchedFiles);
    }
  }
  
  return files.filter(file => isSupportedImageFormat(file));
}
```

### **Stdin Detection**
```typescript
function shouldReadStdin(args: string[], options: any): boolean {
  // Explicit stdin flag
  if (options.stdin) return true;
  
  // No file arguments and stdin is not TTY (piped input)
  if (args.length === 0 && !process.stdin.isTTY) return true;
  
  return false;
}
```

## Output Modes

### **Default Mode (Human-Readable)**
```bash
$ mmp dates *.jpg --set "1990"
📅 MMP Dates: Setting date to January 1, 1990 12:00:00
🔍 Found 3 image files
⏳ Processing images...
├── [1/3] photo1.jpg ✅
├── [2/3] photo2.jpg ✅  
├── [3/3] christmas.jpg ✅
✅ Successfully processed 3 images
```

### **Quiet Mode (Pipe-Friendly)**
```bash
$ mmp dates *.jpg --set "1990" --quiet
photo1.jpg
photo2.jpg
christmas.jpg
```

### **JSON Mode (Programmatic)**
```bash
$ mmp dates *.jpg --set "1990" --json
{
  "processed": [
    {"filename": "photo1.jpg", "success": true, "date": "1990-01-01T12:00:00Z"},
    {"filename": "photo2.jpg", "success": true, "date": "1990-01-01T12:00:00Z"}
  ],
  "summary": {"total": 2, "success": 2, "errors": 0}
}
```

## Realistic Pipeline Examples

### **Discovery and Processing**
```bash
# Find photos without EXIF dates, then set historical dates
find /photos/staging -name "*.jpg" -exec exiftool -DateTimeOriginal {} \; | \
  grep -L "Date/Time Original" | \
  mmp dates --set "1985"

# Process heritage photos by directory structure
find /photos/heritage/1990s -name "*.jpg" | mmp dates --set "1990-12-25"

# Chain with existing tools
ls /photos/staging/christmas-batch/*.jpg | mmp dates --set "12-25-1990"
```

### **Batch Processing Workflows**
```bash
# Date entire directories and log results
find /photos/staging/ready -name "*.jpg" | \
  mmp dates --set "1985" | \
  tee processed-photos.log

# Process and immediately geotag
mmp dates ./heritage-batch/*.jpg --set "07-04-1985" --quiet | \
  mmp gps --set cottage

# Filter and process specific file types
find /photos/staging -name "*.jpg" -o -name "*.jpeg" | \
  mmp dates --set "1990" | \
  wc -l  # Count processed files
```

### **Validation and Error Handling**
```bash
# Process with error checking
mmp dates ./batch/*.jpg --set "12-25-1990" --json | \
  jq '.processed[] | select(.success == false)' | \
  tee failed-photos.json

# Verify dates were set correctly
mmp dates *.jpg --set "1985" --quiet | \
  xargs -I {} exiftool -DateTimeOriginal {}
```

### **Integration with Manual Photo Tools**
```bash
# Use existing tools to generate file lists
python3 /photos/tools/manual-photo-tools/list-photos-needing-dates.py | \
  mmp dates --set "1990"

# Chain with directory organization
mmp dates /photos/staging/ready/*.jpg --set "1985" --quiet | \
  xargs -I {} mv {} /photos/processed/1985/
```

## Success Metrics

### **Functional Requirements** ✅
- [ ] `mmp dates photo.jpg --set "12-25-1990"` works (US format)
- [ ] `mmp dates *.jpg --set "1985"` processes multiple files (year-only)
- [ ] `find . -name "*.jpg" | mmp dates --set "1990"` works (stdin)
- [ ] `mmp dates *.jpg --set "1990" --quiet | wc -l` pipes correctly
- [ ] Invalid dates show clear error messages with format hints
- [ ] Heritage date range validation (1950-2025) works correctly

### **Performance Requirements** ✅
- [ ] Process 100+ heritage photos in under 15 seconds
- [ ] Recursive directory processing handles 1000+ files without memory issues
- [ ] Individual file failures don't block remaining processing
- [ ] Stdin processing handles large file lists efficiently

### **Integration Requirements** ✅
- [ ] Follows existing MMP command patterns from GPS implementation
- [ ] Uses established configuration and error handling systems
- [ ] Proper TypeScript types (no `any` usage)
- [ ] Compatible with existing ExifTool integration patterns

### **Heritage Photo Validation** ✅
- [ ] Photo-intern can efficiently date staging photos
- [ ] Batch processing works with `/photos/staging/ready/` structure
- [ ] Generated EXIF dates compatible with main processing pipeline
- [ ] Tool handles typical heritage scenarios (1970s-2000s family photos)
- [ ] Default time (12:00:00) appropriate for historical photos

### **Unix Integration Validation** ✅
- [ ] Pipes cleanly with `find`, `ls`, `cat`, `xargs`
- [ ] JSON output works with `jq` for programmatic processing
- [ ] Quiet mode produces clean, parseable output
- [ ] Chains properly with other MMP commands

### **Quality Gates** ✅
All must pass before task completion:
```bash
npm run lint:check    # ESLint compliance
npm run typecheck     # TypeScript compilation
npm run build         # Full build pipeline
npm test              # Unit tests pass
```

## Testing Protocol

### **Manual Testing Commands**
```bash
# Test date format variations
mmp dates assets/test-photo.jpg --set "12-25-1990"    # US format
mmp dates assets/test-photo.jpg --set "1990-12-25"    # ISO format
mmp dates assets/test-photo.jpg --set "1985"          # Year only
mmp dates assets/test-photo.jpg --set "1990-12"       # Year-month

# Test file pattern expansion
mmp dates *.jpg --set "1990" --dry-run
mmp dates ./test-batch/ --set "1985" --recursive --dry-run

# Test piping
echo "assets/test-photo.jpg" | mmp dates --set "1990"
find assets -name "*.jpg" | mmp dates --set "1985" --quiet

# Test error handling
mmp dates photo.jpg --set "13-25-1990"    # Invalid month
mmp dates photo.jpg --set "12-32-1990"    # Invalid day
mmp dates photo.jpg --set "12-25-2030"    # Future date
```

### **Success Validation**
```bash
# Verify EXIF data was written correctly
exiftool -DateTimeOriginal -CreateDate -ModifyDate photo.jpg

# Should show:
# Date/Time Original: 1990:12:25 12:00:00
# Create Date: 1990:12:25 12:00:00
# Modify Date: [current timestamp]
```

## Documentation Impact Assessment

**Affected Documentation:**
- [ ] `/docs/cli.md` - Add mmp dates command documentation with all format examples
- [ ] CLI help text for `mmp dates --help` - Complete usage examples

**New Documentation Required:**
- [ ] Usage examples in CLI documentation showing heritage photo workflows
- [ ] Pipeline integration examples with find/xargs/jq patterns

**Documentation Updates Required Before Task Completion.**

## Context Notes

- **Heritage photo focus:** Default time 12:00:00 since exact times unknown for historical photos
- **US date format priority:** MM-DD-YYYY is natural for American users dating family photos
- **Pipeline integration:** Must work seamlessly with Unix tools for batch processing
- **Staging pipeline:** This unblocks ~1,000 photos waiting in `/photos/staging/ready/`
- **Pattern consistency:** Follow established MMP GPS command architecture exactly

## Coordination Metadata

**Session Context:**
- Claude 4 working on documentation cleanup in parallel
- Photo staging pipeline blocked waiting for date assignment tool
- MMP GPS command provides proven architecture pattern to follow
- Heritage photo processing is major use case requiring efficient batch operations

**Next Steps After Implementation:**
1. Photo-intern validates dates command with staging photos
2. Continue implementing remaining MMP commands (rotate, transcribe, suggest-name)
3. Full MMP production deployment once all core commands complete
4. Integration testing with main processing pipeline

---

**Implementation Priority:** Focus on core functionality and Unix piping integration. Heritage photo batch processing and pipeline composition are the primary success criteria.