#!/bin/bash

# Set environment variables
export DB_HOST=127.0.0.1
export DB_PORT=3309
export DB_USER=kin
export DB_PASSWORD=Dalekini21!
export DB_NAME=kin

# Remove .d.ts files from dist/database/migrations temporarily
find dist/database/migrations -name "*.d.ts" -type f -delete
find dist/database/migrations -name "*.d.ts.map" -type f -delete

# Remove .d.ts files from dist/database/seeds temporarily
find dist/database/seeds -name "*.d.ts" -type f -delete
find dist/database/seeds -name "*.d.ts.map" -type f -delete

# Run migrations
npx knex migrate:latest --knexfile dist/database/knexfile.js

# Run seeds if migrations succeed
if [ $? -eq 0 ]; then
    echo "Migrations successful, running seeds..."
    npx knex seed:run --knexfile dist/database/knexfile.js
fi