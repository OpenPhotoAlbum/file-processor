# Heritage Document Processing Workflow

**Purpose:** Complete workflow for processing scanned heritage documents and family archives  
**Last Updated:** August 5, 2025  
**Status:** ✅ Production Ready - Fully integrated with MMP CLI system

## Overview

This document describes the complete workflow for processing heritage documents, family papers, and scrapbook materials using the integrated MMP scrapbook command and related tools.

## Quick Start - Complete Workflow

```bash
# 1. Process heritage documents with complete workflow
mmp scrapbook /heritage-scans/family-letters \
  --series "Grandma's Letters" \
  --location "Sandown, NH" \
  --keywords "family, correspondence, 1960s"

# 2. Enhanced processing with Pipeline CLI (optional)
find /heritage-scans/family-letters -name "*.jpg" -exec \
  node pipeline-cli/dist/main.js -f {} -o {}.json \;

# 3. Database storage and organization (automatic via Pipeline CLI)
```

## Workflow Architecture

### Processing Pipeline

```
Heritage Documents → MMP Scrapbook → Pipeline CLI → Database Storage
     ↓                    ↓              ↓            ↓
Scan Images      OCR + Metadata    GPS + Landmarks   Organization
                 Series Linking    Technical Data    Search Index
```

### Integration Points

1. **MMP Scrapbook** - Document-specific preprocessing
2. **Pipeline CLI** - Standard photo processing (GPS, landmarks, technical metadata)
3. **Database Storage** - Long-term organization and searchability
4. **Heritage Photo Browser** - Web interface for viewing processed results

## Step-by-Step Processing Guide

### Step 1: Scan Preparation

**Before Processing:**
```bash
# Ensure scans are in a dedicated directory
ls /heritage-scans/family-letters/
# Expected: image files (JPG, PNG, TIFF)
```

**Directory Structure Best Practices:**
```
/heritage-scans/
├── family-letters/          # One series per directory
│   ├── letter_001.jpg
│   ├── letter_002.jpg
│   └── ...
├── school-certificates/     # Another series
│   ├── diploma_1985.jpg
│   └── graduation_cert.jpg
└── legal-documents/         # Third series
    ├── birth_certificate.jpg
    └── marriage_license.jpg
```

### Step 2: MMP Scrapbook Processing

**Complete Processing:**
```bash
mmp scrapbook /heritage-scans/family-letters \
  --series "Family Letters 1960-1970" \
  --location "Sandown, NH" \
  --keywords "correspondence, family history, 1960s" \
  --creator "Robert Young" \
  --copyright "Young Family Heritage Archive"
```

**What Happens:**
1. **📝 OCR Transcription** - Extract text from each document
2. **🔧 Filename Normalization** - Replace spaces with underscores
3. **💾 EXIF Embedding** - Add transcriptions to UserComment field
4. **🏷️ Metadata Application** - Full EXIF enrichment with series linking

**Output Files:**
```
letter_001.jpg              # Original image (metadata enhanced)
letter_001.jpg.txt          # OCR transcription
letter_002.jpg              # Next in series
letter_002.jpg.txt          # Transcription
...
```

### Step 3: Enhanced Processing (Optional)

**Pipeline CLI Integration:**
```bash
# Process with full Pipeline CLI for GPS and landmark enrichment
find /heritage-scans/family-letters -name "*.jpg" -exec \
  GEOLOCATION_ENABLED=true \
  GNIS_PROVIDER_ENABLED=true \
  node pipeline-cli/dist/main.js -f {} -o {}.json \;
```

**Benefits of Pipeline CLI Integration:**
- GPS coordinate validation and enhancement
- Landmark identification via GNIS database
- Technical metadata extraction (camera info, etc.)
- Advanced image analysis
- JSON metadata files for database storage

### Step 4: Quality Verification

**Review Processing Results:**
```bash
# Check transcription quality
head /heritage-scans/family-letters/*.txt

# Verify EXIF metadata application
exiftool -DocumentName -Software -UserComment /heritage-scans/family-letters/letter_001.jpg

# Review JSON metadata (if Pipeline CLI used)
jq '.transcription, .heritage' /heritage-scans/family-letters/letter_001.jpg.json
```

## Series Organization Strategy

### Series Naming Conventions

**Format:** `[Collection Type] [Time Period/Theme]`

**Examples:**
- `"Family Letters 1960-1970"`
- `"School Certificates - Stephen"`
- `"WWII Correspondence"`
- `"Legal Documents - Estate"`
- `"Photo Album Pages - Childhood"`

### Page Numbering System

**Automatic Numbering:**
- Files processed in alphabetical order
- Page numbers assigned sequentially
- Cross-references built automatically

**EXIF Field Population:**
```
DocumentName: "Family-Letters-1960-1970-12-Pages"
Software: "Page 3 of 12: Personal family narrative. Complete series: page 1, page 2, page 3, page 4..."
Keywords: "correspondence, family history, 1960s, page 3"
```

### Series Linking Benefits

1. **Navigation Context** - Each document knows its position in series
2. **Complete Collection View** - Software field lists all pages
3. **Search Integration** - Keywords include page numbers
4. **Heritage Browser Integration** - Web interface uses series data

## Location Handling

### Location Options

**Address Format:**
```bash
--location "Sandown, NH"
--location "123 Main Street, Boston, MA"
--location "Massachusetts"
```

**GPS Coordinates:**
```bash
--location "42.3601,-71.0589"
--location "42.7070,-71.1631"  # cottage coordinates
```

**Shortcut Integration:**
```bash
--location cottage              # Uses MMP location shortcuts
--location didi-house           # Predefined coordinates
```

### Location Processing

**What Happens:**
- Address resolution via geolocation services
- GPS coordinate validation
- Integration with heritage photo location system
- Database normalization for searchability

## Heritage Metadata Standards

### EXIF Fields Applied

| Field | Purpose | Example Content |
|-------|---------|-----------------|
| `DocumentName` | Series identification | `"Family-Letters-1960-1970-12-Pages"` |
| `Software` | Navigation context | `"Page 3 of 12: Personal family narrative..."` |
| `Subject` | Classification | `"scrapbook"` or custom subject |
| `Copyright` | Archive ownership | `"Young Family Heritage Archive"` |
| `Creator` | Attribution | `"Stephen Young"` or specified creator |
| `Instructions` | Archival context | `"Personal family narrative documenting..."` |
| `DigitalSourceType` | Source marking | `"Scanned from original"` |
| `Keywords` | Searchability | `"correspondence, 1960s, page 3"` |
| `UserComment` | OCR transcription | Full extracted text content |

### Database Integration

**Automatic Population:**
When processed files are run through Pipeline CLI, metadata flows to database:

```sql
-- Heritage photos table gets enriched metadata
INSERT INTO heritage_photos (
  file_path,
  series_name,
  page_number,
  transcription_text,
  archive_classification
);
```

## Advanced Processing Options

### Selective Processing

**Skip Completed Steps:**
```bash
# Skip transcription if already done
mmp scrapbook /docs --series "Name" --location "Place" --no-transcribe

# Skip filename changes for pristine archives
mmp scrapbook /pristine --series "Name" --location "Place" --no-normalize

# EXIF only (no text processing)
mmp scrapbook /metadata-only --series "Name" --location "Place" --no-transcribe --no-embed-text
```

### Batch Processing Multiple Series

```bash
#!/bin/bash
# Process multiple heritage collections

collections=(
  "/heritage-scans/family-letters:Family Letters:Sandown, NH:correspondence"
  "/heritage-scans/certificates:School Records:Massachusetts:education"
  "/heritage-scans/legal-docs:Legal Documents:Boston, MA:legal"
)

for collection in "${collections[@]}"; do
  IFS=':' read -r path series location keywords <<< "$collection"
  echo "Processing: $series"
  
  mmp scrapbook "$path" \
    --series "$series" \
    --location "$location" \
    --keywords "$keywords" \
    --verbose
    
  echo "✅ Completed: $series"
done
```

### Quality Assurance Workflow

```bash
#!/bin/bash
# Quality check after processing

series_dir="/heritage-scans/family-letters"

echo "🔍 Quality Assurance Report"
echo "Series: $(basename "$series_dir")"

# Count processed files
jpg_count=$(find "$series_dir" -name "*.jpg" | wc -l)
txt_count=$(find "$series_dir" -name "*.txt" | wc -l)

echo "Images processed: $jpg_count"
echo "Transcriptions created: $txt_count"

# Check for missing transcriptions
echo "Missing transcriptions:"
for jpg in "$series_dir"/*.jpg; do
  txt="${jpg}.txt"
  if [[ ! -f "$txt" ]]; then
    echo "  ❌ $(basename "$jpg")"
  fi
done

# Verify EXIF metadata
echo "EXIF verification (sample):"
sample_file=$(find "$series_dir" -name "*.jpg" | head -1)
if [[ -n "$sample_file" ]]; then
  exiftool -DocumentName -Software "$sample_file" | head -2
fi
```

## Integration with Heritage Photo System

### Web Browser Integration

**Viewing Processed Documents:**
1. Documents processed with `mmp scrapbook` are compatible with Heritage Photo Browser
2. Series linking appears in navigation
3. Transcriptions display in metadata panels
4. Location information integrates with map views

**Browser Features for Documents:**
- Full transcription text display
- Series navigation (Previous/Next in collection)
- Metadata timeline integration
- Search across transcription content

### Database Schema Integration

**Heritage-Specific Tables:**
```sql
-- Documents table extends heritage photos
CREATE TABLE heritage_documents (
  id INT PRIMARY KEY,
  heritage_photo_id INT REFERENCES heritage_photos(id),
  series_name VARCHAR(255),
  page_number INT,
  total_pages INT,
  transcription_text TEXT,
  document_type ENUM('letter', 'certificate', 'legal', 'scrapbook'),
  processing_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Search Integration

**Full-Text Search:**
```sql
-- Search across transcription content
SELECT hp.file_path, hd.series_name, hd.page_number
FROM heritage_photos hp
JOIN heritage_documents hd ON hp.id = hd.heritage_photo_id
WHERE MATCH(hd.transcription_text) AGAINST('family correspondence' IN NATURAL LANGUAGE MODE);
```

## Troubleshooting Common Issues

### OCR Quality Issues

**Problem:** Poor transcription quality
**Solutions:**
```bash
# Higher resolution scans (600+ DPI recommended)
# Manual transcription correction
# Re-run with different OCR settings
tesseract document.jpg output -l eng --psm 6
```

### Series Organization Problems

**Problem:** Incorrect page numbering
**Solutions:**
```bash
# Rename files to correct alphabetical order
# Use zero-padded numbers: 001, 002, 003
# Re-run scrapbook processing after filename fixes
```

### Location Resolution Failures

**Problem:** Location not recognized
**Solutions:**
```bash
# Use GPS coordinates directly
--location "42.3601,-71.0589"

# Try more specific address
--location "123 Main Street, Sandown, NH 03873"

# Use MMP location shortcuts
--location cottage
```

## Performance Optimization

### Processing Speed

**Typical Performance:**
- Small collections (1-20 documents): 1-2 minutes
- Medium collections (20-100 documents): 5-15 minutes
- Large collections (100+ documents): 30+ minutes

**Optimization Strategies:**
```bash
# Process in parallel (if system resources allow)
find /heritage-scans -maxdepth 1 -type d -name "*" -exec \
  bash -c 'mmp scrapbook "$1" --series "$(basename "$1")" --location "default"' _ {} \; &

# Split large collections into logical series
# Monitor with --verbose flag for progress tracking
```

### Resource Management

**System Requirements:**
- **CPU:** Moderate usage during OCR phase
- **Memory:** 1-2GB for large document collections
- **Storage:** 2x original size (for transcription files)
- **Network:** Required for location resolution

## Cross-References

### Related Documentation
- **[MMP Scrapbook Command](../mmp/commands/scrapbook.md)** - Complete command reference
- **[Heritage Photo Processing](heritage-processing.md)** - Broader heritage workflow
- **[Pipeline CLI Integration](../pipeline-cli/README.md)** - Advanced processing options
- **[Photo Organization Strategy](photo-organization.md)** - Long-term archive management

### Related Tools
- **[MMP CLI](../mmp/README.md)** - Unified command-line interface
- **[Heritage Photo Browser](../api/photo-browser.md)** - Web viewing interface
- **[Database Schema](../architecture/database-schema-design.md)** - Storage architecture

### Integration Points
- **Scanner workflows** via `mmp scan` command
- **GPS processing** via `mmp gps` command
- **Date correction** via `mmp dates` command
- **Pipeline CLI** for advanced metadata enrichment
- **Database storage** for long-term organization

---

**Implementation Status:** ✅ Production Ready  
**Testing Coverage:** Verified with 19-document family letter collection  
**Integration:** Complete MMP CLI and Pipeline CLI compatibility

For technical implementation details, see: `/mmp/src/services/ScrapbookService.ts:1-203`