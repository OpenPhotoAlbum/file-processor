#!/bin/bash

# Database Media Cleanup Script
# Purpose: Remove all media files and associated data while preserving reference data
# This allows starting fresh without recreating the MySQL volume

set -e

DB_HOST=${DB_HOST:-127.0.0.1}
DB_PORT=${DB_PORT:-3309}
DB_USER=${DB_USER:-root}
DB_PASSWORD=${DB_PASSWORD:-Dalekini21!}
DB_NAME=${DB_NAME:-kin}

echo "🧹 Starting database media cleanup..."
echo "Target: ${DB_USER}@${DB_HOST}:${DB_PORT}/${DB_NAME}"
echo

# Confirm with user
read -p "⚠️  This will DELETE ALL media files and associated data. Continue? [y/N] " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Cleanup cancelled"
    exit 1
fi

echo "🔄 Executing cleanup..."

# Function to execute SQL and show results
execute_sql() {
    local description="$1"
    local sql="$2"
    
    echo "   $description"
    mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e "$sql" 2>/dev/null || {
        echo "   ❌ Failed: $description"
        return 1
    }
    echo "   ✅ Completed: $description"
}

# Show current counts before cleanup
echo "📊 Current record counts:"
execute_sql "Media files" "SELECT COUNT(*) as media_files FROM media_files;"
execute_sql "Media locations" "SELECT COUNT(*) as media_locations FROM media_locations;"
execute_sql "Media landmarks" "SELECT COUNT(*) as media_landmarks FROM media_landmarks;"
execute_sql "Processing runs" "SELECT COUNT(*) as processing_runs FROM processing_runs;"
execute_sql "Landmarks" "SELECT COUNT(*) as landmarks FROM landmarks;"

echo
echo "🗑️  Deleting media data (cascades will handle related records)..."

# Clear all media-related tables
# Note: CASCADE deletes will automatically handle:
# - media_locations (ON DELETE CASCADE)
# - media_landmarks (ON DELETE CASCADE) 
# - processing_runs (ON DELETE CASCADE)
# - media_object_detections (ON DELETE CASCADE)
# - media_software (ON DELETE CASCADE)
# - face_identity_matches (ON DELETE CASCADE)

execute_sql "Clearing media files (with cascades)" "DELETE FROM media_files;"

# Clear landmarks table (media-specific landmarks)
execute_sql "Clearing landmarks" "DELETE FROM landmarks;"

# Clear any face identities that may have been created
execute_sql "Clearing face identities" "DELETE FROM face_identities;"

# Clear detected objects
execute_sql "Clearing detected objects" "DELETE FROM detected_objects;"

# Clear software records  
execute_sql "Clearing software records" "DELETE FROM software;"

# Clear equipment and imaging trains if they exist
execute_sql "Clearing imaging trains" "DELETE FROM imaging_trains;"
execute_sql "Clearing equipment" "DELETE FROM equipment;"

echo
echo "📊 Post-cleanup record counts:"
execute_sql "Media files" "SELECT COUNT(*) as media_files FROM media_files;"
execute_sql "Media locations" "SELECT COUNT(*) as media_locations FROM media_locations;"
execute_sql "Media landmarks" "SELECT COUNT(*) as media_landmarks FROM media_landmarks;"
execute_sql "Processing runs" "SELECT COUNT(*) as processing_runs FROM processing_runs;"
execute_sql "Landmarks" "SELECT COUNT(*) as landmarks FROM landmarks;"

echo
echo "✅ Database media cleanup completed!"
echo
echo "📋 Preserved data:"
echo "   • Geographic reference data (GNIS features, municipal boundaries, countries, states, cities)"
echo "   • Recreation.gov facilities"
echo "   • Database schema and indexes"
echo "   • MySQL volume and configuration"
echo
echo "🔄 Ready for fresh media processing!"