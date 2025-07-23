# Database Setup Guide

## Prerequisites

1. MySQL 8.0+ installed and running
2. Create a database and user:

```sql
CREATE DATABASE media_processing;
CREATE USER 'media_user'@'localhost' IDENTIFIED BY 'your_secure_password';
GRANT ALL PRIVILEGES ON media_processing.* TO 'media_user'@'localhost';
FLUSH PRIVILEGES;
```

## Environment Configuration

1. Copy `.env.example` to `.env`:
```bash
cp .env.example .env
```

2. Update the database configuration in `.env`:
```env
DB_HOST=localhost
DB_PORT=3306
DB_USER=media_user
DB_PASSWORD=your_secure_password
DB_NAME=media_processing
```

## Running Database Setup

### Option 1: Using the setup script (recommended)
```bash
npm run build
node dist/scripts/setup-database.js
```

This will:
- Test the database connection
- Run all migrations (create 14 tables)
- Run seed data (basic equipment and software entries)

### Option 2: Using Knex CLI directly
```bash
# Run migrations
npx knex migrate:latest --knexfile src/database/knexfile.ts

# Run seeds
npx knex seed:run --knexfile src/database/knexfile.ts

# Rollback if needed
npx knex migrate:rollback --knexfile src/database/knexfile.ts
```

## Database Schema Overview

### Core Tables (10 tables)
1. **media_files** - Central registry of all processed media
2. **media_locations** - GPS coordinates with spatial indexing
3. **landmarks** - Normalized landmark data (GNIS, Recreation.gov, NPS)
4. **media_landmarks** - Photo-to-landmark relationships
5. **equipment** - Cameras, lenses, telescopes registry
6. **imaging_trains** - Equipment configurations
7. **software** - Processing software tracking
8. **media_software** - Software usage per file
9. **processing_runs** - Processing history
10. **processing_field_updates** - Field-level update tracking

### Future Enhancement Tables (4 tables)
11. **detected_objects** - Object type registry
12. **media_object_detections** - Object detections with bounding boxes
13. **face_identities** - Person identity management
14. **face_identity_matches** - Face-to-identity matching

## Verification

After setup, verify the tables were created:
```sql
USE media_processing;
SHOW TABLES;
```

Should show 14 tables:
```
+---------------------------+
| Tables_in_media_processing |
+---------------------------+
| detected_objects          |
| equipment                 |
| face_identities          |
| face_identity_matches    |
| imaging_trains           |
| knex_migrations          |
| knex_migrations_lock     |
| landmarks                |
| media_files              |
| media_landmarks          |
| media_locations          |
| media_object_detections  |
| media_software           |
| processing_field_updates |
| processing_runs          |
| software                 |
+---------------------------+
```

## Next Steps

1. Run seed data to populate basic equipment and software entries
2. Build JSON analysis tool to prepare for migration
3. Start batch migration of existing 24,243 JSON files