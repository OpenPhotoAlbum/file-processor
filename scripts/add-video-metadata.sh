#!/bin/bash

# Video Metadata Correction Script
# Adds DateTimeOriginal and GPS coordinates to home videos using ExifTool

set -euo pipefail

VIDEOS_DIR="/photos/staging/home-videos"
CORRECTIONS_FILE="/home/stephen/Documents/initial-media-processing/scripts/video-metadata-corrections.txt"
LOG_FILE="/tmp/video-metadata-corrections.log"

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Location GPS coordinates (approximate city centers)
declare -A GPS_COORDS
GPS_COORDS["Lawrence,MA"]="42.7070,-71.1631"
GPS_COORDS["Haverhill,MA"]="42.7762,-71.0773"
GPS_COORDS["Salisbury,MA"]="42.8417,-70.8606"
GPS_COORDS["Hampton,NH"]="42.9375,-70.8189"
GPS_COORDS["North Conway,NH"]="44.0542,-71.1281"
GPS_COORDS["Tewksbury,MA"]="42.6106,-71.2300"
GPS_COORDS["Boston,MA"]="42.3601,-71.0589"
GPS_COORDS["Austin,TX"]="30.2672,-97.7431"
GPS_COORDS["Niagara Falls,NY"]="43.0962,-79.0377"
GPS_COORDS["Haverhill,PA"]="40.1181,-75.3118"
GPS_COORDS["Aruba,AW"]="12.5211,-69.9683"

echo -e "${GREEN}Starting video metadata corrections...${NC}"
echo "Corrections file: $CORRECTIONS_FILE"
echo "Videos directory: $VIDEOS_DIR"
echo "Log file: $LOG_FILE"
echo

# Initialize log
echo "Video Metadata Corrections - $(date)" > "$LOG_FILE"
echo "==========================================" >> "$LOG_FILE"

if [[ ! -f "$CORRECTIONS_FILE" ]]; then
    echo -e "${RED}Error: Corrections file not found: $CORRECTIONS_FILE${NC}"
    exit 1
fi

if [[ ! -d "$VIDEOS_DIR" ]]; then
    echo -e "${RED}Error: Videos directory not found: $VIDEOS_DIR${NC}"
    exit 1
fi

# Check if ExifTool is available
if ! command -v exiftool &> /dev/null; then
    echo -e "${RED}Error: ExifTool not found. Please install: sudo apt-get install libimage-exiftool-perl${NC}"
    exit 1
fi

processed=0
skipped=0
errors=0

# Process corrections file
while IFS='|' read -r filename year location_city location_state || [[ -n "$filename" ]]; do
    # Skip comments and empty lines
    [[ "$filename" =~ ^#.*$ ]] && continue
    [[ -z "$filename" ]] && continue
    
    video_path="$VIDEOS_DIR/$filename"
    
    if [[ ! -f "$video_path" ]]; then
        echo -e "${YELLOW}Warning: Video not found: $filename${NC}"
        echo "SKIP: $filename (file not found)" >> "$LOG_FILE"
        ((skipped++))
        continue
    fi
    
    # Create datetime (January 1st of the year, noon)
    datetime="${year}:01:01 12:00:00"
    
    # Get GPS coordinates
    location_key="${location_city},${location_state}"
    gps_coords="${GPS_COORDS[$location_key]:-}"
    
    if [[ -z "$gps_coords" ]]; then
        echo -e "${YELLOW}Warning: No GPS coordinates for location: $location_key${NC}"
        echo "SKIP: $filename (no GPS coords for $location_key)" >> "$LOG_FILE"
        ((skipped++))
        continue
    fi
    
    # Split GPS coordinates
    IFS=',' read -r latitude longitude <<< "$gps_coords"
    
    echo -e "${GREEN}Processing: $filename${NC}"
    echo "  Year: $year"
    echo "  Location: $location_city, $location_state"
    echo "  GPS: $latitude, $longitude"
    
    # Build ExifTool command
    exiftool_cmd=(
        exiftool
        -overwrite_original
        "-DateTimeOriginal=$datetime"
        "-CreateDate=$datetime"
        "-GPSLatitude=$latitude"
        "-GPSLongitude=$longitude"
        "-GPSLatitudeRef=N"
        "-GPSLongitudeRef=W"
        "$video_path"
    )
    
    # Execute ExifTool command
    if "${exiftool_cmd[@]}" >> "$LOG_FILE" 2>&1; then
        echo -e "  ${GREEN}✓ Success${NC}"
        echo "SUCCESS: $filename -> $datetime, $gps_coords" >> "$LOG_FILE"
        ((processed++))
    else
        echo -e "  ${RED}✗ Failed${NC}"
        echo "ERROR: $filename (ExifTool failed)" >> "$LOG_FILE"
        ((errors++))
    fi
    
    echo

done < "$CORRECTIONS_FILE"

echo -e "${GREEN}Metadata correction complete!${NC}"
echo "Processed: $processed"
echo "Skipped: $skipped" 
echo "Errors: $errors"
echo "Log: $LOG_FILE"

# Show summary of changes
if [[ $processed -gt 0 ]]; then
    echo
    echo -e "${GREEN}Verifying a few sample files...${NC}"
    
    # Check first few processed files
    sample_count=0
    while IFS='|' read -r filename year location_city location_state && [[ $sample_count -lt 3 ]]; do
        [[ "$filename" =~ ^#.*$ ]] && continue
        [[ -z "$filename" ]] && continue
        
        video_path="$VIDEOS_DIR/$filename"
        [[ ! -f "$video_path" ]] && continue
        
        echo "Sample: $filename"
        exiftool -DateTimeOriginal -GPSLatitude -GPSLongitude "$video_path" | head -3
        echo
        
        ((sample_count++))
    done < "$CORRECTIONS_FILE"
fi