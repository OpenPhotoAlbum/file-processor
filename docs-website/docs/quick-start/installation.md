---
title: "Quick Installation Guide"
description: Auto-generated from installation.md
---

# Quick Installation Guide

**Purpose:** Get the system running in 15 minutes  
**Last Updated:** July 26, 2025  
**Target:** New users who want to start processing photos quickly

## Prerequisites (2 minutes)

### System Requirements
- **Linux/macOS** (Windows with WSL2)
- **Node.js 18+** and npm
- **Docker** and docker-compose
- **4GB RAM minimum** (8GB recommended for large collections)

### Quick Check
```bash
node --version    # Should be 18+
npm --version     # Should be 8+
docker --version  # Should be 20+
```

## Installation Steps (10 minutes)

### Step 1: Clone and Setup (3 minutes)
```bash
git clone https://github.com/your-repo/initial-media-processing.git
cd initial-media-processing
npm install
```

### Step 2: Database Setup (5 minutes)
```bash
# Start MySQL database
docker-compose up -d

# Run database setup (creates all tables and seed data)
npm run build
npm run setup-database
```

### Step 3: Verify Installation (2 minutes)
```bash
# Test with sample photo
npm run build
node pipeline-cli/dist/main.js -f "sample:vancouver-island.jpg" --json
```

**Expected output:** JSON metadata with GPS coordinates and landmark information.

## Environment Configuration (Optional)

### Basic Configuration
Create `.env` file for customization:
```bash
cp .env.example .env
```

### Key Settings
```env
# Enable all location services (default)
GEOLOCATION_ENABLED=true
RECREATION_GOV_PROVIDER_ENABLED=true
NPS_PROVIDER_ENABLED=true
GNIS_PROVIDER_ENABLED=true

# Adjust search radius (default 50km)
LANDMARK_MAX_RADIUS=50000
```

## Quick Test (3 minutes)

### Test with Your Photo
```bash
# Process a single photo
node pipeline-cli/dist/main.js -f "/path/to/your/photo.jpg" -o "test-output.json"

# View results
cat test-output.json | jq '.location.landmarks'
```

### What Success Looks Like
- **File processes without errors**
- **JSON output contains metadata**
- **GPS coordinates detected** (if present in photo)
- **Landmarks listed** (if photo has GPS near landmarks)

## Troubleshooting Common Issues

### Database Connection Failed
```bash
# Check database status
docker ps | grep mysql

# If not running, restart database
docker-compose down
docker-compose up -d

# Wait 30 seconds for startup, then retry setup
npm run setup-database
```

### Permission Errors
```bash
# Fix file permissions
chmod +x pipeline-cli/dist/main.js
chmod +x mmp/dist/cli.js
```

### Build Errors
```bash
# Clean and rebuild
rm -rf dist/ node_modules/
npm install
npm run build
```

## Next Steps

### Success! Now What?
1. **[Process Your First Photos](first-photos.md)** - Learn the basic workflow
2. **[Explore MMP Tools](../mmp/)** - Advanced photo processing commands
3. **[Organize Photos](../workflows/organization/)** - Full organization workflow

### For Advanced Users
- **[Complete Setup Guide](../deployment/getting-started.md)** - Comprehensive installation
- **[Database Architecture](../data-layer/)** - Understanding the data layer
- **[System Architecture](../pipeline-cli/architecture/)** - Technical deep dive

### Heritage Photos?
If you have historical family photos, see **[Heritage Processing Guide](../workflows/heritage-photos/)** for specialized workflows.

## Installation Summary

✅ **Database running** with Docker  
✅ **Application built** and ready  
✅ **Sample photo processed** successfully  
✅ **Ready for real photos** with [First Photos Guide](first-photos.md)

**Time invested:** 15 minutes  
**Result:** Fully operational photo processing system

---

**Installation Issue?** If this guide didn't work perfectly, please report the specific error for immediate improvement. The goal is 100% success rate for new installations.