# Processing Your First Photos

**Purpose:** Learn the basic workflow by processing real photos  
**Last Updated:** July 26, 2025  
**Prerequisites:** [Installation](installation.md) completed successfully

## Quick Photo Processing (5 minutes)

### Step 1: Choose Test Photos (1 minute)
Pick 2-3 photos for testing:
- **Photo with GPS** (from phone/camera) - tests GPS and landmark enrichment
- **Photo without GPS** - tests basic metadata extraction
- **Video file** (optional) - tests video processing

### Step 2: Basic Processing (2 minutes)
```bash
# Process single photo with full output
node pipeline-cli/dist/main.js -f "/path/to/photo.jpg" -o "photo-metadata.json"

# Process with JSON output only (no logs)
node pipeline-cli/dist/main.js -f "/path/to/photo.jpg" --json
```

### Step 3: Examine Results (2 minutes)
```bash
# View complete metadata
cat photo-metadata.json | jq '.'

# View just GPS and landmarks
cat photo-metadata.json | jq '.location'

# View technical details
cat photo-metadata.json | jq '.technical'
```

## Understanding the Output

### Successful GPS Photo Output
```json
{
  "location": {
    "gps": {
      "latitude": 44.3776,
      "longitude": -68.2039
    },
    "landmarks": [
      {
        "name": "Acadia National Park",
        "distance": 1.2,
        "type": "National Park"
      }
    ]
  },
  "technical": {
    "camera": "iPhone 13 Pro",
    "timestamp": "2023-07-15T14:32:45Z"
  }
}
```

### What Each Section Means
- **`location.gps`** - Coordinates extracted from photo EXIF data
- **`location.landmarks`** - Nearby points of interest from multiple databases
- **`technical.camera`** - Camera/device information
- **`technical.timestamp`** - When photo was taken
- **`processing.enrichment_status`** - Which data sources were used

## Batch Processing (3 minutes)

### Process Multiple Photos
```bash
# Process all photos in a directory
find /path/to/photos -name "*.jpg" | head -5 | while read photo; do
  echo "Processing: $photo"
  node pipeline-cli/dist/main.js -f "$photo" --json > "${photo}.json"
done
```

### MMP Quick Commands
```bash
# Get timestamp only (for filename generation)
node mmp/dist/cli.js understand timestamp "/path/to/photo.jpg"

# Get GPS coordinates
node mmp/dist/cli.js understand location "/path/to/photo.jpg"
```

## Understanding Different File Types

### Photos with GPS (Best Results)
- **iPhone/Android photos** - Full GPS and landmark enrichment
- **DSLR with GPS** - Professional metadata + location data
- **HEIC format** - Apple format with Live Photo detection

### Photos without GPS
- **Scanned photos** - Technical metadata extraction only
- **Screenshots** - Basic file information
- **Historical photos** - Heritage photo processing available

### Videos
- **MP4/MOV files** - GPS coordinates, technical metadata
- **Video analysis** - 174 family videos already analyzed and ready

## Next Steps by Use Case

### Personal Photo Organization
**Goal:** Organize your entire photo collection  
**Next:** [Photo Organization Workflow](../workflows/organization/)

**What you'll learn:**
- Batch processing thousands of photos
- Deduplication and storage optimization  
- Database-backed search and browsing

### Heritage Photo Processing
**Goal:** Process historical family photos  
**Next:** [Heritage Photo Workflow](../workflows/heritage-photos/)

**What you'll learn:**
- XMP metadata detection for enhanced photos
- Historical photo analysis with AI
- Series linking and context enrichment

### Advanced Photo Tools
**Goal:** Use all available photo processing features  
**Next:** [MMP CLI Tools](../mmp/)

**What you'll learn:**
- GPS tagging for photos without coordinates
- Photo cropping and rotation
- Scanning workflow for physical photos

## Troubleshooting First Photos

### No GPS Information
**Expected:** Photos without GPS won't have location data  
**Solution:** This is normal - not all photos have GPS

### No Landmarks Found
**Possible causes:**
- Photo taken in remote area (no landmarks within 50km)
- GPS coordinates are approximate
- Landmark databases don't cover the area

**Check:** Try a photo taken near a major city or national park

### Processing Takes Too Long
**Normal:** First run takes longer (building caches)  
**Subsequent:** Processing should be much faster

### JSON Output Errors
```bash
# Check for syntax errors
node pipeline-cli/dist/main.js -f "photo.jpg" --json | jq '.'

# If jq fails, output might have errors mixed in
node pipeline-cli/dist/main.js -f "photo.jpg" --json > output.json 2>errors.log
```

## Success Metrics

After processing your first photos, you should have:

✅ **Generated metadata files** for each processed photo  
✅ **Understood the JSON structure** and what each field means  
✅ **Seen GPS and landmark enrichment** (for photos with GPS)  
✅ **Confidence to process** larger photo collections  

## Ready for More?

### Small Collection (Under 1,000 photos)
Continue with [Photo Organization Workflow](../workflows/organization/) for systematic processing.

### Large Collection (1,000+ photos)  
Review [Large Collection Strategy](../workflows/large-collection-strategy.md) for performance optimization.

### Historical Photos
Explore [Heritage Photo Processing](../workflows/heritage-photos/) for AI-powered historical analysis.

### System Customization
Check [Complete System Guide](../deployment/getting-started.md) for advanced configuration options.

---

**First Photos Complete!** You now understand the core processing workflow. Choose your next step based on your specific photo organization goals.