#!/bin/bash

# Generate test mocks with all providers enabled
# This script regenerates CLI response test mocks with the latest schema

set -e

echo "🔄 Regenerating test mocks with all providers enabled..."

# Set all providers to enabled
export GEOLOCATION_ENABLED=true
export RECREATION_GOV_PROVIDER_ENABLED=true
export GNIS_PROVIDER_ENABLED=true
export NPS_PROVIDER_ENABLED=true
export LANDMARK_MAX_RADIUS=50000

# Generate each mock file

# Core image tests with GPS and enrichment
echo "  📷 Generating IMG_6645.expected.json..."
node dist/main.js --files sample:IMG_6645.jpg --json > tests/cli-response/mocks/IMG_6645.expected.json

echo "  📱 Generating jpg_with_gps_iphone.expected.json..."
node dist/main.js --files sample:jpg_with_gps_iphone.JPG --json > tests/cli-response/mocks/jpg_with_gps_iphone.expected.json

echo "  🖼️  Generating heic_sample1.expected.json..."
node dist/main.js --files sample:heic_sample1.HEIC --json > tests/cli-response/mocks/heic_sample1.expected.json

# Live Photo detection
echo "  📸 Generating heic_sample2.expected.json (Live Photo)..."
node dist/main.js --files sample:heic_sample2.HEIC --json > tests/cli-response/mocks/heic_sample2.expected.json

# Video processing
echo "  🎥 Generating mov_sample.expected.json..."
node dist/main.js --files sample:mov_sample.MOV --json > tests/cli-response/mocks/mov_sample.expected.json

echo "  📹 Generating mp4_sample.expected.json..."
node dist/main.js --files sample:mp4_sample.mp4 --json > tests/cli-response/mocks/mp4_sample.expected.json

# No GPS data scenario
echo "  🚫 Generating jpg_no_gps.expected.json (no location)..."
node dist/main.js --files sample:jpg_no_gps.jpg --json > tests/cli-response/mocks/jpg_no_gps.expected.json

# Different manufacturer/camera
echo "  📷 Generating jpg_canon_dslr.expected.json (Canon DSLR)..."
node dist/main.js --files sample:jpg_canon_dslr.jpg --json > tests/cli-response/mocks/jpg_canon_dslr.expected.json

# Format coverage
echo "  🖼️  Generating png_sample.expected.json..."
node dist/main.js --files sample:png_sample.PNG --json > tests/cli-response/mocks/png_sample.expected.json

echo "  🎞️  Generating gif_animation.expected.json..."
node dist/main.js --files sample:gif_animation.gif --json > tests/cli-response/mocks/gif_animation.expected.json

# Rotation metadata
echo "  🔄 Generating jpg_rotate_180.expected.json..."
node dist/main.js --files sample:jpg_rotate_180.JPG --json > tests/cli-response/mocks/jpg_rotate_180.expected.json

echo "  ↩️  Generating jpg_rotate_90.expected.json..."
node dist/main.js --files sample:jpg_rotate_90.JPG --json > tests/cli-response/mocks/jpg_rotate_90.expected.json

# Heritage photo processing
echo "  🏛️  Generating heritage_photo_basic.expected.json..."
node dist/main.js --files sample:heritage_photo_basic.jpg --json > tests/cli-response/mocks/heritage_photo_basic.expected.json

echo "  📚 Generating heritage_photo_rich.expected.json..."
node dist/main.js --files sample:heritage_photo_rich.jpg --json > tests/cli-response/mocks/heritage_photo_rich.expected.json

echo "  📖 Generating heritage_photo_series.expected.json..."
node dist/main.js --files sample:heritage_photo_series.jpg --json > tests/cli-response/mocks/heritage_photo_series.expected.json

echo "✅ Test mocks regenerated successfully!"
echo "📁 Files updated in tests/cli-response/mocks/ (15 total mock files)"