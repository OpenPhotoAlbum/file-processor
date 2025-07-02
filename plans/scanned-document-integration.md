# Scanned Document Integration Plan
## Connecting Family Documents to People, Photos, and Videos

### Vision
Create a comprehensive system to integrate scanned family documents (letters, cards, yearbooks, drawings, etc.) into the existing media processing pipeline, enabling rich connections between documents, people, photos, videos, and voices to create complete memory packages.

### Current System Context
- **Media Processing**: Robust photo/video processing with metadata extraction
- **People Tracking**: Face recognition infrastructure (CompreFace) with `face_identities` table
- **Voice Processing**: Active extraction and speaker identification from videos
- **Database**: MySQL with comprehensive schema for media, people, and relationships

### Key Use Cases

#### Use Case 1: Children's Creative Archive
**Vision**: Create a visual timeline of your children's artistic and academic development
- **Drawings/Artwork**: Track artistic development over years
- **School work**: See academic progress and interests evolving
- **Connected to**: Photos of them at each age, videos of them explaining their art
- **Special features**: "Art gallery" view, development timelines, proud moment highlights

#### Use Case 2: Uncle Jimmy's Music Legacy
**Vision**: Preserve and connect a professional musician's complete creative output
- **Sheet music**: Original compositions and arrangements
- **Lesson plans**: Teaching materials and student notes
- **Tour information**: Concert dates, venues, setlists
- **Connected to**: Concert photos, performance videos, audio recordings
- **Special features**: Chronological catalog, venue mapping, student tracking

### Proposed Architecture

#### 1. Flexible Document Organization
Since documents aren't centralized yet, we'll support multiple organization strategies:

```
/photos/documents/
├── staging/                    # Newly scanned, to be organized
│   └── [batch_date]/          # 2024-01-15_scan_batch/
├── by_person/
│   ├── kids/
│   │   ├── stephen/
│   │   │   ├── artwork/
│   │   │   │   ├── age_05/
│   │   │   │   ├── age_06/
│   │   │   │   └── ...
│   │   │   └── schoolwork/
│   │   │       ├── kindergarten/
│   │   │       ├── grade_1/
│   │   │       └── ...
│   │   └── [other_children]/
│   └── uncle_jimmy/
│       ├── compositions/
│       ├── lesson_plans/
│       ├── tour_dates/
│       └── correspondence/
├── by_type/
│   ├── artwork/
│   ├── music/
│   ├── academic/
│   └── professional/
└── by_year/
    └── [flexible year grouping]
```

#### 2. Database Schema Extensions

##### Enhanced Documents Table
```sql
CREATE TABLE documents (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  
  -- File identification
  file_path VARCHAR(512) NOT NULL,
  file_hash VARCHAR(64) UNIQUE NOT NULL,
  document_type VARCHAR(64) NOT NULL, -- 'artwork', 'schoolwork', 'sheet_music', 'lesson_plan', 'tour_info', 'letter', 'card'
  document_subtype VARCHAR(64), -- 'drawing', 'painting', 'math', 'writing', 'composition', 'arrangement'
  
  -- Temporal data
  document_date DATE,
  date_precision VARCHAR(16), -- 'exact', 'month', 'year', 'decade', 'age_based'
  
  -- For children's work: age tracking
  author_age_years INT,
  author_age_months INT,
  school_grade VARCHAR(32), -- 'kindergarten', 'grade_1', etc.
  
  -- Content extraction
  ocr_text TEXT,
  ocr_confidence DECIMAL(3,2),
  handwritten BOOLEAN DEFAULT FALSE,
  language VARCHAR(10) DEFAULT 'en',
  
  -- Document metadata
  author_person_id BIGINT,
  recipient_person_id BIGINT,
  mentioned_people JSON, -- Array of person_ids mentioned in document
  
  -- Visual and creative properties
  has_drawings BOOLEAN DEFAULT FALSE,
  dominant_colors JSON,
  artistic_medium VARCHAR(64), -- 'crayon', 'pencil', 'watercolor', 'marker'
  
  -- Music-specific metadata
  musical_key VARCHAR(16), -- 'C major', 'A minor'
  time_signature VARCHAR(16), -- '4/4', '3/4'
  tempo_marking VARCHAR(64), -- 'Allegro', 'Andante'
  instruments JSON, -- ['piano', 'guitar', 'voice']
  
  -- Professional metadata (for Uncle Jimmy)
  venue_name VARCHAR(255),
  performance_date DATE,
  setlist_order INT,
  student_names JSON, -- For lesson plans
  
  -- Processing status
  ocr_status VARCHAR(32) DEFAULT 'pending',
  extraction_metadata JSON,
  
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  FOREIGN KEY (author_person_id) REFERENCES face_identities(id),
  FOREIGN KEY (recipient_person_id) REFERENCES face_identities(id),
  
  -- Indexes for common queries
  INDEX idx_author_age (author_person_id, author_age_years),
  INDEX idx_school_grade (author_person_id, school_grade),
  INDEX idx_document_type_date (document_type, document_date),
  INDEX idx_venue_date (venue_name, performance_date)
);

-- Document-to-media relationships
CREATE TABLE document_media_links (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  document_id BIGINT NOT NULL,
  media_file_id BIGINT NOT NULL,
  link_type VARCHAR(32) NOT NULL, -- 'same_event', 'same_period', 'mentioned_in', 'depicts'
  confidence DECIMAL(3,2),
  
  FOREIGN KEY (document_id) REFERENCES documents(id),
  FOREIGN KEY (media_file_id) REFERENCES media_files(id)
);

-- Document-to-person relationships
CREATE TABLE document_people (
  document_id BIGINT NOT NULL,
  person_id BIGINT NOT NULL,
  relationship_type VARCHAR(32) NOT NULL, -- 'author', 'recipient', 'mentioned', 'depicted'
  
  PRIMARY KEY (document_id, person_id, relationship_type),
  FOREIGN KEY (document_id) REFERENCES documents(id),
  FOREIGN KEY (person_id) REFERENCES face_identities(id)
);
```

#### 3. Processing Pipeline Integration

##### Document Processor
```typescript
export class DocumentProcessor extends BaseProcessor {
  async process(file: DocumentFile): Promise<DocumentProcessingResult> {
    // 1. Extract basic metadata
    const metadata = await this.extractMetadata(file);
    
    // 2. Perform OCR if applicable
    const ocrResult = await this.performOCR(file);
    
    // 3. Extract visual features
    const visualFeatures = await this.extractVisualFeatures(file);
    
    // 4. Identify people mentioned/depicted
    const peopleLinks = await this.identifyPeople(ocrResult, visualFeatures);
    
    // 5. Find temporal connections
    const temporalLinks = await this.findTemporalConnections(metadata.date);
    
    // 6. Store in database
    await this.storeDocument(file, metadata, ocrResult, peopleLinks, temporalLinks);
    
    return { document: metadata, ocr: ocrResult, connections: {...} };
  }
}
```

#### 4. OCR and Text Extraction Services

##### OCR Options
1. **Tesseract OCR** (open source, local)
   - Good for printed text
   - Basic handwriting support
   - Free and privacy-preserving

2. **Google Cloud Vision API**
   - Excellent handwriting recognition
   - Multi-language support
   - Higher accuracy but requires API costs

3. **Amazon Textract**
   - Form and table extraction
   - Handwriting support
   - Good for structured documents

##### Implementation
```typescript
export class OCRService {
  async extractText(imagePath: string, options: OCROptions): Promise<OCRResult> {
    if (options.provider === 'tesseract') {
      return await this.tesseractOCR(imagePath);
    } else if (options.provider === 'google') {
      return await this.googleVisionOCR(imagePath);
    }
    // ... other providers
  }
  
  async detectHandwriting(imagePath: string): Promise<boolean> {
    // Use vision API to detect if document contains handwriting
  }
  
  async extractPeople(text: string): Promise<string[]> {
    // NLP to extract person names from text
  }
}
```

#### 5. Connection Discovery Services

##### Temporal Connections
- Match document dates with photos/videos from same time period
- Consider date precision (exact date vs. "1990s")
- Link birthday cards to birthday photos

##### Person Connections
- Link documents by author/recipient to their face/voice profiles
- Find photos of people mentioned in documents
- Connect children's artwork to photos of the child at that age

##### Event Connections
- Wedding invitations → wedding photos/videos
- Travel postcards → vacation photos
- School documents → school event photos

#### 6. Viewing and Search Integration

##### CLI Extensions
```bash
# Process a scanned document
media-processor -f "scanned_letter.jpg" --document-type letter --ocr --output-db

# Find all documents by a person
media-processor search --document-author "Grandma Dorothy"

# Find documents from a time period
media-processor search --document-date "1995" --document-type card

# Find all media connected to a document
media-processor show-connections --document-id 123

# Create a memory package
media-processor create-package --person "Grandma Dorothy" --include-documents --include-photos --include-voices
```

##### Web Interface Enhancements
- Document viewer with zoom/pan for high-res scans
- Side-by-side view: document + connected photos
- Timeline view showing documents and photos together
- Person profile view including their documents

#### 7. AI-Powered Enhancements

##### Content Understanding
- Sentiment analysis on letters/cards
- Topic extraction (birthday, holiday, condolence)
- Relationship inference from writing style

##### Smart Connections
- "This birthday card from Mom matches photos from Stephen's 10th birthday"
- "Recipe in Grandma's handwriting connects to photos of her cooking"
- "Report card from 1995 matches school photos from that year"

### Scanning Workflows

#### Workflow 1: Children's Art/Schoolwork Batch Scanning
```bash
# 1. Scan a batch of child's work
media-processor scan-batch --type children-work --author "Stephen Jr" --school-year "grade-2"

# 2. Auto-organize by detected dates/grades
media-processor organize-children-docs --detect-age --detect-grade

# 3. Create development timeline
media-processor create-timeline --person "Stephen Jr" --type artistic-development
```

**Smart Features:**
- Auto-detect child's age from their handwriting/drawing style
- Group by school year automatically
- Flag "milestone" pieces (first writing, first realistic drawing)
- Connect to photos from the same age/grade

#### Workflow 2: Music Archive Digitization
```bash
# 1. Scan sheet music with musical notation detection
media-processor scan-batch --type sheet-music --author "Uncle Jimmy" --detect-music-notation

# 2. Extract musical metadata
media-processor extract-music-data --detect-key --detect-tempo --detect-instruments

# 3. Link to performance media
media-processor link-performances --sheet-music-dir ./uncle_jimmy/compositions --concert-photos ./photos/concerts
```

**Smart Features:**
- OCR specifically trained on musical notation
- Extract song titles, keys, tempo markings
- Match setlists to concert photos by date
- Create "composer's journey" timeline

### Viewing Experiences

#### Children's Development Gallery
```
http://localhost:3000/gallery/children/stephen-jr

┌─────────────────────────────────────────────────────────┐
│  Stephen Jr's Creative Journey                          │
├─────────────────────────────────────────────────────────┤
│  Age Timeline: ──●──────●────●────●────●────●────      │
│                  5      6    7    8    9    10         │
│                                                         │
│  [Drawing]     [Drawing]    [Writing]    [Math]        │
│  "My Family"   "Dinosaur"   "My Dog"     "Fractions"   │
│  Age 5         Age 6        Age 7        Age 9         │
│                                                         │
│  Development Insights:                                  │
│  • Color use expanded from 3 to 12 colors              │
│  • Human figures evolved from stick to proportional    │
│  • Handwriting progressed from print to cursive        │
│                                                         │
│  Connected Media:                                       │
│  📷 234 photos from these years                        │
│  🎥 45 videos of Stephen at these ages                 │
│  🎤 12 voice recordings explaining his art             │
└─────────────────────────────────────────────────────────┘
```

#### Uncle Jimmy's Music Catalog
```
http://localhost:3000/catalog/uncle-jimmy

┌─────────────────────────────────────────────────────────┐
│  Uncle Jimmy's Musical Legacy                          │
├─────────────────────────────────────────────────────────┤
│  Compositions: 127  |  Arrangements: 89  |  Years: 45  │
│                                                         │
│  Browse by:                                             │
│  [Chronological] [By Venue] [By Student] [By Genre]    │
│                                                         │
│  Featured Piece: "Carolina Blues in G"                  │
│  📄 Sheet Music  🎵 Audio Recording  📷 Performance     │
│                                                         │
│  Performance History:                                   │
│  • 1987-06-15 - Blue Note, NYC (📷 12 photos)         │
│  • 1988-03-22 - Jazz Fest, New Orleans (🎥 video)     │
│  • 1992-11-30 - Teaching at Berklee (📝 lesson plan)   │
│                                                         │
│  Students who learned this piece: 23                   │
│  Related compositions: 8 variations                     │
└─────────────────────────────────────────────────────────┘
```

### Implementation Phases

#### Phase 1: Scanning Infrastructure (Week 1)
- [ ] Set up document staging area and organization structure
- [ ] Create scanning workflow scripts
- [ ] Build document intake CLI commands
- [ ] Design flexible metadata schema for various document types

#### Phase 2: Children's Archive MVP (Weeks 2-3)
- [ ] Implement age/grade detection from documents
- [ ] Build child development timeline generator
- [ ] Create artistic progression analyzer
- [ ] Link drawings to photos from same age

#### Phase 3: Music Archive MVP (Weeks 4-5)
- [ ] Research music OCR options (Audiveris, music21)
- [ ] Build sheet music metadata extractor
- [ ] Create performance-to-composition linker
- [ ] Implement venue/date matching

#### Phase 4: Smart Connections (Weeks 6-7)
- [ ] Build temporal matching engine
- [ ] Implement person-based connections
- [ ] Create event detection and linking
- [ ] Add cross-media search

#### Phase 5: Rich Viewing Experience (Weeks 8-9)
- [ ] Build children's development gallery
- [ ] Create music catalog interface
- [ ] Implement timeline visualizations
- [ ] Add export capabilities for sharing

### Testing Strategy

#### Unit Tests
- OCR accuracy testing with sample documents
- Date extraction validation
- Person name extraction accuracy
- Connection algorithm correctness

#### Integration Tests
- End-to-end document processing
- Database relationship integrity
- Search functionality across documents and media
- Performance with large document collections

#### Test Data
- Sample documents of each type
- Various handwriting styles
- Different languages and scripts
- Historical documents with aging/damage

### Success Metrics
- ✅ Document OCR accuracy > 90% for printed text
- ✅ Handwriting recognition functional for common cases
- ✅ Person connections identified correctly > 80% of time
- ✅ Temporal connections accurate within date precision
- ✅ Search returns relevant documents and connections
- ✅ Memory packages combine all media types successfully

### Privacy and Security Considerations
- Sensitive document encryption at rest
- Access control for different document types
- Audit trail for document access
- GDPR compliance for personal information

### Quick Start Guide

Since documents aren't centralized yet, here's how to begin:

#### Step 1: Start with What's Already Digital
```bash
# Create initial structure
mkdir -p /photos/documents/{staging,by_person/kids,by_person/uncle_jimmy}

# Process any already-scanned documents
media-processor scan-intake --source ~/Desktop/scanned_docs --dest /photos/documents/staging

# Quick test with a single child's drawing
media-processor document --file "stephens_drawing_age5.jpg" --type artwork --author "Stephen Jr" --age 5
```

#### Step 2: Pilot Scanning Session
Start small with one category:
1. **Kids' art**: Grab 10-20 pieces spanning different ages
2. **Music sheets**: Pick 5-10 of Uncle Jimmy's most important pieces
3. Use your phone's scanner app initially (Adobe Scan, CamScanner)
4. Save as high-res JPG or PDF

#### Step 3: Establish Scanning Station
For larger batches:
- **Scanner options**: 
  - Flatbed for delicate/special items
  - Sheet-fed for bulk (homework, sheet music)
  - Phone scanning station with good lighting for quick captures
- **Naming convention**: `[person]_[type]_[date]_[description].jpg`
- **Immediate backup**: Sync to cloud after each session

### Scanning Best Practices

#### For Children's Work
- **Include context**: Photograph the back if there are teacher comments
- **Preserve scale**: Include a ruler in frame for size reference  
- **Batch by school year**: Makes dating easier
- **Quick notes**: Voice record what your child says about each piece

#### For Sheet Music
- **High resolution**: Musical notation needs clarity
- **Full pages**: Include all markings and annotations
- **Performance notes**: Scan any attached sticky notes or marginalia
- **Group related**: Keep movements of same piece together

### Connection Examples

#### Kids' Development Connections
- Drawing of "My Family" → Family photo from that same month
- "What I Did Last Summer" essay → Vacation photos from that summer  
- Math test with A+ → Happy photo after school that day
- First cursive writing → Video of them practicing writing

#### Music Legacy Connections  
- Sheet music for "Carolina Blues" → Photos from Carolina trip that inspired it
- Lesson plan for student "Sarah" → Photos of Sarah's recital
- Tour setlist from 1987 → Concert photos from that tour
- Original composition → Recording of Uncle Jimmy playing it

### Privacy & Access Control

#### Levels of Access
1. **Public**: Shareable kid art, published music
2. **Family**: School records, personal letters
3. **Private**: Sensitive documents, medical records
4. **Archive Only**: Legal documents, preserved but not viewable

#### Implementation
```sql
ALTER TABLE documents ADD COLUMN access_level VARCHAR(32) DEFAULT 'family';
ALTER TABLE documents ADD COLUMN encryption_key VARCHAR(255);
```

### Future Enhancements
1. **Multi-language OCR** for family documents in other languages
2. **Collaborative annotation** for family members to add context
3. **AI-powered story generation** from connected documents and photos
4. **Preservation recommendations** for aging documents
5. **Genealogy integration** for family tree connections
6. **Music playback** - Play sheet music through MIDI synthesis
7. **Art style analysis** - Track artistic development algorithmically
8. **Handwriting evolution** - Show how penmanship changed over time

---

## Next Steps

1. **Pick a pilot category** (kids' art or Uncle Jimmy's music?)
2. **Do a test scan batch** (10-20 items)
3. **Run through the processing pipeline**
4. **See the connections in action**
5. **Refine based on what we learn**

The beauty is we can start simple - even just scanning and organizing is valuable. The smart connections and AI features can come later as the collection grows.

What excites you most to try first? The children's development timeline or Uncle Jimmy's music catalog?