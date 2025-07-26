# Media Processing Pipeline CLI

A powerful command-line tool for extracting comprehensive metadata from photos and videos, including GPS coordinates, camera settings, timestamps, and enrichment with landmark data.

## Quick Installation

```bash
# Clone and install globally
git clone <repository-url>
cd pipeline-cli
./install.sh
```

After installation, use the global `mpp` command from anywhere:

```bash
mpp -f "photo.jpg" -o "metadata.json"
```

## Features

- **Complete Metadata Extraction**: EXIF data, GPS coordinates, camera settings, timestamps
- **Heritage Photo Support**: Special processing for scanned historical photos
- **Color Analysis**: Dominant, mean, and salient color extraction
- **Landmark Enrichment**: GPS coordinates enriched with nearby landmarks from GNIS, National Parks, and Recreation.gov
- **Live Photo Detection**: Identifies Apple Live Photos and companion files
- **Multiple Formats**: JPEG, HEIC, PNG, GIF, TIFF, MP4, MOV, and more
- **Flexible Output**: JSON metadata, timestamp extraction, or file processing

## Usage Examples

### Basic Processing
```bash
# Process single file with full metadata
mpp -f "vacation_photo.jpg" -o "metadata.json"

# Extract just the timestamp
mpp -f "old_photo.jpg" --timestamp-only
# Output: 2023-07-15_14-32-45

# JSON output for piping
mmp -f "photo.jpg" --json | jq '.location.landmarks'
```

### Batch Processing
```bash
# Process multiple files
find /photos -name "*.jpg" | xargs -I {} mpp -f {} -o {}.json

# With parallel processing
find /photos -name "*.jpg" | xargs -P 8 -I {} mpp -f {} -o {}.json
```

### Heritage Photos
```bash
# Heritage photos get special processing
mpp -f "scanned_family_photo.jpg" --json
# Includes series detection, transcription loading, and optimized performance
```

### Environment Configuration
```bash
# Enable all providers for maximum enrichment
GEOLOCATION_ENABLED=true \\
RECREATION_GOV_PROVIDER_ENABLED=true \\
NPS_PROVIDER_ENABLED=true \\
GNIS_PROVIDER_ENABLED=true \\
  mpp -f "national_park_photo.jpg" --json

# Fast processing (disable expensive lookups)
GEOLOCATION_ENABLED=false mpp -f "photo.jpg" -o "metadata.json"
```

## Sample Media

The CLI includes sample media files for testing:

```bash
# Process included sample files
mpp -f "sample:vancouver-island.jpg" --json
mmp -f "sample:IMG_6645.jpg" --json  # Acadia National Park example
```

## Output Formats

### JSON Metadata Structure
```json
{
  "file": {
    "path": "relative:photo.jpg",
    "hash": "sha256-hash",
    "size": 2048576,
    "mimeType": "image/jpeg"
  },
  "media": {
    "type": "image",
    "format": "JPEG",
    "dimensions": { "width": 4032, "height": 3024 },
    "dominantColor": "#2a5f3e",
    "meanColor": "#4a7f5e",
    "salientColor": "#8fbc8f"
  },
  "location": {
    "primary": {
      "latitude": 44.3776,
      "longitude": -68.2039,
      "source": "exif"
    },
    "geolocation": {
      "city": "Bar Harbor",
      "state": "Maine",
      "country": "United States"
    },
    "landmarks": [
      {
        "name": "Acadia National Park",
        "distance": 1200,
        "type": "national_park"
      }
    ]
  },
  "camera": {
    "make": "Apple",
    "model": "iPhone 13 Pro",
    "lens": "iPhone 13 Pro back triple camera"
  },
  "settings": {
    "iso": 64,
    "aperture": 1.5,
    "shutterSpeed": "1/2000",
    "focalLength": "5.7mm"
  }
}
```

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `GEOLOCATION_ENABLED` | `true` | Enable reverse geocoding |
| `GNIS_PROVIDER_ENABLED` | `true` | Enable USGS Geographic Names |
| `NPS_PROVIDER_ENABLED` | `true` | Enable National Parks Service |
| `RECREATION_GOV_PROVIDER_ENABLED` | `false` | Enable Recreation.gov facilities |
| `LANDMARK_MAX_RADIUS` | `50000` | Maximum search radius (meters) |
| `SAMPLE_BASE_PATH` | `~/.local/share/mpp/sample_media` | Sample files location |

## Database Setup

The CLI requires a MySQL database for landmark and geolocation data. See [database-setup.md](./database-setup.md) for connection instructions.

Quick setup if you have the main project:
```bash
# Database is shared with main media-processing-pipeline project
# Ensure MySQL container is running:
docker compose up -d
```

## CLI Options

```
Usage: mpp [options]

Options:
  -f, --file <path>     File path to process (required)
  -o, --output <path>   Output JSON file path
  --json               Output JSON to stdout (clean, no logs)
  --timestamp-only     Output only timestamp in YYYY-MM-DD_HH-MM-SS format
  -h, --help           Display help for command
```

## Development

```bash
# Install dependencies
npm install

# Build TypeScript
npm run build

# Run tests
npm test

# Generate test mocks
npm run test:generate-mocks

# Lint code
npm run lint:check
```

## Supported File Types

- **Images**: JPEG, PNG, HEIC, GIF, TIFF, WEBP
- **Videos**: MP4, MOV, AVI

## Performance Notes

- **Heritage photos**: Optimized processing skips expensive landmark lookups
- **Parallel processing**: Use `xargs -P` for batch operations
- **Provider control**: Disable unused providers for faster processing
- **Sample media**: Files prefixed with `sample:` use included test media

## Troubleshooting

### Database Connection Issues
1. Ensure MySQL container is running
2. Check connection settings in `.env`
3. Verify database is accessible on localhost:3309

### Missing Dependencies
```bash
# ExifTool is required
sudo apt install exiftool  # Ubuntu/Debian
brew install exiftool      # macOS
```

### Path Resolution
- Use absolute paths for reliability
- `sample:filename` resolves to included sample media
- `relative:filename` resolves from current directory

## License

MIT License - see main project for full license details.