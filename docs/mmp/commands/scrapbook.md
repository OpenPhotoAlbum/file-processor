# MMP Scrapbook Command - Heritage Document Processing

**Purpose:** Complete workflow for processing scrapbook and heritage document collections  
**Last Updated:** August 5, 2025  
**Status:** ✅ Production Ready - Fully implemented and tested

## Overview

The `mmp scrapbook` command provides a unified workflow for processing collections of scanned heritage documents, family papers, and scrapbook materials. It replaces Stephen's manual 4-script workflow with a single, configurable command that handles transcription, filename normalization, EXIF embedding, and comprehensive metadata application.

### What It Does

```bash
mmp scrapbook /heritage-docs --series "Family Letters" --location "Boston, MA"
```

This single command executes a complete 4-step processing pipeline:

1. **📝 Transcription** - Extract text using OCR (Tesseract)
2. **🔧 Filename Normalization** - Replace spaces with underscores
3. **💾 EXIF Text Embedding** - Add transcriptions to UserComment field
4. **🏷️ Metadata Application** - Full EXIF enrichment with series linking

## When to Use Scrapbook vs Other Commands

### Use `mmp scrapbook` for:
- **Heritage document collections** - Family letters, certificates, handwritten notes
- **Scrapbook pages** - Photo album pages with text annotations
- **Historical papers** - Legal documents, genealogy records, vintage materials
- **Sequential documents** - Multi-page series requiring page numbering

### Use other MMP commands for:
- **Single photos** - Use `mmp transcribe` for individual document transcription
- **Photo collections without text** - Use `mmp locate` and `mmp dates` separately
- **Modern digital photos** - Use standard photo processing workflow

## Command Syntax

```bash
mmp scrapbook <directory> --series <name> --location <location> [options]
```

### Required Arguments

- **`<directory>`** - Path to directory containing scrapbook images
- **`--series <name>`** - Series name for linking related documents
- **`--location <location>`** - Location name, address, or GPS coordinates

### Processing Options

| Option | Description | Default |
|--------|-------------|---------|
| `--subject <subject>` | Subject classification | `"scrapbook"` |
| `--keywords <keywords>` | Keywords for searchability | None |
| `--copyright <owner>` | Copyright owner | `"Young Family Archive"` |
| `--creator <name>` | Creator/author name | `"Stephen Young"` |

### Processing Control Flags

| Flag | Description | Effect |
|------|-------------|--------|
| `--no-transcribe` | Skip OCR transcription step | Disables text extraction |
| `--no-embed-text` | Skip EXIF text embedding | Disables UserComment updates |
| `--no-normalize` | Skip filename normalization | Keeps original filenames |
| `--no-metadata` | Skip metadata application | Disables EXIF enrichment |
| `--dry-run` | Preview processing without changes | Shows files found, no processing |
| `-v, --verbose` | Detailed processing information | Enhanced logging |

## Usage Examples

### Basic Heritage Document Processing

```bash
# Complete workflow with required options
mmp scrapbook /photos/family-letters --series "Family Letters" --location "Boston, MA"
```

**Output:**
```
📄 MMP Scrapbook: Processing document collection...
🔍 Found 12 images to process
📝 Step 1: Transcribing images...
  Processing: letter-001.jpg
  ✓ Successfully transcribed
🔧 Step 2: Normalizing filenames...
  Renaming: family letter 1.jpg → family_letter_1.jpg
  ✓ Renamed successfully
💾 Step 3: Embedding transcriptions in EXIF...
  Processing: family_letter_1.jpg
  ✓ Added transcription to EXIF
🏷️ Step 4: Applying full metadata treatment...
  Processing: family_letter_1.jpg (Page 1)
  ✓ Applied full scrapbook treatment
🎉 Scrapbook processing complete!
```

### Advanced Processing with Custom Metadata

```bash
# With GPS coordinates and keywords
mmp scrapbook /scans/wartime-letters \
  --series "WWII Correspondence" \
  --location "42.3601,-71.0589" \
  --keywords "wartime, 1940s, correspondence" \
  --creator "Robert Young" \
  --copyright "Young Family Heritage Archive"
```

### Selective Processing - Skip Steps

```bash
# Skip transcription if already done separately
mmp scrapbook /heritage-docs \
  --series "Legal Documents" \
  --location "Massachusetts" \
  --no-transcribe

# Skip filename changes but do everything else
mmp scrapbook /pristine-scans \
  --series "Victorian Photos" \
  --location "New Hampshire" \
  --no-normalize
```

### Preview Processing with Dry Run

```bash
# See what would be processed without making changes
mmp scrapbook /potential-batch \
  --series "Test Series" \
  --location "Boston, MA" \
  --dry-run
```

**Dry Run Output:**
```
📄 MMP Scrapbook: Processing document collection...
🔍 Found 19 images to process

DRY RUN - Files that would be processed:
  [1/19] /potential-batch/document_001.jpg
  [2/19] /potential-batch/scan with spaces.jpg
  [3/19] /potential-batch/family_photo.jpg
  ...

Use without --dry-run to execute full processing workflow.
```

## Processing Workflow Details

### Step 1: Transcription (OCR Text Extraction)

**Technology:** Tesseract OCR with English language model  
**Input:** JPG, JPEG, PNG, TIFF image files  
**Output:** `.txt` files containing extracted text

```bash
# Equivalent manual command for each image:
tesseract "image.jpg" "image.jpg" -l eng
```

**Features:**
- Automatic language detection optimized for English documents
- Error handling for images without readable text
- Preserves original transcription files for manual review

### Step 2: Filename Normalization

**Purpose:** Ensure consistent, filesystem-safe filenames  
**Process:** Replaces all spaces with underscores

```bash
# Example transformations:
"family letter 1.jpg" → "family_letter_1.jpg"
"scan with multiple spaces.jpg" → "scan_with_multiple_spaces.jpg"
```

**Benefits:**
- Eliminates shell escaping issues
- Consistent with archive naming conventions
- Maintains filename readability

### Step 3: EXIF Text Embedding

**Purpose:** Embed OCR transcriptions directly in image metadata  
**Field:** EXIF UserComment  
**Escaping:** Automatic quote and special character handling

```bash
# Equivalent manual command (with proper escaping):
exiftool -UserComment="transcribed text content" -overwrite_original "image.jpg"
```

**Features:**
- Safe handling of quotes, dollar signs, and special characters
- Preserves original images with `-overwrite_original`
- Skips files without corresponding `.txt` transcription files

### Step 4: Metadata Application (Series Linking)

**Purpose:** Apply comprehensive EXIF metadata with series coordination  
**Key Feature:** Automatic page numbering and series documentation

#### Applied EXIF Fields

| EXIF Field | Content | Example |
|------------|---------|---------|
| `DocumentName` | Series with page count | `"Family-Letters-12-Pages"` |
| `Software` | Page info and series description | `"Page 3 of 12: Personal family narrative. Complete series: page 1, page 2, page 3..."` |
| `Subject` | Document classification | `"scrapbook"` or user-specified |
| `Copyright` | Archive ownership | `"Young Family Archive"` |
| `Creator` | Attribution | `"Stephen Young"` |
| `Instructions` | Processing context | `"Personal family narrative documenting family history and memories"` |
| `DigitalSourceType` | Source identification | `"Scanned from original"` |
| `Keywords` | Searchability + page number | `"correspondence, 1940s, page 3"` |

#### Series Linking Architecture

**Document List Generation:**
Each image receives a complete series overview in the `Software` field:

```
Page 2 of 8: Personal family narrative. Complete series: page 1, page 2, page 3, page 4, page 5, page 6, page 7, page 8
```

**Page Numbering:**
- Automatic sequential numbering based on alphabetical filename sorting
- Keyword enhancement with page numbers when `--keywords` provided
- Consistent cross-referencing for series navigation

## Integration with Heritage Photo System

### Relationship to Pipeline CLI

The scrapbook command integrates with the broader heritage photo processing system:

```
MMP Scrapbook → EXIF Metadata → Pipeline CLI Processing → Database Storage
```

**Processing Chain:**
1. **MMP scrapbook** - Document-specific preprocessing
2. **Pipeline CLI** - Standard photo processing (GPS, landmarks, technical metadata)
3. **Database storage** - Long-term organization and searchability

### Heritage Metadata Standards

**Compatibility:** Full compatibility with existing heritage photo metadata architecture

**Enhanced Fields for Documents:**
- `DocumentName` with series structure
- `Software` field for navigation context
- `DigitalSourceType` marking as scanned heritage material
- `Instructions` field for archival context

**Location Processing:**
Location data from `--location` parameter integrates with:
- GPS coordinate parsing (if coordinates provided)
- Location shortcuts system (cottage, didi-house, etc.)
- Geolocation services for address resolution

## Supported File Formats

### Input Formats (Auto-detected)
- **JPEG** - `.jpg`, `.jpeg`
- **PNG** - `.png`
- **TIFF** - `.tiff`, `.tif`

### Pattern Matching
Uses glob pattern: `*.{jpg,jpeg,png,tiff,tif}` with hidden file exclusion

### File Discovery
- Recursive directory scanning
- Alphabetical processing order for consistent page numbering
- Automatic exclusion of hidden files and system files

## Error Handling & Troubleshooting

### Common Issues

#### "Series name is required"
```bash
❌ Series name is required. Use --series "Your Series Name"
Example: mmp scrapbook /path --series "Family Letters" --location "Boston, MA"
```

**Solution:** Always provide `--series` parameter with descriptive name

#### "Location is required"
```bash
❌ Location is required. Use --location "City, State" or coordinates
Example: --location "Sandown, NH" or --location "42.3601,-71.0589"
```

**Solution:** Provide location as address or GPS coordinates

#### "Directory does not exist"
```bash
❌ Directory not found: /invalid/path
```

**Solution:** Verify directory path exists and contains image files

#### Transcription Failures
```bash
Processing: document.jpg
✗ Failed to transcribe
```

**Common Causes:**
- Tesseract not installed: `sudo apt install tesseract-ocr`
- Corrupted image file
- Extremely low resolution scans

#### EXIF Write Failures
```bash
Processing: document.jpg
✗ Failed to update EXIF
```

**Common Causes:**
- ExifTool not installed: `sudo apt install exiftool`
- Read-only file permissions
- Corrupted image file

### Recovery Procedures

#### Partial Processing Recovery
If processing fails mid-workflow:

```bash
# Resume from specific step
mmp scrapbook /path --series "Name" --location "Place" --no-transcribe  # Skip completed transcription
mmp scrapbook /path --series "Name" --location "Place" --no-normalize   # Skip completed renaming
```

#### Cleanup After Failed Processing
```bash
# Remove .txt files if transcription needs to be redone
find /path -name "*.txt" -delete

# Restore filenames if normalization needs to be undone
# (Manual restoration required - keep backup of original filenames)
```

## Performance Considerations

### Processing Speed
- **Transcription:** ~2-5 seconds per image (depends on content complexity)
- **Filename operations:** ~0.1 seconds per file
- **EXIF operations:** ~0.5 seconds per file
- **Overall:** ~3-6 seconds per image for complete workflow

### Batch Size Recommendations
- **Small collections:** 1-20 images - Process directly
- **Medium collections:** 20-100 images - Monitor progress with `-v`
- **Large collections:** 100+ images - Consider splitting into logical series

### Resource Usage
- **CPU:** Moderate usage during transcription phase
- **Memory:** Low memory footprint
- **Disk:** Temporary storage for `.txt` files (cleaned automatically)

## Integration Examples

### Complete Heritage Workflow

```bash
# 1. Scrapbook processing with series linking
mmp scrapbook /heritage-scans/family-letters \
  --series "Grandma's Letters" \
  --location "Sandown, NH" \
  --keywords "family, correspondence, 1960s"

# 2. Additional photo processing (if needed)
mmp locate /heritage-scans/family-letters/*.jpg --set cottage

# 3. Pipeline CLI for advanced metadata
find /heritage-scans/family-letters -name "*.jpg" -exec \
  node pipeline-cli/dist/main.js -f {} -o {}.json \;
```

### Automation Integration

```bash
#!/bin/bash
# Batch process multiple scrapbook series

series_dirs=(
  "/scans/family-letters:Family Letters:Boston, MA"
  "/scans/certificates:School Certificates:Sandown, NH"
  "/scans/correspondence:WWII Letters:Massachusetts"
)

for series_info in "${series_dirs[@]}"; do
  IFS=':' read -r dir series location <<< "$series_info"
  echo "Processing series: $series"
  mmp scrapbook "$dir" --series "$series" --location "$location"
done
```

## Cross-References

### Related MMP Commands
- **[mmp transcribe](transcribe.md)** - Single document text extraction
- **[mmp locate](locate.md)** - GPS coordinate application
- **[mmp dates](dates.md)** - Historical photo dating
- **[mmp process](process.md)** - Batch processing workflows

### Related Documentation
- **[Heritage Photo Processing](../../workflows/heritage-processing.md)** - Complete heritage workflow
- **[EXIF Metadata Architecture](../../architecture/metadata-storage-architecture.md)** - Metadata design
- **[Pipeline CLI Integration](../../pipeline-cli/README.md)** - Advanced processing options
- **[Photo Organization Strategy](../../workflows/photo-organization.md)** - Long-term organization

### System Integration
- **Database storage** via Pipeline CLI processing
- **Location services** integration for address resolution
- **Heritage photo browser** for viewing processed results

---

**Production Status:** ✅ Fully operational  
**Testing:** Verified with 19-image heritage document collection  
**Integration:** Complete MMP CLI integration with global installation

For technical implementation details, see: `/mmp/src/services/ScrapbookService.ts:1-203`