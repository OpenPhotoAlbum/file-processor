---
title: "Database Setup & Operations"
description: Auto-generated from README.md
---

# Database Setup & Operations

**Purpose:** Installation, configuration, and migration procedures  
**Last Updated:** July 26, 2025

## Setup Documentation

### Initial Setup
- **[Installation](installation.md)** - Complete database setup and configuration guide
- **[Migration](migration.md)** - Schema migration strategy and procedures

## Quick Start

For new installations:
1. **Install MySQL 8.0+** and create database
2. **Follow [Installation Guide](installation.md)** for environment setup
3. **Run migration scripts** as documented in installation guide

## Database Protection

**CRITICAL:** The mykin_db container contains 150k+ photos and irreplaceable heritage data.

### Safety Protocols
- **NEVER recreate** the database container without explicit permission
- **Always backup** before schema changes
- **Test migrations** on development data first
- **Verify data integrity** after all operations

## Operations

### Schema Changes
All schema modifications must follow the migration strategy in [migration.md](migration.md):
- Version-controlled migration files
- Rollback procedures documented
- Data preservation verified

### Container Management
```bash
# Check database status
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SHOW TABLES;"

# Backup before operations
# (Backup procedures in installation.md)
```

See [migration.md](migration.md) for complete operational procedures.