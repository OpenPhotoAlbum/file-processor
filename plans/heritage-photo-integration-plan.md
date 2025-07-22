# Heritage Photo Integration Plan: Simplified Auto-Detection Strategy

**✅ APPROVED AND IN PROGRESS**

**Status:** Core implementation underway with simplified approach
**Last Updated:** January 2025

---

## Current Implementation Strategy

### **Heritage Photo Detection: 100% Reliable Marker**

**Approach:** Use `DigitalSourceType="Scanned from original"` EXIF field as definitive heritage photo marker.

**Implementation:**
```typescript
function isHeritagePhoto(exifData: ExifData): boolean {
  return exifData.digitalSourceType?.includes('Scanned') ||
         exifData.digitalSourceType?.includes('scanned');
}
```

**Benefits:**
- **100% reliable detection** - no guesswork or scoring systems
- **Simple implementation** - single field check
- **Standard compliant** - uses official EXIF field for its intended purpose
- **Backwards compatible** - works with existing photos after retroactive marking

### **Heritage Marker Implementation**

**1. Scrapbook Treatment Script Enhancement ✅**
- Added `DigitalSourceType="Scanned from original"` to all heritage photo processing
- Applied automatically to all new heritage photos during treatment

**2. Retroactive Marking Script ✅**
- Created `multicrop-set-heritage` script for existing photos
- Batch processing capability for thousands of heritage photos
- Dry-run mode for safe testing

**Usage:**
```bash
# Add heritage markers to all existing photos
./multicrop-set-heritage -dir /photos/staging/ready

# Test what would be done first
./multicrop-set-heritage -dry-run -dir /photos/staging/ready
```

### **Rich Heritage Metadata (Already Available)**

Heritage photos contain comprehensive EXIF metadata:

**Core Fields:**
- `ImageDescription` - Rich contextual descriptions and family history
- `UserComment` - Processing notes and visual analysis  
- `Creator` - Document authors (organizations vs individuals)
- `Keywords` - Searchable tags for content discovery
- `Copyright` - Archive ownership ("Young Family Archive")
- `Subject` - Content categorization

**Document Organization:**
- `DocumentName` - Series identifiers (e.g., "Stephen-Young-Baby-Book-32-Pages")
- `Software` - Series descriptions and document positioning
- `DigitalSourceType` - Heritage marker ("Scanned from original")

**Example Heritage Photo Metadata:**
```json
{
  "imageDescription": "Official Pennsylvania birth certificate for Stephen Edward Young...",
  "userComment": "Official Pennsylvania birth certificate establishing legal identity...",
  "creator": "Pennsylvania Department of Health",
  "keywords": "Pennsylvania birth certificate,Stephen Edward Young,April 15 1986",
  "documentName": "Stephen-Young-Hospital-Documentation-10-Documents",
  "digitalSourceType": "Scanned from original"
}
```

## Implementation Phases

### **Phase 1: Database Schema Enhancements**

**New Heritage Tables:**
```sql
-- Heritage document series management
CREATE TABLE heritage_series (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  series_name VARCHAR(255) NOT NULL,
  series_type ENUM('baby_book', 'journal', 'documents', 'photos', 'certificates') NOT NULL,
  total_documents INT,
  description TEXT,
  date_range_start DATE,
  date_range_end DATE
);

-- Rich heritage metadata 
CREATE TABLE heritage_metadata (
  file_id BIGINT UNSIGNED PRIMARY KEY,
  image_description TEXT,
  user_comment TEXT,
  creator_name VARCHAR(128),
  creator_type ENUM('individual', 'organization', 'institution', 'government'),
  copyright_info VARCHAR(255),
  subject_tags VARCHAR(500),
  keywords VARCHAR(500),
  document_type VARCHAR(64),
  transcription_text TEXT,
  
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE
);

-- Series relationships
CREATE TABLE heritage_series_documents (
  file_id BIGINT UNSIGNED,
  series_id BIGINT UNSIGNED,
  document_number INT,
  page_number INT,
  
  PRIMARY KEY (file_id, series_id),
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  FOREIGN KEY (series_id) REFERENCES heritage_series(id) ON DELETE CASCADE
);
```

**Enhanced media_files Table:**
```sql
ALTER TABLE media_files ADD COLUMN heritage_type ENUM('standard', 'scanned') DEFAULT 'standard';
ALTER TABLE media_files ADD COLUMN document_date DATE;
ALTER TABLE media_files ADD COLUMN archive_collection VARCHAR(64);
```

### **Phase 2: EXIF Extractor Enhancements**

**Enhanced EXIF Data Interface:**
```typescript
interface HeritageExifData {
  core: {
    imageDescription?: string;    // Rich contextual descriptions
    userComment?: string;         // Processing/context notes  
    keywords?: string;            // Searchable tags
    creator?: string;             // Creator/author
    copyright?: string;           // Archive ownership
    subject?: string;             // Content categorization
  };
  document: {
    documentName?: string;        // Series identifier
    software?: string;            // Series description
    digitalSourceType?: string;   // "Scanned from original" marker
  };
}
```

**Heritage Detection Integration:**
```typescript
// Update EXIF extractor to handle heritage fields
private parseExifData(rawExif: ExternalToolOutput): ExifData {
  const exif = this.createEmptyExifData();
  
  // Standard processing...
  
  // Heritage-specific fields
  if (this.isHeritagePhoto(rawExif)) {
    exif.heritage = {
      imageDescription: rawExif['EXIF:ImageDescription'],
      userComment: rawExif['EXIF:UserComment'],
      creator: rawExif['EXIF:Creator'],
      keywords: rawExif['EXIF:Keywords'],
      documentName: rawExif['EXIF:DocumentName'],
      digitalSourceType: rawExif['EXIF:DigitalSourceType']
    };
  }
  
  return exif;
}
```

### **Phase 3: HeritageProcessor Class**

**New Heritage Document Processor:**
```typescript
export class HeritageProcessor extends BaseProcessor {
  async process(file: MediaFile): Promise<ProcessingResult> {
    // 1. Extract heritage-specific EXIF fields
    const exifData = await this.extractHeritageExif(file);
    
    // 2. Auto-detect series information from DocumentName
    const seriesInfo = this.parseSeriesInfo(exifData.documentName);
    
    // 3. Auto-discover companion .txt transcription file
    const transcription = await this.loadTranscription(file.path);
    
    // 4. Parse creator attribution (organizational vs individual)
    const creatorType = this.detectCreatorType(exifData.creator);
    
    // 5. Use historical dates from DateTimeOriginal
    const documentDate = this.extractHistoricalDate(exifData);
    
    // 6. Generate heritage-enriched metadata
    const result = await this.createHeritageResult(file, exifData, seriesInfo, transcription);
    
    // 7. Skip geographic enrichment for heritage photos (performance optimization)
    result.location.enrichmentStatus.landmarks = 'skipped_heritage_photo';
    result.location.enrichmentStatus.geographic_features = 'skipped_heritage_photo';
    
    return result;
  }
  
  private detectCreatorType(creator: string): CreatorType {
    const organizationalPatterns = [
      /department|hospital|school|church|government/i,
      /inc\.|corp\.|ltd\.|llc/i
    ];
    
    return organizationalPatterns.some(p => p.test(creator)) 
      ? 'organization' 
      : 'individual';
  }
}
```

### **Phase 4: Automatic CLI Integration**

**Zero-Flag Processing:**
```bash
# CLI automatically detects heritage photos via DigitalSourceType field
node dist/main.js -D /photos/staging/ready --output-db

# Automatic routing:
# ✓ Heritage document: birth-certificate.jpg → HeritageProcessor
# ✓ Modern photo: IMG_1234.HEIC → ImageProcessor
# ✓ Heritage photo: disney-1996.jpg → HeritageProcessor
```

**Enhanced Pipeline Router:**
```typescript
function getProcessor(file: MediaFile, exifData: ExifData): MediaProcessor {
  // Check for heritage marker first
  if (exifData.digitalSourceType?.includes('Scanned')) {
    return new HeritageProcessor();
  }
  
  // Standard routing for modern photos
  switch (file.mimeType) {
    case 'image/jpeg':
    case 'image/heic':
      return new ImageProcessor();
    case 'video/mp4':
    case 'video/quicktime':
      return new VideoProcessor();
    default:
      throw new Error(`Unsupported file type: ${file.mimeType}`);
  }
}
```

### **Phase 5: Archive Integration**

**Processing Workflow:**
```bash
# 1. Mark all heritage photos (one time)
./multicrop-set-heritage -dir /photos/staging/ready

# 2. Process through enhanced pipeline
node dist/main.js -D /photos/staging/ready --output-db --db-collection heritage

# 3. Move to archive with metadata
# (Manual or scripted based on date extraction)
```

**Heritage Photo Benefits:**
- **Automatic detection** - No manual classification needed
- **Rich metadata preservation** - Family context and historical significance stored
- **Series relationship tracking** - Document series maintained and searchable
- **Transcription integration** - OCR text stored alongside photos
- **Creator attribution** - Proper organizational vs personal attribution
- **Performance optimized** - Skips expensive geographic enrichment for heritage photos

## Current Status

### **Completed ✅**
- Heritage marker system (`DigitalSourceType` field)
- Scrapbook treatment script enhancement
- Retroactive marking script (`multicrop-set-heritage`)
- Heritage pattern analysis (4,113 photos analyzed)

### **In Progress 🔄**
- Database schema design
- EXIF extractor enhancements
- HeritageProcessor implementation

### **Pending ⏳**
- Database migration files
- CLI auto-detection integration
- End-to-end testing
- Archive integration workflow

---

## Future Enhancements (Deferred)

*The following features were explored but deferred to focus on core heritage photo integration.*

### **Advanced Collection Detection**

Based on heritage pattern analysis of 4,113 photos, potential automatic collections include:

**Event-Based Collections (10+ photos):**
- Disney (379 photos) - Theme park trips and vacations
- Christmas/Xmas (351 total) - Holiday celebrations across years
- Birthdays (192 photos) - Family birthday celebrations
- Weddings (164 photos) - Wedding ceremonies and receptions
- Easter (86 photos) - Easter celebrations and egg hunts
- Halloween (51 photos) - Halloween costumes and celebrations
- Graduations (42 photos) - School graduation ceremonies

**Family Member Focus:**
- Didi (329 appearances) - Primary family member
- Stevie (240 appearances) - Childhood photos
- JimJim (161 appearances) - Family member documentation

**Collection Detection Algorithm:**
```typescript
interface CollectionCandidate {
  pattern: RegExp;
  minPhotos: number;
  name: string;
  type: 'event' | 'person' | 'location' | 'year';
}

const collectionRules: CollectionCandidate[] = [
  { pattern: /disney/i, minPhotos: 50, name: "Disney Trips", type: 'event' },
  { pattern: /christmas|xmas/i, minPhotos: 50, name: "Christmas Celebrations", type: 'event' },
  { pattern: /birthday/i, minPhotos: 30, name: "Birthday Celebrations", type: 'event' },
  { pattern: /wedding/i, minPhotos: 20, name: "Weddings & Ceremonies", type: 'event' }
];
```

### **Advanced Context Extraction**

**Filename Pattern Analysis:**
```typescript
interface FilenameContext {
  people: string[];           // Extracted names
  events: string[];           // Event types
  locations: string[];        // Geographic locations
  relationships: string[];    // Family relationships
  confidence: number;         // Extraction confidence
}

// Example: "1990-12-25-didi-jimmy-christmas-lancaster-pa-001.jpg"
const context = {
  people: ['didi', 'jimmy'],
  events: ['christmas'],
  locations: ['lancaster', 'pa'],
  date: '1990-12-25',
  confidence: 0.95
};
```

### **Confidence-Based Processing**

**Date Confidence Levels:**
- `year_only` (1985-01-01) - Skip expensive landmark lookups
- `month_year` (1985-12-01) - Limited geolocation processing  
- `specific_date` (1985-12-25) - Full enrichment pipeline

**Processing Optimization:**
```typescript
switch (dateConfidence) {
  case 'year_only':
    // Skip expensive operations for estimated dates
    skipLandmarkEnrichment = true;
    break;
  case 'specific_date':
    // Full processing for accurate dates
    enableAllEnrichment = true;
    break;
}
```

### **Heritage Collections Database Schema**

```sql
-- Advanced heritage photo collections
CREATE TABLE heritage_collections (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  collection_type ENUM('event', 'person', 'location', 'year', 'series'),
  auto_generated BOOLEAN DEFAULT FALSE,
  photo_count INT,
  date_range_start DATE,
  date_range_end DATE,
  description TEXT
);

-- Collection membership
CREATE TABLE heritage_collection_photos (
  collection_id BIGINT,
  file_id BIGINT,
  confidence DECIMAL(3,2),
  
  PRIMARY KEY (collection_id, file_id),
  FOREIGN KEY (collection_id) REFERENCES heritage_collections(id),
  FOREIGN KEY (file_id) REFERENCES media_files(id)
);
```

These advanced features can be implemented later as separate enhancements to the core heritage photo integration system.