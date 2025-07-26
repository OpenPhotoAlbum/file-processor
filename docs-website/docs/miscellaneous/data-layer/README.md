---
title: "Data Layer Documentation"
description: Auto-generated from README.md
---

# Data Layer Documentation

**Purpose:** Database, storage, and data integration documentation  
**Last Updated:** July 26, 2025  
**Status:** Active - Consolidated from scattered architecture docs

## Overview

This section contains all documentation related to data storage, database design, and data integration pipelines for the Media Processing Pipeline project.

## Directory Structure

### Schema Documentation
- **[Design Philosophy](schema/design.md)** - Database design principles and query patterns
- **[Location Normalization](schema/location-normalization.md)** - Geographic data foreign key relationships
- **[Storage Architecture](schema/storage-architecture.md)** - JSON sidecar vs database storage analysis

### Setup & Operations
- **[Installation](setup/installation.md)** - Database setup and configuration procedures
- **[Migration](setup/migration.md)** - Schema migration strategy and procedures

### ETL Pipelines
- **[Recreation.gov Integration](etl/recreation-gov.md)** - Facility data extraction and loading

## Database Overview

**System:** MySQL 8.0  
**Container:** mykin_db (port 3309)  
**Critical Data:** 150k+ heritage photos, migration tables, seed data  
**Protection Level:** NEVER recreate without explicit permission

## Key Features

- **Normalized schema** with foreign key relationships for geographic data
- **Query-optimized design** for temporal and spatial searches
- **JSON columns** for flexible metadata storage
- **Comprehensive ETL pipelines** for external data integration
- **Zero data loss** migration from JSON sidecar files

## Navigation

- **New to the project?** Start with [Installation](setup/installation.md)
- **Schema changes?** See [Migration](setup/migration.md)
- **Understanding design?** Read [Design Philosophy](schema/design.md)
- **Adding data sources?** Check ETL documentation

---

**Documentation Standard:** This section consolidates previously scattered database documentation from `/docs/architecture/` for easier navigation and maintenance.