# Photo Browser API - Development Plan

**Created:** 2025-06-26  
**Status:** 🎯 Phase 1 - Hello World Complete  
**Goal:** Simple API that serves dynamic photo metadata pages

## Overview

Build a lightweight Express API that dynamically generates beautiful photo metadata pages using Handlebars templates. The API will read enriched JSON sidecars from the main photo processing pipeline and render them using the sophisticated HTML template design.

## Architecture Vision

```
GET /metadata/2022-01-01_00-00-00_008
↓
1. Parse photo ID → find photo file
2. Read enriched JSON sidecar  
3. Map JSON data → Handlebars variables
4. Render template → Beautiful HTML
↓
Serve dynamic metadata page with:
- 🧠 AI Analysis & Insights
- 📍 GNIS Landmarks & Recreation.gov facilities  
- 📷 Technical EXIF analysis
- 🗺️ Geographic intelligence
```

## Implementation Phases

### ✅ Phase 1: Hello World Foundation (COMPLETE)
**Goal:** Basic Express + Handlebars setup

**Completed:**
- ✅ Project structure created (`photo-browser-api/`)
- ✅ Package.json with Express + Handlebars dependencies
- ✅ Basic server.js with route structure
- ✅ Simple hello.hbs template with `{{message}}` variables
- ✅ Routes: `/` and `/metadata/:photoId`

**Test Results:**
- `http://localhost:3000/` - Hello world page
- `http://localhost:3000/metadata/any-id` - Dynamic photo ID display

### 🎯 Phase 2: Real Photo Metadata Integration (NEXT)
**Goal:** Connect to actual photo data and JSON sidecars

**Tasks:**
1. **Photo Finder Service** (`lib/photo-finder.js`)
   - Given photo ID, locate file in `/photos/archive/YYYY/MM/`
   - Handle ID formats: `2022-01-01_00-00-00_008` → find actual file
   - Return photo path + JSON sidecar path

2. **Metadata Reader** (`lib/metadata-reader.js`)
   - Read and parse JSON sidecar files
   - Handle missing or malformed JSON gracefully
   - Return structured metadata object

3. **Enhanced Route** (`/metadata/:photoId`)
   - Use photo finder to locate files
   - Read JSON metadata
   - Pass real data to template (still using hello.hbs)

**Success Criteria:**
- `/metadata/2022-01-01_00-00-00_008` shows actual photo metadata
- Graceful handling of non-existent photos
- JSON parsing works with enriched sidecars

### 🔄 Phase 3: Rich Template Conversion (UPCOMING)
**Goal:** Convert sophisticated HTML template to Handlebars

**Tasks:**
1. **Template Conversion** (`templates/photo-metadata.hbs`)
   - Extract structure from `../photo-metadata-intelligent.html`
   - Replace hardcoded data with `{{variables}}`
   - Preserve Google-style design and AI insights sections

2. **Data Mapper** (`lib/metadata-mapper.js`)
   - Map enriched JSON structure → template variables
   - Handle GNIS landmarks, Recreation.gov facilities
   - Generate AI insights from metadata
   - Format technical EXIF data for display

3. **Template Testing**
   - Use real enriched photos (Acadia example)
   - Verify all sections render correctly
   - Test responsive design

**Success Criteria:**
- Beautiful metadata pages matching original template quality
- All enrichment data (GNIS, Recreation.gov, technical) displayed
- AI insights generated from real metadata

### 🚀 Phase 4: Production Features (FUTURE)
**Goal:** Polish and performance for real usage

**Tasks:**
1. **Static Asset Serving**
   - Serve actual photo files: `/photos/:photoId`
   - CSS/JS assets for template
   - Thumbnail generation for performance

2. **Enhanced ID Resolution**
   - Support multiple ID formats
   - Photo search/browse capabilities
   - Collection browsing: `/collection/:albumName`

3. **Performance Optimization**
   - JSON caching for repeated requests
   - Thumbnail generation and caching
   - Graceful error handling and 404 pages

**Success Criteria:**
- Fast page loads with real photos
- Robust error handling
- Ready for sharing/demo usage

## File Structure

```
photo-browser-api/
├── package.json              ✅ Basic dependencies
├── server.js                 ✅ Express server + routes  
├── TODO.md                   ✅ This planning document
├── templates/
│   ├── hello.hbs            ✅ Simple test template
│   └── photo-metadata.hbs   🎯 Rich metadata template (Phase 3)
├── lib/
│   ├── photo-finder.js      🎯 Locate photos by ID (Phase 2)
│   ├── metadata-reader.js   🎯 Read JSON sidecars (Phase 2)
│   └── metadata-mapper.js   🔄 JSON → template variables (Phase 3)
├── public/                  🚀 Static assets (Phase 4)
└── config/
    └── paths.js             🎯 Photo archive configuration (Phase 2)
```

## Integration with Main System

### Data Sources (Read-Only)
- **Photo Files:** `/photos/archive/YYYY/MM/*.{jpg,jpeg,heic,mov,mp4}`
- **Enriched Metadata:** `/photos/archive/YYYY/MM/*.json` (sidecars)
- **Collection Structure:** `/photos/collections/` (symlinks)

### Key Metadata Sources
- **GNIS Landmarks:** 650K+ natural features from enrichment
- **Recreation.gov Facilities:** National parks, campgrounds, permits
- **Municipal Boundaries:** 23,580 US cities/counties/towns
- **Technical EXIF:** Camera settings, GPS, file properties
- **AI Insights:** Face detection, technical analysis, scene interpretation

### No System Impact
- **Read-only operations** - No modification of photos or metadata
- **Independent deployment** - Separate from processing pipeline
- **Optional service** - Main system works unchanged
- **Development isolation** - No impact on production processing

## Current Status

### ✅ Completed (Phase 1)
- Basic Express API running on port 3000
- Handlebars template engine configured
- Simple hello world template with variable substitution
- Route structure for `/metadata/:photoId` established

### 🎯 Next Steps (Phase 2)
1. **Test current setup:** `cd photo-browser-api && npm install && npm start`
2. **Create photo finder:** Implement file discovery logic
3. **Add metadata reader:** Parse actual JSON sidecars  
4. **Enhance route:** Connect real data to hello template

### 📊 Context
- **Main processing:** ~88K+ files currently being organized
- **Target metadata:** 15,659+ enriched photos ready for browsing
- **Template foundation:** Sophisticated HTML design already created
- **Data richness:** Full geographic + technical + AI insights available

## Success Metrics

### Technical Goals
- **Fast response times** - Sub-second page generation
- **Reliable data access** - Handle missing files gracefully
- **Clean template rendering** - All metadata properly formatted
- **Responsive design** - Works on desktop/mobile

### User Experience Goals  
- **Intuitive URLs** - `/metadata/photo-id` is clear and shareable
- **Rich information** - All enrichment data beautifully presented
- **Professional presentation** - Match quality of static template
- **Easy navigation** - Clear photo identification and context

### Development Goals
- **Simple maintenance** - Clean, readable code structure
- **Easy enhancement** - Modular design for adding features
- **Independent operation** - No dependencies on main processing system
- **Good documentation** - Clear setup and usage instructions

---

**Next Session Goal:** Complete Phase 2 - Connect API to real photo metadata and test with actual enriched JSON sidecars.