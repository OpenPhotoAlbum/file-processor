---
title: "The Ole' Scrapbook Treatment"
description: Auto-generated from scrapbook-treatment.md
---

# The Ole' Scrapbook Treatment

## Overview

"The ole' scrapbook treatment" refers to the comprehensive metadata enrichment process for historical documents, memorabilia, photographs, and other scrapbook-style items that require careful analysis and detailed documentation.

Unlike simple photo GPS tagging, scrapbook items need deep contextual understanding and rich metadata to preserve their historical and family significance.

## The Complete Treatment Process

### 1. Date Analysis & Setting
- **Visual analysis** of photo styles, clothing, typography, document formats
- **Text extraction** from documents to find specific dates
- **Historical context** estimation based on events, locations, and people mentioned
- **EXIF date setting** using `multicrop-tool/set-photo-dates` with appropriate precision

### 2. Geographic Context
- **Location identification** from document text (newspaper cities, passport issuance locations, addresses)
- **GPS coordinate setting** using `exiftool` for accurate geographic context
- **Historical location names** (e.g., Constantinople for Istanbul)

### 3. Detailed Content Description & Hybrid OCR Transcription
- **Text reading** and extraction of all names, places, dates, occupations, events
- **Hybrid transcription approach** combining AI OCR with human visual verification:
  - Use ImageToText API for initial automated transcription (`npm run transcribe`)
  - **Visual review** by reading the image directly to identify OCR errors
  - **Error correction** of common mistakes (handwriting misreads, missing punctuation)
  - **Quality improvement** by combining API output with human reading
  - **Clean final version** embedded in EXIF ImageDescription for searchability
- **Formatted text files** created alongside images for preservation of raw and corrected versions
- **Visual description** of photographs, clothing, settings, and people
- **Document type** identification (newspaper, passport, certificate, etc.)
- **Family relationships** and biographical details when available
- **EXIF description** setting with comprehensive, corrected transcription content

**Transcription Quality Examples:**
- API Output: "macine life in dorida" → Corrected: "marine life in Florida"
- API Output: "balas and kangecas" → Corrected: "koalas and kangaroos" 
- API Output: "ceport due on monday" → Corrected: "report due on Monday"

### 4. Enhanced Metadata Fields (Complete EXIF Structure)
- **Image Description**: Primary detailed description of content and historical context
- **User Comment**: Historical significance, family context, and additional insights  
- **Keywords**: Searchable tags for historical periods, people, places, events
- **Subject**: Document categories (Historical Documents, Family History, Immigration Documents)
- **Creator**: Original publisher/issuer (newspapers, government agencies, studios) 
- **Title**: Descriptive title with context and dates
- **Date/Time Original**: Set to historical date when item was created
- **Copyright**: Historical copyright holder
- **Location fields**: City, State, Country for precise geographic organization

**Standard Field Priority:**
1. Use `Image Description` (not XPComment) for main content description
2. Use `Keywords` (not XPKeywords) for searchable tags  
3. Use `Subject` (not XPSubject) for categorization
4. Always include `User Comment` for historical context
5. Set `Creator` and `Title` for provenance and identification
6. Use `Date/Time Original` to establish chronological context

### 5. Multi-Page Document Linking
For documents with multiple pages/sides (passports, certificates, etc.):
- **DocumentName**: Shared identifier linking all pages (e.g., "Bagdasar-Shooshun-Passport-1929")
- **Series**: Document series name for grouping (e.g., "Bagdasar-Shooshun-Passport")
- **PageNumber**: Sequential page numbering (1, 2, 3...)
- **Title**: Page-specific titles ("Front Side", "Reverse Side", etc.)
- **Instructions**: Simple page identification ("Front side", "Reverse side")
- **Software field**: Cross-reference to related file names for bidirectional linking
- **Text file linking**: For OCR .txt files, include series information in file footer with related file references

## Tools Used

- **Date setting**: `/scripts/multicrop-tool/set-photo-dates -date "YYYY" filename.jpg`
- **GPS coordinates**: `exiftool -overwrite_original -GPSLatitude=X -GPSLongitude=Y filename.jpg`
- **Hybrid OCR transcription**: 
  - Initial: `npm run transcribe path/to/image.jpg` (creates raw .txt file)
  - Visual review: Read image directly to identify transcription errors
  - Correction: Fix OCR mistakes and create clean version for metadata
- **Descriptions**: `exiftool -overwrite_original -ImageDescription="detailed description" filename.jpg`
- **Enhanced metadata**: `exiftool -overwrite_original -Keywords="tags" -Creator="source" -Title="title" filename.jpg`
- **Document linking**: `exiftool -overwrite_original -DocumentName="series-name" -Series="series" -PageNumber="1" filename.jpg`

## When to Apply

Perfect for:
- **Historical documents** (immigration papers, certificates, legal documents)
- **Newspaper clippings** (engagement announcements, obituaries, news coverage)
- **Vintage photographs** (family portraits, formal studio shots, event photos)
- **Government documents** (passports, naturalization papers, military records)
- **Personal memorabilia** (awards, programs, correspondence)

## Expected Outcomes

After the complete scrapbook treatment, items become:
- **Chronologically organized** with proper dates spanning decades
- **Geographically contextualized** with accurate location data
- **Fully searchable** by names, places, events, and keywords
- **Historically documented** with rich contextual descriptions
- **Family heritage preserved** with biographical and relationship details
- **Professionally catalogued** with standardized metadata fields

## Quality Standards

- **Never guess specific dates** - use estimates when uncertain (1920 vs 1918)
- **Extract all readable text** - names, places, occupations, addresses
- **Provide historical context** - explain document significance and era
- **Use proper geographic coordinates** - research accurate locations
- **Maintain family privacy** - document relationships respectfully
- **Preserve original intent** - understand document purpose and audience

The scrapbook treatment transforms loose historical items into a professional, searchable family archive with rich metadata that preserves both content and context for future generations.

## Current Project Status & Collections

### Completed Heritage Collections (26 documents):

#### Military & Service History
- **Bagdasar K. Chooljian WWI Series**: Official service record + JSON transcription sidecar, military headstone application, 4 newspaper casualty lists (Boston Globe, Daily Item, Oregon Journal, Tribune), passport documents from Constantinople, portrait photograph

#### Edward Chooljian Documentation
- **Gaming raid incidents**: 1970 Cosmos Club (court proceedings), 1973 Dracut raid (arrest coverage)
- **Community service**: 1960 pallbearer service, 1955 University Club chef career
- **Family connections**: Connected to Patricia's father, gaming activities across multiple years

#### Family Genealogy Series
- **J.A. Lewandowski Funeral Coverage**: 3 newspapers documenting great grandfather's funeral (1970)
- **Patricia & Stephen Engagement**: 2 newspapers announcing parents' engagement (1984)
- **Genevieve Kulas Obituary**: Connecting Lewandowski-Chooljian family lines (1976)

#### Frederick Family Timeline
- **Myrtle Schwager/Frederick**: 1920s vintage photo + 1994 Disney World (70-year span)
- **Virginia Frederick**: 1940s childhood portrait

#### Immigration & Legal Documents
- **1914 Naturalization Papers**: Declaration of Intention for U.S. citizenship

### Current Collections Available for Treatment
- **stephen-journal/**: Journal entries with OCR transcription and hybrid verification
- **dorothy-address-book/**: Dorothy Chooljian's address book (22 scans, OCR completed)
- **cayce-journal/**: 1998 journal entries with OCR text files
- **david-baby-book/**: 80+ baby book pages for treatment
- **jimmy/**: Family member documentation and artwork

### Directory Structure
```
/photos/staging/scans/scrapbook/
├── ancestry/done/ (26 completed heritage documents with full treatment)
├── stephen-journal/ (journal entries with OCR text files)
├── dorothy-address-book/ (22 address book scans - OCR completed)
├── cayce-journal/ (journal entries with OCR text files)
├── david-baby-book/ (80+ scanned baby book pages)
├── jimmy/ (13 photos/documents including artwork)
└── [loose heritage items for future treatment]
```

## API-Accelerated OCR Workflow

### ImageToText API Integration
For faster processing of large collections, the workflow includes automated OCR:

```bash
# OCR using project script (API key in .env)
cd /home/stephen/Documents/initial-media-processing
npm run transcribe "/path/to/document.jpg"

# Creates: /path/to/document.jpg.txt with cleaned transcription
```

**API Configuration:**
- API key stored in `.env`: `IMAGETOTEXT_API_KEY=key`
- 5,000 images per week limit
- Supports JPG, PNG, GIF, HEIC, PDF formats
- Automatically strips HTML entities and formatting

**Critical Workflow Order:**
1. **OCR FIRST** - Always get actual content before writing metadata
2. **Transcribe exactly** what OCR found - never invent content
3. **Add context** based on actual data, not assumptions

## Detailed Step-by-Step Commands

### File Organization & Preparation
```bash
# Convert files to proper extensions
for file in *; do 
  if [[ -f "$file" && "$file" != *.jpg ]]; then 
    mv "$file" "$file.jpg"
  fi
done

# Create organized directory structure
mkdir -p "done/"
```

### Complete EXIF Metadata Treatment
```bash
# Core metadata application
exiftool -overwrite_original -DateTimeOriginal="YYYY:MM:DD HH:MM:SS" file.jpg
exiftool -overwrite_original -GPSLatitude=LAT -GPSLongitude=LONG -GPSLatitudeRef=N -GPSLongitudeRef=W file.jpg
exiftool -overwrite_original -ImageDescription="detailed description" file.jpg
exiftool -overwrite_original -Keywords="keyword1,keyword2,keyword3" file.jpg
exiftool -overwrite_original -Creator="creator" -Title="title" -Copyright="copyright" file.jpg
exiftool -overwrite_original -Subject="subject" -City="city" -State="state" -Country="country" file.jpg
exiftool -overwrite_original -UserComment="family context" file.jpg

# Series linking for multi-page documents
exiftool -overwrite_original -DocumentName="series-name" -Software="related files info" file.jpg

# Verification
exiftool file.jpg -ImageDescription -Keywords -Creator -UserComment
```

### Geographic Context Examples
```bash
# Common heritage locations with GPS coordinates
# Boston area: -GPSLatitude=42.3601 -GPSLongitude=-71.0589
# Lancaster PA: -GPSLatitude=40.0379 -GPSLongitude=-76.3055
# Syracuse NY: -GPSLatitude=43.0481 -GPSLongitude=-76.1474
# Constantinople: -GPSLatitude=41.0082 -GPSLongitude=28.9784
```