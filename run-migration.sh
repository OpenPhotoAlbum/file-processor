#!/bin/bash

echo "🚀 Starting migration with proper settings extraction and immediate failure on errors..."

# Set environment variables for database connection
export DB_HOST=127.0.0.1
export DB_PORT=3309
export DB_USER=kin
export DB_PASSWORD='Dalekini21!'
export DB_NAME=kin

# Run migrations first
echo "📦 Running database migrations..."
cd dist/database && npx knex migrate:latest

# Seed reference data
echo "🌱 Seeding reference data..."
npx knex seed:run

# Go back to root
cd ../..

echo "📊 Starting batch migration..."
echo "   - Database: kin"
echo "   - Host: $DB_HOST:$DB_PORT" 
echo "   - User: $DB_USER"
echo "   - Batch size: 250 (optimized for reliability)"
echo "   - Failure handling: STOP IMMEDIATELY"
echo ""

# Run the migration
node dist/scripts/batch-migrate-json.js /photos/archive 250