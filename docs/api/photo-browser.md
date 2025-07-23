# Photo Browser API Documentation

## Overview

The Photo Browser API provides a web interface for viewing comprehensive photo metadata with rich visualizations and interactive features. It serves as a sophisticated metadata explorer built on top of our media processing pipeline.

## Architecture

### Core Components

- **Express.js Server** (`photo-browser-api/server.js`)
- **Photo Finder Module** (`photo-browser-api/lib/photo-finder.js`)
- **Metadata Reader Module** (`photo-browser-api/lib/metadata-reader.js`)
- **Handlebars Templates** (`photo-browser-api/templates/`)

### Key Features

- Interactive metadata exploration with JSON tree viewer
- GPS location mapping with landmarks
- Technical metadata organization by category
- Collapsible landmark descriptions with HTML support
- Processing status indicators
- Comprehensive timestamp analysis

## Recent Enhancements (December 2024)

### JSON Tree Viewer Improvements
- **Default Expansion**: JSON tree now expands 3 levels deep by default
- **VSCode Dark Theme**: Professional dark theme styling matching VSCode
- **Improved Readability**: Light gray color for collapsed item counts ("5 items")
- **Interactive Navigation**: Expandable/collapsible nodes for metadata exploration

### UI/UX Refinements
- **Two-Column Layouts**: Processing Status and Timestamps sections now use space-efficient two-column layouts
- **Cleaner Headers**: Removed unnecessary spacing and borders from section headers
- **Status Indicators**: Processing status icon color now matches the status (green for success, red for errors)
- **Streamlined Sections**: Removed redundant "Sidecar Files" and "Metadata Sections" 

### Technical Metadata Organization
- **ICC Profile Cleanup**: Removed redundant "ICC_Profile:" prefixes from Color & Profile section labels
- **Date Formatting**: Consistent human-readable date formatting across all sections
- **Combined Fields**: Related metadata fields (GPS coordinates, resolution data) are now combined for better readability

### Processing Status Widget
- **Header Integration**: Status badge moved to header section (right-aligned)
- **Compact Design**: Processing date/time displayed as subtitle under main header
- **Visual Feedback**: Icon color indicates processing success/failure state

## API Endpoints

### GET /metadata/:photoId
Displays comprehensive metadata for a specific photo with rich visualizations.

**Example**: `http://localhost:3000/metadata/2022-01-01_00-00-00_008`

### GET /photos/:photoId
Serves the actual photo file for display.

## Configuration

### Server Setup
```javascript
const PORT = 3000;
app.engine('hbs', engine({ 
  extname: '.hbs',
  defaultLayout: false 
}));
```

### JSON Tree Viewer Configuration
```javascript
renderjson.set_icons('▼', '▶'); // Down and right arrows
renderjson.set_show_to_level(3); // Show 3 levels deep by default
renderjson.set_max_string_length(100); // Truncate long strings
```

## Metadata Processing

### Date Formatting
All timestamps are processed through `formatFileTimestamp()` function which provides:
- Human-readable date format: "June 20, 2025"
- 12-hour time format: "11:36am"
- Consistent handling of EXIF timestamp formats

### Technical Data Grouping
Metadata is organized into logical categories:
- **File Information**: Basic file properties and dates
- **Image Dimensions**: Resolution, orientation, region data
- **Camera Settings**: ISO, aperture, shutter speed, focal length
- **GPS**: Location coordinates and accuracy
- **Date & Time**: All timestamp-related metadata
- **Image Format**: MIME type, compression, quality settings
- **Color & Profile**: ICC profiles, color spaces, gamut information
- **Apple Features**: iPhone-specific metadata and maker notes
- **Computed Values**: Calculated technical parameters
- **Advanced EXIF**: Additional technical metadata

### HTML Sanitization
Landmark descriptions support safe HTML rendering:
- Allows basic formatting tags: `<p>`, `<br>`, `<strong>`, `<em>`, `<i>`, `<b>`, `<a>`
- Removes dangerous elements: `<script>`, `<style>`, `<iframe>`, `<object>`, `<embed>`
- Strips event handlers and JavaScript protocols

## Development Notes

### Photo ID Format
Expected format: `YYYY-MM-DD_HH-MM-SS_###` (e.g., `2022-01-01_00-00-00_008`)

### File Structure
```
photo-browser-api/
├── server.js              # Express server and routes
├── lib/
│   ├── photo-finder.js    # Photo location logic
│   └── metadata-reader.js # Metadata parsing and formatting
└── templates/
    ├── hello.hbs          # Basic greeting page
    └── photo-metadata.hbs # Main metadata display template
```

### Dependencies
- Express.js with Handlebars templating
- Leaflet.js for interactive maps
- RenderJSON for JSON tree visualization
- FontAwesome for icons

## Future Enhancements

- Landmark photo gallery integration
- Batch metadata export functionality
- Advanced filtering and search capabilities
- Metadata comparison between photos
- Integration with heritage enrichment workflow

## Prime Example

The implementation showcases metadata from `/photos/archive/2022/01/2022-01-01_00-00-00_008.jpeg`:
- Acadia National Park beach scene
- 10 Recreation.gov landmarks within vicinity
- Comprehensive iPhone 13 Pro technical metadata
- Geographic context with Blackwoods Campground (1.4km)
- Rich timestamp analysis and face detection data