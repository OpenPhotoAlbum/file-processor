---
title: "Database Schema Documentation"
description: Auto-generated from README.md
---

# Database Schema Documentation

**Purpose:** Database design, architecture, and schema documentation  
**Last Updated:** July 26, 2025

## Schema Documentation

### Core Design
- **[Design Philosophy](design.md)** - Query-driven architecture and extensibility principles
- **[Storage Architecture](storage-architecture.md)** - JSON sidecar files vs database storage analysis

### Specialized Schemas
- **[Location Normalization](location-normalization.md)** - Geographic data foreign key relationships and spatial operations

## Design Philosophy

The database schema prioritizes query performance over direct JSON structure mirroring:
- **Temporal queries** - Primary use case: "Photos from July 2023"
- **Spatial queries** - "Photos within 5km of landmarks"
- **Equipment analytics** - "All images from specific imaging trains"
- **Processing tracking** - "Files that need reprocessing"

## Schema Evolution

All schema changes are managed through:
1. **Migration files** - Version-controlled schema changes
2. **Rollback procedures** - Safe schema evolution
3. **Data preservation** - Zero data loss requirements

See [../setup/migration.md](../setup/migration.md) for schema change procedures.