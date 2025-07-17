#!/bin/bash

# Simple Scan Wrapper
# Wraps multicrop-scan with GPS coordinate integration
# Usage: ./scripts/scan.sh --date <MM-DD-YYYY> --description <description> [options]

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Default values
DATE=""
DESCRIPTION=""
LOCATION=""
ROTATE_FLAG=false
STAGING_DIR="/photos/staging/scans"
BACKGROUND="red"

# Function to print colored output
print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

# Function to show help
show_help() {
    echo "📸 Simple Scan Wrapper"
    echo ""
    echo "Usage: ./scripts/scan.sh --date <MM-DD-YYYY> --description <description> [options]"
    echo ""
    echo "Required arguments:"
    echo "  --date <date>         Date in MM-DD-YYYY format (e.g., 08-01-1998)"
    echo "  --description <desc>  Description for photo batch"
    echo ""
    echo "Optional arguments:"
    echo "  --location <loc>      GPS coords, shortcuts, or place name"
    echo "  --background <color>  Scanner background (red, white) [default: red]"
    echo "  --staging <dir>       Output directory [default: /photos/staging/scans]"
    echo "  --rotate              Launch rotation GUI after scanning"
    echo "  --help                Show this help"
    echo ""
    echo "Location formats:"
    echo "  GPS coords:  \"42.7762,-71.0773\""
    echo "  Shortcuts:   \"Lawrence Apartment\", \"lawrence\", \"miller\""
    echo "  Place name:  \"Haverhill, MA\""
    echo ""
    echo "Examples:"
    echo "  ./scripts/scan.sh --date 08-01-1998 --description \"baseball game\""
    echo "  ./scripts/scan.sh --date 08-01-1998 --description \"baseball\" --location \"miller\" --rotate"
    echo "  ./scripts/scan.sh --date 12-25-1985 --description \"christmas\" --location \"lawrence\""
    echo ""
    echo "What this does:"
    echo "  1. Calls multicrop-scan to scan and separate photos"
    echo "  2. Applies GPS coordinates to all separated photos (if provided)"
    echo "  3. Optionally launches rotation GUI for manual review"
}

# Function to validate GPS coordinates
validate_gps() {
    local coords="$1"
    
    if [[ "$coords" =~ ^-?[0-9]+\.?[0-9]*,-?[0-9]+\.?[0-9]*$ ]]; then
        local lat=$(echo "$coords" | cut -d',' -f1)
        local lng=$(echo "$coords" | cut -d',' -f2)
        
        # Validate latitude range (-90 to 90)
        if (( $(echo "$lat < -90 || $lat > 90" | bc -l) )); then
            print_error "Invalid latitude: $lat (must be between -90 and 90)"
            return 1
        fi
        
        # Validate longitude range (-180 to 180)
        if (( $(echo "$lng < -180 || $lng > 180" | bc -l) )); then
            print_error "Invalid longitude: $lng (must be between -180 and 180)"
            return 1
        fi
        
        return 0
    else
        return 1
    fi
}

# Function to lookup coordinates from geotag shortcuts
lookup_shortcut() {
    local location="$1"
    local shortcuts_file="scripts/manual-photo-tools/geotag-shortcuts.json"
    
    if [ ! -f "$shortcuts_file" ]; then
        return 1
    fi
    
    # Check if jq is available for JSON parsing
    if ! command -v jq &> /dev/null; then
        return 1
    fi
    
    # Convert location to lowercase for comparison
    local location_lower=$(echo "$location" | tr '[:upper:]' '[:lower:]')
    
    # First, try to find in text_aliases (case-insensitive)
    local coords=$(jq -r --arg loc "$location_lower" '.text_aliases | to_entries[] | select(.key | ascii_downcase == $loc) | .value | "\(.[0]),\(.[1])"' "$shortcuts_file" 2>/dev/null | head -1)
    
    if [ -n "$coords" ] && [ "$coords" != "null" ]; then
        echo "$coords"
        return 0
    fi
    
    # Then, try to find by name in shortcuts (case-insensitive)
    coords=$(jq -r --arg loc "$location" '.shortcuts[] | select(.name | test($loc; "i")) | .coordinates | "\(.[0]),\(.[1])"' "$shortcuts_file" 2>/dev/null | head -1)
    
    if [ -n "$coords" ] && [ "$coords" != "null" ]; then
        echo "$coords"
        return 0
    fi
    
    return 1
}

# Function to write GPS coordinates to photos
write_gps_to_photos() {
    local staging_dir="$1"
    local description="$2"
    local lat="$3"
    local lng="$4"
    
    print_info "Writing GPS coordinates ($lat, $lng) to photos..."
    
    # Generate pattern to match created files (multicrop-scan creates files with this pattern)
    local clean_desc=$(echo "$description" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/,/__/g' | sed 's/[^a-z0-9_-]//g')
    local pattern="*${clean_desc}*.jpg"
    
    # Find photos matching the pattern
    local photo_files=()
    while IFS= read -r -d '' file; do
        photo_files+=("$file")
    done < <(find "$staging_dir" -name "$pattern" -type f -print0 2>/dev/null)
    
    if [ ${#photo_files[@]} -eq 0 ]; then
        print_warning "No photos found matching pattern: $pattern"
        print_info "Files in staging: $(ls -1 "$staging_dir" | grep "\.jpg$" | head -5)"
        return 1
    fi
    
    # Check if exiftool is available
    if ! command -v exiftool &> /dev/null; then
        print_error "exiftool not found. GPS coordinates not written."
        print_info "Install with: sudo apt-get install libimage-exiftool-perl"
        return 1
    fi
    
    # Write GPS coordinates to each photo
    local success_count=0
    for photo in "${photo_files[@]}"; do
        print_info "Writing GPS to: $(basename "$photo")"
        if exiftool -overwrite_original \
            -GPS:GPSLatitude="$lat" \
            -GPS:GPSLongitude="$lng" \
            -GPS:GPSLatitudeRef="$([ $(echo "$lat >= 0" | bc -l) -eq 1 ] && echo "N" || echo "S")" \
            -GPS:GPSLongitudeRef="$([ $(echo "$lng >= 0" | bc -l) -eq 1 ] && echo "E" || echo "W")" \
            "$photo" >/dev/null 2>&1; then
            ((success_count++))
        else
            print_warning "Failed to write GPS to: $(basename "$photo")"
        fi
    done
    
    print_success "GPS coordinates written to $success_count photos"
    return 0
}

# Function to launch rotation GUI
launch_rotation_gui() {
    local staging_dir="$1"
    local description="$2"
    
    print_info "Launching rotation GUI..."
    
    # Check if rotation script exists
    local rotation_script="scripts/manual-photo-tools/rotate-and-save.py"
    if [ ! -f "$rotation_script" ]; then
        print_error "Rotation script not found: $rotation_script"
        return 1
    fi
    
    # Check if virtual environment exists
    local venv_python="scripts/manual-photo-tools/venv/bin/python3"
    if [ ! -f "$venv_python" ]; then
        print_error "Python virtual environment not found: $venv_python"
        print_info "Set up with: cd scripts/manual-photo-tools && ./setup.sh"
        return 1
    fi
    
    # Generate pattern to match created files
    local clean_desc=$(echo "$description" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/,/__/g' | sed 's/[^a-z0-9_-]//g')
    local pattern="*${clean_desc}*.jpg"
    
    # Find photos and launch GUI
    local photo_files=()
    while IFS= read -r -d '' file; do
        photo_files+=("$file")
    done < <(find "$staging_dir" -name "$pattern" -type f -print0 2>/dev/null)
    
    if [ ${#photo_files[@]} -eq 0 ]; then
        print_warning "No photos found for rotation GUI"
        return 1
    fi
    
    print_info "Starting rotation GUI with ${#photo_files[@]} photos..."
    "$venv_python" "$rotation_script" "${photo_files[@]}"
}

# Parse command line arguments
if [ $# -eq 0 ]; then
    show_help
    exit 1
fi

while [[ $# -gt 0 ]]; do
    case $1 in
        --date)
            DATE="$2"
            shift 2
            ;;
        --description)
            DESCRIPTION="$2"
            shift 2
            ;;
        --location)
            LOCATION="$2"
            shift 2
            ;;
        --background)
            BACKGROUND="$2"
            shift 2
            ;;
        --staging)
            STAGING_DIR="$2"
            shift 2
            ;;
        --rotate)
            ROTATE_FLAG=true
            shift
            ;;
        --help|-h)
            show_help
            exit 0
            ;;
        *)
            print_error "Unknown option: $1"
            echo ""
            show_help
            exit 1
            ;;
    esac
done

# Validate required arguments
if [ -z "$DATE" ]; then
    print_error "--date is required"
    echo ""
    show_help
    exit 1
fi

if [ -z "$DESCRIPTION" ]; then
    print_error "--description is required"
    echo ""
    show_help
    exit 1
fi

# Validate date format (MM-DD-YYYY)
if ! [[ "$DATE" =~ ^[0-9]{2}-[0-9]{2}-[0-9]{4}$ ]]; then
    print_error "Invalid date format: $DATE"
    print_info "Use MM-DD-YYYY format (e.g., 08-01-1998)"
    exit 1
fi

# Validate background color
if [ "$BACKGROUND" != "red" ] && [ "$BACKGROUND" != "white" ]; then
    print_error "Invalid background color: $BACKGROUND (use 'red' or 'white')"
    exit 1
fi

# Process location if provided
HAS_GPS=false
GPS_LAT=""
GPS_LNG=""
PLACE_NAME=""

if [ -n "$LOCATION" ]; then
    if validate_gps "$LOCATION"; then
        # Direct GPS coordinates
        HAS_GPS=true
        GPS_LAT=$(echo "$LOCATION" | cut -d',' -f1)
        GPS_LNG=$(echo "$LOCATION" | cut -d',' -f2)
        print_info "GPS coordinates: $GPS_LAT, $GPS_LNG"
    else
        # Try to lookup as shortcut
        SHORTCUT_COORDS=$(lookup_shortcut "$LOCATION")
        if [ $? -eq 0 ] && [ -n "$SHORTCUT_COORDS" ]; then
            HAS_GPS=true
            GPS_LAT=$(echo "$SHORTCUT_COORDS" | cut -d',' -f1)
            GPS_LNG=$(echo "$SHORTCUT_COORDS" | cut -d',' -f2)
            print_info "Found shortcut '$LOCATION': $GPS_LAT, $GPS_LNG"
        else
            PLACE_NAME="$LOCATION"
            print_info "Place name: $PLACE_NAME (no GPS coordinates will be applied)"
        fi
    fi
fi

# Check dependencies
print_info "Checking dependencies..."

if ! command -v multicrop-scan &> /dev/null; then
    print_error "multicrop-scan not found"
    print_info "Install with: cd scripts/multicrop-tool && ./install.sh"
    exit 1
fi

# Show scan summary
echo ""
echo "📸 Scan Summary:"
echo "   Date: $DATE"
echo "   Description: $DESCRIPTION"
if [ "$HAS_GPS" = true ]; then
    echo "   GPS: $GPS_LAT, $GPS_LNG"
elif [ -n "$PLACE_NAME" ]; then
    echo "   Location: $PLACE_NAME (reference only)"
fi
echo "   Background: $BACKGROUND"
echo "   Rotation GUI: $([ "$ROTATE_FLAG" = true ] && echo "Yes" || echo "No")"
echo "   Output: $STAGING_DIR"
echo ""

# Step 1: Execute multicrop-scan
print_info "Step 1: Running multicrop-scan..."
SCAN_CMD="multicrop-scan -dest \"$STAGING_DIR\" -date \"$DATE\" -name \"$DESCRIPTION\" -r $BACKGROUND"

print_info "Command: $SCAN_CMD"
echo ""

if eval $SCAN_CMD; then
    print_success "Scanning and separation completed"
    
    # Count created photos
    clean_desc=$(echo "$DESCRIPTION" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/,/__/g' | sed 's/[^a-z0-9_-]//g')
    pattern="*${clean_desc}*.jpg"
    PHOTO_COUNT=$(find "$STAGING_DIR" -name "$pattern" -type f 2>/dev/null | wc -l)
    print_success "$PHOTO_COUNT photos created"
    
    # Step 2: Apply GPS coordinates if provided
    if [ "$HAS_GPS" = true ]; then
        echo ""
        print_info "Step 2: Applying GPS coordinates..."
        write_gps_to_photos "$STAGING_DIR" "$DESCRIPTION" "$GPS_LAT" "$GPS_LNG"
    fi
    
    # Step 3: Launch rotation GUI if requested
    if [ "$ROTATE_FLAG" = true ]; then
        echo ""
        print_info "Step 3: Launching rotation GUI..."
        launch_rotation_gui "$STAGING_DIR" "$DESCRIPTION"
    fi
    
    echo ""
    print_success "Scan workflow completed successfully!"
    print_info "Photos available in: $STAGING_DIR"
    
    if [ "$HAS_GPS" = true ]; then
        print_info "GPS coordinates applied to all photos"
    fi
    
else
    print_error "multicrop-scan failed"
    exit 1
fi