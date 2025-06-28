# Live Photo Detection

## Overview

The media processing pipeline now includes automatic detection of Apple Live Photos - short videos that accompany still images to create a "living" photograph. This feature identifies Live Photo video components and stores relevant metadata in the JSON sidecars.

## What are Live Photos?

Live Photos are a feature introduced by Apple that captures 1.5-3 seconds of video alongside a still image. They consist of:
- **Still image**: HEIC, JPG, or PNG file
- **Video component**: MOV (or sometimes MP4) file with motion data
- **Motion data**: Embedded stabilization and timing information

## Detection Criteria

The pipeline identifies Live Photos using multiple indicators:

### 1. **Live Photo Info Metadata**
- Extracted using `exiftool -ee` (embedded extraction)
- Contains motion/stabilization data entries
- Typical Live Photos have 40-180 motion data entries

### 2. **Video Duration**
- Live Photos are typically 1.4-3.5 seconds long
- Shorter videos (<0.5s) may be corrupted Live Photos
- Longer videos (>3.5s) are excluded

### 3. **Corresponding Image File**
- Checks for image files with the same base filename
- Supports: HEIC, JPG, JPEG, PNG extensions
- Example: `photo_001.mov` → `photo_001.HEIC`

### 4. **Confidence Scoring**
- **High**: Has Live Photo metadata + short duration + image pair
- **Medium**: Has Live Photo metadata + short duration
- **Low**: Only one indicator present
- **None**: Not a Live Photo

## Metadata Structure

When a Live Photo is detected, the following fields are added to the video's metadata:

```json
{
  "media": {
    "type": "video",
    "format": "quicktime",
    "isLivePhoto": true,
    "livePhotoInfo": {
      "confidence": "high",
      "hasMotionData": true,
      "motionDataCount": 92,
      "duration": 1.535011,
      "correspondingImagePath": "/photos/archive/2023/07/photo_001.HEIC"
    }
  }
}
```

### Field Descriptions

- `isLivePhoto`: Boolean indicating if this video is a Live Photo
- `confidence`: Detection confidence level (high/medium/low)
- `hasMotionData`: Whether Live Photo motion data was found
- `motionDataCount`: Number of motion data entries (0-200+)
- `duration`: Video duration in seconds
- `correspondingImagePath`: Path to the paired image file (if found)

## Implementation Details

### LivePhotoDetector Class

Located in `src/utils/video/live-photo-detector.ts`, this utility:
- Uses `exiftool -ee` to extract embedded metadata
- Uses `ffprobe` to determine video duration
- Checks filesystem for corresponding image files
- Calculates confidence scores based on indicators

### Integration with VideoProcessor

The VideoProcessor automatically runs Live Photo detection for all video files:
1. Extracts standard video metadata
2. Runs LivePhotoDetector
3. Adds results to the media section
4. Stores in JSON sidecar

## Usage Examples

### Processing a Single Live Photo
```bash
node dist/main.js -f /photos/archive/2023/07/video_001.mov -o metadata.json
```

### Batch Processing Videos
```bash
find /photos -name "*.mov" -o -name "*.MOV" | \
  xargs -P 8 -I {} node dist/main.js -f {} -o {}.json
```

### Finding All Live Photos
```bash
# Using the identification script
./scripts/identify-live-photos-complete.sh

# Or query existing metadata
find /photos -name "*.json" -exec grep -l '"isLivePhoto":true' {} \;
```

## Live Photo Statistics

Based on analysis of the collection:
- **Total Live Photos identified**: 17,102
- **Complete pairs (image + video)**: 478 (2.8%)
- **Missing video component**: 16,624 (97.2%)
- **Formats**: 51.8% JPG, 25.7% jpg, 21.9% HEIC, 0.5% heic

## Technical Notes

### Motion Data Structure
The "Live Photo Info" entries contain motion compensation data:
- Frame timestamps and identifiers
- Gyroscope/accelerometer readings
- Image stabilization parameters
- Quality/confidence metrics

Example entry:
```
Live Photo Info: 3 0.0163090005517006 3106496781 23 -1.123e-14 ...
```

### Performance Considerations
- Live Photo detection adds ~100-200ms per video
- `exiftool -ee` is required for motion data extraction
- Caches results in JSON sidecars for fast retrieval

## Future Enhancements

1. **Live Photo UI in Browser**: Special display mode with hover-to-play
2. **Thumbnail Extraction**: Extract poster frames from Live Photo videos
3. **ContentIdentifier Matching**: Use Apple's UUID system for precise pairing
4. **Bulk Reprocessing**: Update existing metadata with Live Photo flags