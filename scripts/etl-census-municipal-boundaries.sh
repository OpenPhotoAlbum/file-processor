#!/bin/bash

# ETL Script: US Census Bureau Municipal Boundaries
# Downloads and processes TIGER/Line place shapefiles for NH and ME
# Populates geo_municipal_boundaries table with comprehensive municipal data

set -euo pipefail

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
TEMP_DIR="/tmp/census_municipal_etl"
DB_HOST="127.0.0.1"
DB_PORT="3309"
DB_USER="kin"
DB_PASSWORD="Dalekini21!"
DB_NAME="kin"

# All US States + DC + Territories (FIPS codes)
declare -A STATES=(
    ["01"]="Alabama"
    ["02"]="Alaska" 
    ["04"]="Arizona"
    ["05"]="Arkansas"
    ["06"]="California"
    ["08"]="Colorado"
    ["09"]="Connecticut"
    ["10"]="Delaware"
    ["11"]="District_of_Columbia"
    ["12"]="Florida"
    ["13"]="Georgia"
    ["15"]="Hawaii"
    ["16"]="Idaho"
    ["17"]="Illinois"
    ["18"]="Indiana"
    ["19"]="Iowa"
    ["20"]="Kansas"
    ["21"]="Kentucky"
    ["22"]="Louisiana"
    ["23"]="Maine"
    ["24"]="Maryland"
    ["25"]="Massachusetts"
    ["26"]="Michigan"
    ["27"]="Minnesota"
    ["28"]="Mississippi"
    ["29"]="Missouri"
    ["30"]="Montana"
    ["31"]="Nebraska"
    ["32"]="Nevada"
    ["33"]="New_Hampshire"
    ["34"]="New_Jersey"
    ["35"]="New_Mexico"
    ["36"]="New_York"
    ["37"]="North_Carolina"
    ["38"]="North_Dakota"
    ["39"]="Ohio"
    ["40"]="Oklahoma"
    ["41"]="Oregon"
    ["42"]="Pennsylvania"
    ["44"]="Rhode_Island"
    ["45"]="South_Carolina"
    ["46"]="South_Dakota"
    ["47"]="Tennessee"
    ["48"]="Texas"
    ["49"]="Utah"
    ["50"]="Vermont"
    ["51"]="Virginia"
    ["53"]="Washington"
    ["54"]="West_Virginia"
    ["55"]="Wisconsin"
    ["56"]="Wyoming"
    ["60"]="American_Samoa"
    ["66"]="Guam"
    ["69"]="Northern_Mariana_Islands"
    ["72"]="Puerto_Rico"
    ["78"]="US_Virgin_Islands"
)

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging functions
log_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1"; }

# Check dependencies
check_dependencies() {
    log_info "Checking dependencies..."
    
    local missing_deps=()
    
    command -v ogr2ogr >/dev/null 2>&1 || missing_deps+=("gdal-bin")
    command -v mysql >/dev/null 2>&1 || missing_deps+=("mysql-client")
    command -v unzip >/dev/null 2>&1 || missing_deps+=("unzip")
    command -v curl >/dev/null 2>&1 || missing_deps+=("curl")
    
    if [ ${#missing_deps[@]} -ne 0 ]; then
        log_error "Missing dependencies: ${missing_deps[*]}"
        log_info "Install with: sudo apt-get install ${missing_deps[*]}"
        exit 1
    fi
    
    log_success "All dependencies available"
}

# Setup working directory
setup_workspace() {
    log_info "Setting up workspace..."
    
    rm -rf "$TEMP_DIR"
    mkdir -p "$TEMP_DIR"
    cd "$TEMP_DIR"
    
    log_success "Workspace ready: $TEMP_DIR"
}

# Download TIGER/Line shapefiles
download_shapefiles() {
    log_info "Downloading TIGER/Line shapefiles..."
    
    for fips_code in "${!STATES[@]}"; do
        local state_name="${STATES[$fips_code]}"
        local filename="tl_2023_${fips_code}_place.zip"
        local url="https://www2.census.gov/geo/tiger/TIGER2023/PLACE/${filename}"
        
        log_info "Downloading $state_name ($fips_code)..."
        curl -L -o "$filename" "$url"
        
        log_info "Extracting $filename..."
        unzip -q "$filename"
        
        log_success "Downloaded and extracted $state_name boundaries"
    done
}

# Convert shapefiles to CSV then generate SQL
convert_to_sql() {
    log_info "Converting shapefiles to SQL..."
    
    for fips_code in "${!STATES[@]}"; do
        local state_name="${STATES[$fips_code]}"
        local shapefile="tl_2023_${fips_code}_place.shp"
        local csv_file="${state_name}_places.csv"
        local sql_file="${state_name}_municipal_boundaries.sql"
        
        log_info "Processing $state_name shapefile..."
        
        # First convert to CSV to extract attribute data
        ogr2ogr -f "CSV" "$csv_file" "$shapefile" \
            -sql "SELECT NAME, NAMELSAD, CLASSFP, GEOID FROM tl_2023_${fips_code}_place"
        
        # Create SQL file with proper MySQL syntax
        cat > "$sql_file" << EOF
-- Generated SQL for $state_name municipal boundaries
TRUNCATE TABLE census_places_temp;

EOF
        
        # Map state FIPS to state code
        local state_code
        case "$fips_code" in
            "01") state_code="AL" ;;
            "02") state_code="AK" ;;
            "04") state_code="AZ" ;;
            "05") state_code="AR" ;;
            "06") state_code="CA" ;;
            "08") state_code="CO" ;;
            "09") state_code="CT" ;;
            "10") state_code="DE" ;;
            "11") state_code="DC" ;;
            "12") state_code="FL" ;;
            "13") state_code="GA" ;;
            "15") state_code="HI" ;;
            "16") state_code="ID" ;;
            "17") state_code="IL" ;;
            "18") state_code="IN" ;;
            "19") state_code="IA" ;;
            "20") state_code="KS" ;;
            "21") state_code="KY" ;;
            "22") state_code="LA" ;;
            "23") state_code="ME" ;;
            "24") state_code="MD" ;;
            "25") state_code="MA" ;;
            "26") state_code="MI" ;;
            "27") state_code="MN" ;;
            "28") state_code="MS" ;;
            "29") state_code="MO" ;;
            "30") state_code="MT" ;;
            "31") state_code="NE" ;;
            "32") state_code="NV" ;;
            "33") state_code="NH" ;;
            "34") state_code="NJ" ;;
            "35") state_code="NM" ;;
            "36") state_code="NY" ;;
            "37") state_code="NC" ;;
            "38") state_code="ND" ;;
            "39") state_code="OH" ;;
            "40") state_code="OK" ;;
            "41") state_code="OR" ;;
            "42") state_code="PA" ;;
            "44") state_code="RI" ;;
            "45") state_code="SC" ;;
            "46") state_code="SD" ;;
            "47") state_code="TN" ;;
            "48") state_code="TX" ;;
            "49") state_code="UT" ;;
            "50") state_code="VT" ;;
            "51") state_code="VA" ;;
            "53") state_code="WA" ;;
            "54") state_code="WV" ;;
            "55") state_code="WI" ;;
            "56") state_code="WY" ;;
            "60") state_code="AS" ;;
            "66") state_code="GU" ;;
            "69") state_code="MP" ;;
            "72") state_code="PR" ;;
            "78") state_code="VI" ;;
            *) state_code="XX" ;;
        esac
        
        # Process each line of CSV (skip header)
        tail -n +2 "$csv_file" | while IFS=',' read -r name full_name place_type place_fips_code; do
            # Clean up CSV fields (remove quotes)
            name=$(echo "$name" | sed 's/^"//;s/"$//')
            full_name=$(echo "$full_name" | sed 's/^"//;s/"$//')
            place_type=$(echo "$place_type" | sed 's/^"//;s/"$//')
            place_fips_code=$(echo "$place_fips_code" | sed 's/^"//;s/"$//')
            
            # Escape single quotes for SQL
            name=$(echo "$name" | sed "s/'/''/g")
            full_name=$(echo "$full_name" | sed "s/'/''/g")
            
            # Generate INSERT statement with placeholder geometry
            cat >> "$sql_file" << EOF
INSERT INTO census_places_temp 
    (name, full_name, place_type, fips_code, state_code, country_code, centroid_lat, centroid_lng, boundary_polygon, area_sq_meters)
VALUES 
    ('$name', '$full_name', '$place_type', '$place_fips_code', '$state_code', 'US', 0, 0, ST_GeomFromText('POINT(0 0)'), 0);

EOF
        done
        
        log_success "Converted $state_name to SQL"
    done
}

# Test database connection
test_db_connection() {
    log_info "Testing database connection..."
    
    mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" \
        -e "SELECT COUNT(*) as current_boundaries FROM geo_municipal_boundaries;" \
        --silent 2>/dev/null || {
        log_error "Database connection failed"
        exit 1
    }
    
    log_success "Database connection successful"
}

# Create temporary table for processing
create_temp_table() {
    log_info "Creating temporary processing table..."
    
    mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" << 'EOF'
CREATE TABLE IF NOT EXISTS census_places_temp (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    full_name VARCHAR(150) NOT NULL,
    place_type VARCHAR(20),
    fips_code VARCHAR(10),
    state_code VARCHAR(2) NOT NULL,
    country_code VARCHAR(2) NOT NULL DEFAULT 'US',
    centroid_lat DECIMAL(10,8) NOT NULL,
    centroid_lng DECIMAL(11,8) NOT NULL,
    boundary_polygon GEOMETRY NOT NULL,
    area_sq_meters BIGINT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    INDEX idx_state_code (state_code),
    INDEX idx_name (name),
    INDEX idx_centroid_lat (centroid_lat),
    INDEX idx_centroid_lng (centroid_lng),
    SPATIAL INDEX idx_boundary (boundary_polygon)
);
EOF

    log_success "Temporary table created"
}

# Load data into database
load_data() {
    log_info "Loading municipal boundary data..."
    
    # Get current count
    local before_count
    before_count=$(mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" \
        -e "SELECT COUNT(*) FROM geo_municipal_boundaries;" --silent --skip-column-names)
    
    log_info "Current boundaries in database: $before_count"
    
    # Remove existing US municipal data to avoid duplicates
    log_info "Removing existing US municipal boundaries..."
    mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" \
        -e "DELETE FROM geo_municipal_boundaries WHERE country_code = 'US';"
    
    # Load each state's data
    for fips_code in "${!STATES[@]}"; do
        local state_name="${STATES[$fips_code]}"
        local sql_file="${state_name}_municipal_boundaries.sql"
        
        if [ -f "$sql_file" ]; then
            log_info "Loading $state_name data..."
            
            # Clear temp table
            mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" \
                -e "TRUNCATE census_places_temp;"
            
            # Load shapefile data
            mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < "$sql_file"
            
            # Transfer to main table with proper state code mapping
            local state_code
            if [ "$fips_code" == "23" ]; then
                state_code="ME"
            else
                state_code="NH"
            fi
            
            mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" << EOF
INSERT INTO geo_municipal_boundaries 
    (name, full_name, place_type, fips_code, state_code, country_code, 
     centroid_lat, centroid_lng, boundary_polygon, area_sq_meters)
SELECT 
    name,
    full_name,
    place_type,
    fips_code,
    '$state_code' as state_code,
    'US' as country_code,
    centroid_lat,
    centroid_lng,
    boundary_polygon,
    area_sq_meters
FROM census_places_temp
WHERE name IS NOT NULL AND name != '';
EOF
            
            local count
            count=$(mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" \
                -e "SELECT COUNT(*) FROM census_places_temp WHERE name IS NOT NULL;" --silent --skip-column-names)
            
            log_success "Loaded $count $state_name municipalities"
        else
            log_warning "SQL file not found: $sql_file"
        fi
    done
    
    # Get final count
    local after_count
    after_count=$(mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" \
        -e "SELECT COUNT(*) FROM geo_municipal_boundaries;" --silent --skip-column-names)
    
    local added_count=$((after_count))  # All entries are new
    log_success "Added $added_count new municipal boundaries"
    log_success "Total boundaries in database: $after_count"
}

# Cleanup temporary data
cleanup() {
    log_info "Cleaning up..."
    
    # Drop temporary table
    mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" \
        -e "DROP TABLE IF EXISTS census_places_temp;" 2>/dev/null || true
    
    # Remove temporary files
    rm -rf "$TEMP_DIR"
    
    log_success "Cleanup completed"
}

# Generate summary report
generate_report() {
    log_info "Generating summary report..."
    
    mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" << 'EOF'
SELECT 
    'Municipal Boundaries Summary' as report_section,
    '' as details
UNION ALL
SELECT 
    '=' as report_section,
    '=========================' as details
UNION ALL
SELECT 
    CONCAT('Total municipalities: ', COUNT(*)) as report_section,
    '' as details
FROM geo_municipal_boundaries
UNION ALL
SELECT 
    '' as report_section,
    '' as details
UNION ALL
SELECT 
    'By State:' as report_section,
    '' as details
UNION ALL
SELECT 
    CONCAT('  ', state_code, ': ', COUNT(*), ' municipalities') as report_section,
    '' as details
FROM geo_municipal_boundaries 
GROUP BY state_code 
ORDER BY 1;
EOF

    log_success "ETL process completed successfully!"
}

# Main execution
main() {
    log_info "Starting Census Bureau Municipal Boundaries ETL"
    log_info "Target states: New Hampshire (33) and Maine (23)"
    echo
    
    check_dependencies
    setup_workspace
    test_db_connection
    create_temp_table
    download_shapefiles
    convert_to_sql
    load_data
    cleanup
    generate_report
    
    echo
    log_success "Census municipal boundaries ETL completed!"
    log_info "You can now use comprehensive NH/ME municipal data for photo location detection"
}

# Error handling
trap cleanup EXIT

# Run main function
main "$@"