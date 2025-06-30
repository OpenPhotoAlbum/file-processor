#!/bin/bash

# Smart Parallel Database Processing Script for Media Archive
# Checks database BEFORE processing to avoid redundant work
# Processes all media files in /photos/archive/ using CLI --output-db

set -euo pipefail

# Configuration
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
ARCHIVE_DIR="/photos/archive"
readonly LOG_FILE="${PROJECT_DIR}/logs/database-processing.log"
readonly PROGRESS_FILE="${PROJECT_DIR}/logs/database-processing-progress.txt"
MAX_PARALLEL=20
readonly CLI_COMMAND="cd ${PROJECT_DIR} && node dist/main.js"
readonly CHECK_SCRIPT="${SCRIPT_DIR}/check-file-in-db.js"

# Color output
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[1;33m'
readonly BLUE='\033[0;34m'
readonly NC='\033[0m' # No Color

# Ensure log directory exists
mkdir -p "$(dirname "$LOG_FILE")"
mkdir -p "$(dirname "$PROGRESS_FILE")"

# Statistics tracking
declare -i TOTAL_FILES=0
declare -i PROCESSED_FILES=0
declare -i SUCCESS_FILES=0
declare -i FAILED_FILES=0
declare -i SKIPPED_FILES=0

# Function to log with timestamp and color
log() {
    local level="$1"
    local message="$2"
    local timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    local color=""
    
    case "$level" in
        "ERROR") color="$RED" ;;
        "SUCCESS") color="$GREEN" ;;
        "WARN") color="$YELLOW" ;;
        "INFO") color="$BLUE" ;;
        *) color="$NC" ;;
    esac
    
    # Always start new session with header
    if [[ ! -f "$LOG_FILE" ]] || [[ "$level" == "SESSION_START" ]]; then
        echo "=======================================" >> "$LOG_FILE"
        echo "Database Processing Session: $timestamp" >> "$LOG_FILE"
        echo "=======================================" >> "$LOG_FILE"
    fi
    
    echo -e "${color}[$timestamp] [$level] $message${NC}" | tee -a "$LOG_FILE"
}

# Function to update progress
update_progress() {
    local current="$1"
    local total="$2"
    local percentage=$((current * 100 / total))
    echo "Progress: $current/$total ($percentage%) - Success: $SUCCESS_FILES, Failed: $FAILED_FILES, Skipped: $SKIPPED_FILES" > "$PROGRESS_FILE"
}

# Function to find all media files
find_media_files() {
    local archive_dir="$1"
    
    log "INFO" "Scanning for media files in: $archive_dir"
    
    # Find all supported media files
    find "$archive_dir" -type f \( \
        -iname "*.jpg" -o -iname "*.jpeg" -o \
        -iname "*.heic" -o -iname "*.heif" -o \
        -iname "*.png" -o -iname "*.gif" -o \
        -iname "*.webp" -o -iname "*.tiff" -o \
        -iname "*.tif" -o -iname "*.dng" -o \
        -iname "*.cr2" -o -iname "*.mp4" -o \
        -iname "*.mov" -o -iname "*.avi" -o \
        -iname "*.m4v" -o -iname "*.mkv" -o \
        -iname "*.3gp" -o -iname "*.webm" \
    \) | sort
}

# Function to check prerequisites
check_prerequisites() {
    log "INFO" "Checking prerequisites..."
    
    if [[ ! -d "$ARCHIVE_DIR" ]]; then
        log "ERROR" "Archive directory not found: $ARCHIVE_DIR"
        exit 1
    fi
    
    if [[ ! -f "${PROJECT_DIR}/dist/main.js" ]]; then
        log "ERROR" "CLI not built. Run 'npm run build' first."
        exit 1
    fi
    
    if [[ ! -f "$CHECK_SCRIPT" ]]; then
        log "ERROR" "Database check script not found: $CHECK_SCRIPT"
        exit 1
    fi
    
    # Test database connection
    log "INFO" "Testing database connection..."
    if ! timeout 10 bash -c "cd ${PROJECT_DIR} && node dist/main.js -f scratch/sample_media/jpg_with_gps_iphone.JPG --output-db --quiet" 2>/dev/null; then
        log "ERROR" "Database connection test failed. Check MySQL connection."
        exit 1
    fi
    
    log "SUCCESS" "Prerequisites check passed"
}

# Function to show script usage
show_usage() {
    cat << EOF
Usage: $0 [OPTIONS]

Smart database processing that checks for existing files BEFORE processing.

OPTIONS:
    -p, --parallel NUM     Maximum parallel processes (default: $MAX_PARALLEL)
    -a, --archive-dir DIR  Archive directory to process (default: /photos/archive)
    -t, --test             Process only first 50 files for testing
    -d, --dry-run          Show what would be processed without running
    -s, --skip-existing    Skip files already in database (default: true)
    -f, --force-all        Process all files even if they exist
    -h, --help             Show this help message

EXAMPLES:
    $0                     # Smart processing - skip existing files
    $0 --force-all         # Force reprocess all files
    $0 --parallel 10       # Use 10 parallel processes
    $0 --test              # Test run with first 50 files

SMART FEATURES:
    - Checks database BEFORE processing each file
    - Skips files that already exist (unless --force-all)
    - Saves processing time and API calls
    - Perfect for resuming interrupted runs

LOGS:
    Processing log: $LOG_FILE
    Progress file:  $PROGRESS_FILE
    
    To monitor progress: tail -f $PROGRESS_FILE
    To monitor detailed log: tail -f $LOG_FILE

EOF
}

# Parse command line arguments
SKIP_EXISTING=true  # Default to smart mode
while [[ $# -gt 0 ]]; do
    case $1 in
        -p|--parallel)
            MAX_PARALLEL="$2"
            shift 2
            ;;
        -a|--archive-dir)
            ARCHIVE_DIR="$2"
            shift 2
            ;;
        -t|--test)
            TEST_MODE=true
            shift
            ;;
        -d|--dry-run)
            DRY_RUN=true
            shift
            ;;
        -s|--skip-existing)
            SKIP_EXISTING=true
            shift
            ;;
        -f|--force-all)
            SKIP_EXISTING=false
            shift
            ;;
        -h|--help)
            show_usage
            exit 0
            ;;
        *)
            log "ERROR" "Unknown option: $1"
            show_usage
            exit 1
            ;;
    esac
done

# Main execution
main() {
    log "SESSION_START" "Starting SMART parallel database processing script"
    log "INFO" "Archive directory: $ARCHIVE_DIR"
    log "INFO" "Max parallel processes: $MAX_PARALLEL"
    log "INFO" "Log file: $LOG_FILE"
    log "INFO" "Progress file: $PROGRESS_FILE"
    
    if [[ "$SKIP_EXISTING" == "true" ]]; then
        log "INFO" "SMART MODE: Will check database before processing each file"
    else
        log "INFO" "FORCE MODE: Will process all files regardless of database status"
    fi
    
    # Check prerequisites
    check_prerequisites
    
    # Find all media files
    log "INFO" "Finding media files..."
    local media_files=()
    while IFS= read -r file; do
        [[ -n "$file" ]] && media_files+=("$file")
    done < <(find_media_files "$ARCHIVE_DIR")
    
    TOTAL_FILES=${#media_files[@]}
    log "INFO" "Found $TOTAL_FILES media files"
    
    if [[ $TOTAL_FILES -eq 0 ]]; then
        log "WARN" "No media files found in $ARCHIVE_DIR"
        exit 0
    fi
    
    # Test mode - process only first 50 files
    if [[ "${TEST_MODE:-false}" == "true" ]]; then
        local test_limit=50
        if [[ $TOTAL_FILES -gt $test_limit ]]; then
            media_files=("${media_files[@]:0:$test_limit}")
            TOTAL_FILES=$test_limit
            log "INFO" "Test mode: Processing first $TOTAL_FILES files"
        fi
    fi
    
    # Dry run - show files and exit
    if [[ "${DRY_RUN:-false}" == "true" ]]; then
        log "INFO" "DRY RUN: Would process these files:"
        printf '%s\n' "${media_files[@]}" | head -20
        if [[ $TOTAL_FILES -gt 20 ]]; then
            log "INFO" "... and $((TOTAL_FILES - 20)) more files"
        fi
        exit 0
    fi
    
    # Initialize progress
    update_progress 0 "$TOTAL_FILES"
    
    # Process files in parallel with smart checking
    log "INFO" "Starting smart parallel processing with $MAX_PARALLEL workers"
    
    # Create a wrapper script for each worker
    local temp_dir="/tmp/media-processor-$$"
    mkdir -p "$temp_dir"
    local worker_script="${temp_dir}/worker.sh"
    cat > "$worker_script" << 'EOF'
#!/bin/bash
WORKER_PROJECT_DIR="$1"
WORKER_LOG_FILE="$2"
WORKER_FILE_PATH="$3"
WORKER_SKIP_EXISTING="$4"
WORKER_CHECK_SCRIPT="$5"

# Change to project directory
cd "$WORKER_PROJECT_DIR"

# Process the file
temp_log="/tmp/worker-$$.log"
{
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Checking: $WORKER_FILE_PATH"
    
    # SMART: Check if file exists in database FIRST
    if [[ "$WORKER_SKIP_EXISTING" == "true" ]]; then
        if node "$WORKER_CHECK_SCRIPT" "$WORKER_FILE_PATH" >/dev/null 2>&1; then
            echo "[$(date '+%Y-%m-%d %H:%M:%S')] SKIPPED (already in DB): $WORKER_FILE_PATH"
            echo "SKIPPED" > "${temp_log}.status"
            exit 0
        fi
    fi
    
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Processing: $WORKER_FILE_PATH"
    
    if timeout 300 node dist/main.js \
        -f "$WORKER_FILE_PATH" \
        --output-db \
        --db-collection archive \
        --no-colors \
        --quiet 2>&1; then
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] SUCCESS: $WORKER_FILE_PATH"
        echo "SUCCESS" > "${temp_log}.status"
    else
        local exit_code=$?
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] FAILED: $WORKER_FILE_PATH (exit code: $exit_code)"
        echo "FAILED" > "${temp_log}.status"
    fi
} >> "$temp_log" 2>&1

# Append to main log
cat "$temp_log" >> "$WORKER_LOG_FILE"

# Update counters
if [[ -f "${temp_log}.status" ]]; then
    status=$(cat "${temp_log}.status")
    echo "$status" > "/tmp/result-$$.txt"
    rm -f "${temp_log}.status"
else
    echo "FAILED" > "/tmp/result-$$.txt"
fi

# Clean up
rm -f "$temp_log"
EOF

    chmod +x "$worker_script"
    
    # Use GNU parallel if available, otherwise use xargs
    if command -v parallel >/dev/null 2>&1; then
        log "INFO" "Using GNU parallel for processing"
        printf '%s\n' "${media_files[@]}" | \
            parallel -j "$MAX_PARALLEL" --ungroup "$worker_script" "$PROJECT_DIR" "$LOG_FILE" {} "$SKIP_EXISTING" "$CHECK_SCRIPT"
    else
        log "INFO" "Using xargs for processing (install GNU parallel for better performance)"
        printf '%s\n' "${media_files[@]}" | \
            xargs -P "$MAX_PARALLEL" -I {} "$worker_script" "$PROJECT_DIR" "$LOG_FILE" {} "$SKIP_EXISTING" "$CHECK_SCRIPT"
    fi
    
    # Count results from worker files
    local success_count=0
    local failed_count=0
    local skipped_count=0
    for result_file in /tmp/result-*.txt; do
        if [[ -f "$result_file" ]]; then
            local result=$(cat "$result_file")
            case "$result" in
                "SUCCESS") ((success_count++)) ;;
                "FAILED") ((failed_count++)) ;;
                "SKIPPED") ((skipped_count++)) ;;
            esac
            rm -f "$result_file"
        fi
    done
    
    SUCCESS_FILES=$success_count
    FAILED_FILES=$failed_count
    SKIPPED_FILES=$skipped_count
    PROCESSED_FILES=$((success_count + failed_count + skipped_count))
    
    # Clean up temp directory
    rm -rf "$temp_dir"
    rm -f /tmp/result-*.txt 2>/dev/null || true
    
    # Final statistics
    log "INFO" "Processing complete!"
    log "INFO" "Total files: $TOTAL_FILES"
    log "SUCCESS" "Successfully processed: $SUCCESS_FILES"
    log "INFO" "Skipped (already in DB): $SKIPPED_FILES"
    log "ERROR" "Failed files: $FAILED_FILES"
    
    # Update final progress
    update_progress "$PROCESSED_FILES" "$TOTAL_FILES"
    
    if [[ $FAILED_FILES -gt 0 ]]; then
        log "WARN" "Some files failed to process. Check log for details: $LOG_FILE"
        exit 1
    else
        log "SUCCESS" "All files processed successfully!"
    fi
}

# Trap signals for cleanup
trap 'log "ERROR" "Script interrupted"; exit 130' INT TERM

# Run main function
main "$@"