# Sample Media Collection

This directory contains a diverse set of media files for testing the media processing system.

## Files Overview

### JPEG/JPG Images
1. **jpg_with_gps_iphone.JPG** - iPhone X photo with GPS coordinates (Rollinsford, NH)
   - Has Google metadata JSON
   
2. **jpg_no_gps.jpg** - Photo without GPS coordinates
   - No Google metadata (missing JSON)
   
3. **jpg_rotate_90.JPG** - iPhone photo with 90° clockwise rotation EXIF
   - Has Google metadata JSON
   
4. **jpg_rotate_180.JPG** - iPhone photo with 180° rotation EXIF
   - Has Google metadata JSON
   
5. **jpg_sample2.JPG** - Another iPhone sample
   - Has Google metadata JSON
   
6. **jpg_canon_dslr.jpg** - Canon EOS REBEL T2i DSLR photo
   - No Google metadata (professional camera)

### HEIC Images
1. **heic_sample1.HEIC** - iPhone HEIC format
   - Has Google metadata JSON
   
2. **heic_sample2.HEIC** - Another HEIC sample
   - No Google metadata

### Videos
1. **mov_sample.MOV** - iPhone video (19.9 seconds)
   - Has Google metadata JSON
   
2. **mp4_sample.mp4** - MP4 video (18.3 seconds)
   - Has Google metadata JSON

### Other Formats
1. **png_sample.PNG** - Large PNG screenshot (9.2MB)
   - Has Google metadata JSON
   
2. **gif_animation.gif** - Animated GIF
   - Has Google metadata JSON

## Metadata Coverage
- **10 files have Google metadata JSON**
- **4 files missing metadata**: jpg_no_gps.jpg, jpg_canon_dslr.jpg, heic_sample2.HEIC

## Testing Scenarios
This collection covers:
- Different image formats (JPG, HEIC, PNG, GIF)
- Video formats (MOV, MP4)
- GPS vs non-GPS photos
- Different EXIF orientations
- Professional camera vs smartphone
- With/without Google Photos metadata
- Large files (PNG ~9MB, MOV ~11MB)