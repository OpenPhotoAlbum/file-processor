# Heritage Photo Enrichment Strategy

## Overview

Heritage photos (scanned film/prints) lack the rich metadata of digital photos. This document outlines a strategy for intelligently detecting missing metadata and prompting users for enrichment data to preserve family history.

## Missing Metadata Detection

### What Heritage Photos Typically Lack

```typescript
interface HeritagePhotoGaps {
  // Critical missing data
  captureDate: 'unknown' | 'approximate' | 'known';
  location: 'unknown' | 'approximate' | 'known';
  people: 'unknown' | 'partial' | 'identified';
  
  // Context information
  event: 'unknown' | 'suspected' | 'known';
  photographer: 'unknown' | 'suspected' | 'known';
  
  // Technical metadata (always missing)
  camera: null;
  gpsCoordinates: null;
  exifData: null;
}
```

### Detection During Processing Pipeline

```typescript
export class HeritagePhotoProcessor {
  async processHeritagePhoto(photo: Photo): Promise<HeritageEnrichmentPrompt | null> {
    const gaps = await this.detectMetadataGaps(photo);
    
    if (this.requiresUserInput(gaps)) {
      return this.generateEnrichmentPrompt(photo, gaps);
    }
    
    return null;
  }
  
  private detectMetadataGaps(photo: Photo): HeritagePhotoGaps {
    return {
      captureDate: this.analyzeDateAvailability(photo),
      location: this.analyzeLocationClues(photo),
      people: this.analyzeFaceDetection(photo),
      event: this.analyzeEventContext(photo),
      photographer: this.analyzePhotographerClues(photo)
    };
  }
  
  private requiresUserInput(gaps: HeritagePhotoGaps): boolean {
    // Prompt for major gaps that preserve family history
    return gaps.captureDate === 'unknown' || 
           gaps.location === 'unknown' ||
           (gaps.people === 'unknown' && this.hasFaces(photo));
  }
}
```

## User Enrichment Interface

### Interactive Metadata Collection

```typescript
interface EnrichmentPrompt {
  photoPath: string;
  thumbnailPath: string;
  detectedGaps: HeritagePhotoGaps;
  suggestions: EnrichmentSuggestions;
  userInputs: UserEnrichmentData;
}

interface EnrichmentSuggestions {
  // AI/ML assisted suggestions
  estimatedDecade?: string;        // "1940s" based on clothing/cars/etc
  possibleLocations?: string[];    // Based on filename, album context
  detectedFaces?: FaceRegion[];    // Face detection for identification
  similarPhotos?: string[];       // Photos from same session/event
  
  // Context clues
  albumContext?: string;           // "Europe Trip 1965" from folder name
  filenameClues?: string[];       // Date/location hints from filename
  sequenceContext?: string;       // "Part of 12-photo sequence"
}

interface UserEnrichmentData {
  // Date information
  approximateYear?: number;
  approximateMonth?: number;
  estimatedSeason?: 'spring' | 'summer' | 'fall' | 'winter';
  certainty: 'exact' | 'approximate' | 'estimated' | 'unknown';
  
  // Location information
  country?: string;
  state?: string;
  city?: string;
  landmark?: string;
  locationDescription?: string;    // "Grandpa's farm" or "Family reunion"
  locationCertainty: 'exact' | 'approximate' | 'estimated' | 'unknown';
  
  // People identification
  people?: PersonIdentification[];
  
  // Event context
  eventType?: 'family_gathering' | 'vacation' | 'wedding' | 'holiday' | 'daily_life';
  eventDescription?: string;
  
  // Additional context
  photographer?: string;
  notes?: string;
  tags?: string[];
}

interface PersonIdentification {
  faceRegion: FaceRegion;
  name?: string;
  relationship?: string;          // "grandmother", "uncle", etc.
  certainty: 'certain' | 'likely' | 'possible';
  notes?: string;
}
```

### CLI Enrichment Workflow

```bash
# Heritage photo processing with enrichment
npm run process-heritage -- \
  --source /photos/archive/1940s/ \
  --interactive \
  --batch-size 10 \
  --save-progress

# Example interaction:
# ╔══════════════════════════════════════════════════════════╗
# ║ Heritage Photo Enrichment                                ║
# ║ Photo: /photos/archive/1947/family-gathering-05.jpg     ║
# ╠══════════════════════════════════════════════════════════╣
# ║ [Thumbnail displayed]                                    ║
# ║                                                          ║
# ║ Detected: 3 faces, no date, no location                 ║
# ║ Suggestions:                                             ║
# ║   • Estimated decade: 1940s (based on clothing)         ║
# ║   • Similar photos: 4 others in sequence                ║
# ║   • Album context: "Family Photos 1940s"                ║
# ║                                                          ║
# ║ Questions:                                               ║
# ║ 1. Approximate year? [1947]: 1947                       ║
# ║ 2. Location (country/state): USA/Massachusetts          ║
# ║ 3. Event description: Family Christmas gathering        ║
# ║ 4. Identify people? [y/N]: y                            ║
# ║    Face 1: Grandmother Sarah                             ║
# ║    Face 2: Uncle Robert                                  ║
# ║    Face 3: [skip]                                        ║
# ║                                                          ║
# ║ [s]ave, [n]ext, [q]uit, [b]atch apply to similar        ║
# ╚══════════════════════════════════════════════════════════╝
```

### Web Interface for Family Collaboration

```typescript
// Heritage enrichment web interface
interface HeritageEnrichmentApp {
  // Family member access
  sharableLinks: {
    readOnly: string;              // View and suggest
    contributor: string;           // Add identifications
    admin: string;                // Full editing
  };
  
  // Collaborative features
  features: {
    crowdsourcedIdentification: boolean;  // Family members identify people
    uncertaintyTracking: boolean;         // Track confidence levels
    sourceAttribution: boolean;           // Who provided what info
    changeHistory: boolean;               // Audit trail of enrichments
  };
}
```

## Smart Detection & Suggestions

### AI-Assisted Analysis

```typescript
export class HeritageAnalyzer {
  async analyzeHeritagePhoto(photo: Photo): Promise<EnrichmentSuggestions> {
    const suggestions: EnrichmentSuggestions = {};
    
    // Estimate decade from visual cues
    suggestions.estimatedDecade = await this.estimateDecadeFromVisuals(photo);
    
    // Extract location clues
    suggestions.possibleLocations = await this.extractLocationClues(photo);
    
    // Find similar photos for context
    suggestions.similarPhotos = await this.findSimilarPhotos(photo);
    
    // Analyze filename for clues
    suggestions.filenameClues = this.extractFilenameClues(photo.path);
    
    // Check album/folder context
    suggestions.albumContext = this.analyzeAlbumContext(photo.path);
    
    return suggestions;
  }
  
  private async estimateDecadeFromVisuals(photo: Photo): Promise<string | undefined> {
    // ML model trained on clothing styles, car models, architecture
    // Return confidence + decade estimate
    const analysis = await this.visualEraAnalysis(photo);
    
    if (analysis.confidence > 0.7) {
      return `${analysis.decade}s (${Math.round(analysis.confidence * 100)}% confidence)`;
    }
    
    return undefined;
  }
  
  private extractLocationClues(photo: Photo): string[] {
    const clues: string[] = [];
    
    // Check filename for location words
    const filename = basename(photo.path);
    const locationWords = this.extractLocationWords(filename);
    clues.push(...locationWords);
    
    // Check folder structure
    const folders = photo.path.split('/');
    for (const folder of folders) {
      const locations = this.extractLocationWords(folder);
      clues.push(...locations);
    }
    
    // OCR text on photo backs/borders
    const ocrText = await this.extractPhotoText(photo);
    if (ocrText) {
      const locations = this.extractLocationWords(ocrText);
      clues.push(...locations);
    }
    
    return [...new Set(clues)]; // Remove duplicates
  }
  
  private extractLocationWords(text: string): string[] {
    // Dictionary of place names, landmarks, common location words
    const locationPattern = /\b(california|new york|paris|london|beach|mountain|farm|house|church|school)\b/gi;
    return text.match(locationPattern) || [];
  }
}
```

### OCR for Photo Backs & Handwritten Notes

```typescript
export class HeritageOCR {
  async extractHandwrittenText(photo: Photo): Promise<string | null> {
    // OCR optimized for handwritten text on photo backs
    const ocrResult = await this.performOCR(photo, {
      mode: 'handwritten',
      language: 'en',
      enhanceContrast: true
    });
    
    if (ocrResult.confidence > 0.6) {
      return ocrResult.text;
    }
    
    return null;
  }
  
  async parseHandwrittenMetadata(text: string): Promise<Partial<UserEnrichmentData>> {
    const metadata: Partial<UserEnrichmentData> = {};
    
    // Parse common patterns
    const dateMatch = text.match(/(\d{4})|(\d{1,2}\/\d{1,2}\/\d{2,4})/);
    if (dateMatch) {
      metadata.approximateYear = this.parseYear(dateMatch[0]);
    }
    
    const locationMatch = text.match(/at\s+([^,\n]+)/i);
    if (locationMatch) {
      metadata.locationDescription = locationMatch[1].trim();
    }
    
    const peopleMatch = text.match(/with\s+([^,\n]+)/i);
    if (peopleMatch) {
      metadata.notes = `People: ${peopleMatch[1].trim()}`;
    }
    
    return metadata;
  }
}
```

## Integration with Processing Pipeline

### When to Trigger Enrichment

```typescript
export class ProcessingPipeline {
  async processPhoto(photo: Photo): Promise<ProcessedPhoto> {
    // Standard processing first
    const processed = await this.standardProcessing(photo);
    
    // Check if this is a heritage photo needing enrichment
    if (this.isHeritagePhoto(photo) && this.hasSignificantGaps(processed)) {
      
      // Add to enrichment queue
      await this.queueForEnrichment(photo, processed);
      
      // Log for user attention
      this.logger.info('Heritage photo queued for enrichment', {
        path: photo.path,
        gaps: this.identifyGaps(processed),
        priority: this.calculateEnrichmentPriority(processed)
      });
    }
    
    return processed;
  }
  
  private isHeritagePhoto(photo: Photo): boolean {
    // Detect scanned photos vs digital originals
    return this.estimatedCaptureYear(photo) < 2000 &&
           !this.hasRichExifData(photo) &&
           this.appearsScanned(photo);
  }
  
  private calculateEnrichmentPriority(photo: ProcessedPhoto): 'high' | 'medium' | 'low' {
    let score = 0;
    
    if (this.hasFaces(photo)) score += 3;           // People photos are high value
    if (this.noDateInformation(photo)) score += 2;  // Dating is important
    if (this.noLocationClues(photo)) score += 2;    // Location context valuable
    if (this.appearsToBeEvent(photo)) score += 1;   // Events worth preserving
    
    if (score >= 5) return 'high';
    if (score >= 3) return 'medium';
    return 'low';
  }
}
```

### Enrichment Storage

```sql
-- Heritage photo enrichment tracking
CREATE TABLE heritage_enrichments (
  id INT PRIMARY KEY AUTO_INCREMENT,
  photo_hash VARCHAR(64) NOT NULL,
  enrichment_data JSON,
  contributor VARCHAR(100),
  confidence_level ENUM('high', 'medium', 'low'),
  verified_by VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  INDEX idx_photo_hash (photo_hash),
  INDEX idx_contributor (contributor),
  INDEX idx_confidence (confidence_level)
);

-- Example enrichment data structure
{
  "temporal": {
    "approximate_year": 1947,
    "estimated_season": "winter",
    "certainty": "approximate",
    "source": "user_input",
    "contributor": "stephen"
  },
  "spatial": {
    "country": "USA",
    "state": "Massachusetts",
    "city": "Boston",
    "description": "Grandma's house on Elm Street",
    "certainty": "approximate",
    "source": "user_input"
  },
  "people": [
    {
      "name": "Sarah Johnson",
      "relationship": "grandmother",
      "face_region": {"x": 120, "y": 80, "width": 60, "height": 80},
      "certainty": "certain",
      "contributor": "stephen"
    }
  ],
  "context": {
    "event_type": "family_gathering",
    "description": "Christmas dinner at grandma's house",
    "photographer": "Uncle Robert",
    "notes": "This is the last Christmas before grandpa passed away"
  }
}
```

## User Experience Design

### Progressive Enrichment

```
Phase 1: Automatic Detection (No User Input)
├── Filename analysis
├── Folder context analysis  
├── Visual era estimation
└── OCR of photo backs

Phase 2: Quick Questions (30 seconds per photo)
├── "What year was this taken? (approximately)"
├── "Where was this taken? (country/state)"
└── "What type of event was this?"

Phase 3: Detailed Enrichment (Optional)
├── Person identification
├── Detailed location information
├── Event description and context
└── Family history notes
```

### Batch Operations

```typescript
// Apply enrichment to similar photos
interface BatchEnrichment {
  pattern: 'same_session' | 'same_location' | 'same_event' | 'same_people';
  sourcePhoto: string;
  targetPhotos: string[];
  fieldsToApply: Array<keyof UserEnrichmentData>;
  
  // Example: "Apply location 'Grandma's farm, Ohio' to all 15 photos from this album"
}
```

This heritage enrichment system transforms your old family photos from anonymous scanned images into richly documented family history, preserving context that would otherwise be lost forever.