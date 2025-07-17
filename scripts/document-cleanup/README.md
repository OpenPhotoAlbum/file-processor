# Document Cleanup and Preparation Workflow

## Overview
Tools for cleaning up, cropping, splitting, and organizing scanned documents before they enter the main media processing pipeline.

## Directory Structure
```
/photos/staging/scans/
├── raw/           # Raw scanned images (as-is from scanner)
├── processed/     # Cleaned, cropped, split documents
└── metadata/      # Document metadata files
```

## Workflow Steps

### 1. Raw Scan Intake
- Place raw scanned images in `/photos/staging/scans/raw/`
- Use descriptive filenames: `batch_2024-01-15_scrapbook_page_01.jpg`

### 2. Document Cleanup
- Run `./cleanup-scans.sh` to:
  - Auto-rotate based on content
  - Remove shadows and borders
  - Enhance contrast and brightness
  - Straighten skewed documents

### 3. Document Splitting
- Run `./split-documents.sh` to:
  - Detect multiple documents in single scan
  - Split into individual files
  - Preserve original scan for reference

### 4. Metadata Creation
- Run `./create-metadata.sh` to:
  - Generate metadata templates
  - Extract basic information
  - Prepare for manual annotation

### 5. Quality Review
- Manual review of processed documents
- Add missing metadata
- Move approved documents to main processing pipeline

## Scripts

### cleanup-scans.sh
Automated image cleanup and enhancement

### split-documents.sh
Intelligent document splitting and cropping

### create-metadata.sh
Metadata template generation

### batch-process.sh
End-to-end batch processing of raw scans

## Integration with Main Pipeline
Once documents are cleaned and have metadata, they can be processed through the main media pipeline with document-specific processors.