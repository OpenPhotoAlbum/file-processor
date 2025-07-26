---
title: "API Documentation"
description: Auto-generated from README.md
---

# API Documentation

**Last Updated:** 2025-07-23  
**Status:** APIs operational

## Available APIs

### Photo Browser API
**Status:** Complete - Express.js metadata viewer operational  
**Location:** `/photo-browser-api/`  
**Purpose:** Web interface for browsing photo metadata

See [photo-browser.md](photo-browser.md) for complete API documentation.

#### Key Features
- Metadata browsing interface
- Location-based photo search
- Geographic intelligence integration
- Heritage photo analysis display
- Responsive design for photo collections

#### Endpoints
- Photo metadata retrieval
- Geographic search capabilities
- Landmark integration
- Heritage analysis results

### Processing Pipeline API
**Status:** Internal APIs for pipeline operations  
**Location:** Core application (`/src/`)  
**Purpose:** Internal service layer APIs

#### Core Services
- **MediaFileService** - Database operations for media files
- **LocationService** - Geographic data management
- **LandmarkService** - Recreation facilities and landmarks
- **EquipmentService** - Camera and device information
- **SoftwareService** - Processing software tracking

#### External Integrations
- **Recreation.gov API** - Facility data retrieval
- **GNIS Database** - Geographic feature lookups
- **Geolocation Services** - Reverse geocoding
- **National Parks Service** - Park facility information

For detailed architecture documentation, see `/docs/architecture/`.