# Timezone Handling in Media Processing Pipeline

## Problem Analysis

**Issue**: Database timestamps display in UTC instead of local EDT time.

**Root Cause**: 
- System: America/New_York (EDT = UTC-4)
- Docker MySQL container: UTC timezone
- Application correctly stores UTC timestamps
- Database displays raw UTC without timezone context

## Current State

```bash
# System time
date                    # Mon Jun 30 12:08 PM EDT 2025

# Database time  
MySQL NOW()             # 2025-06-30 20:08:11 (UTC, appears 4 hours ahead)
MySQL UTC_TIMESTAMP()   # 2025-06-30 20:08:11 (same as NOW - indicates UTC mode)
```

## Solutions Attempted

1. ❌ **Docker TZ environment variable** - Container timezone unchanged
2. ❌ **MySQL command line `--default-time-zone`** - Not recognized 
3. ❌ **MySQL config file** - Not taking effect with existing data volume

## Recommended Solution: Application Layer Handling

### For Database Queries (Display)

Use timezone conversion in queries when you need local time:

```sql
-- Convert UTC timestamps to EDT for display
SELECT 
  relative_path,
  created_at as created_utc,
  CONVERT_TZ(created_at, '+00:00', '-04:00') as created_edt,
  primary_timestamp as primary_utc,
  CONVERT_TZ(primary_timestamp, '+00:00', '-04:00') as primary_edt
FROM media_files;
```

### For Application Code

JavaScript handles this automatically:

```javascript
// Database stores: 2025-06-30T20:08:11.000Z (UTC)
// JavaScript displays based on system timezone
const dbTimestamp = new Date('2025-06-30T20:08:11.000Z');

// Automatic local conversion
dbTimestamp.toLocaleString();               // "6/30/2025, 4:08:11 PM" (EDT)
dbTimestamp.toLocaleString('en-US', {       // Explicit timezone
  timeZone: 'America/New_York'
});
```

## Current Impact

**What works correctly:**
- ✅ Timestamp storage (UTC is correct for international systems)
- ✅ Timestamp comparison and sorting
- ✅ Application timezone conversion

**What appears confusing:**
- ❌ Raw database queries show UTC time (4 hours ahead of local)
- ❌ Database admin tools display UTC timestamps

## Verification Script

Run `/scripts/check-timezone-conversion.cjs` to see side-by-side UTC vs EDT times.

## Best Practices Going Forward

1. **Store in UTC** (already doing this correctly)
2. **Convert for display** using application logic or SQL `CONVERT_TZ()`
3. **Document timezone assumptions** in code comments
4. **Test across timezones** if application scales beyond EST/EDT

## Alternative: Fresh Container Setup

If you want to restart with proper timezone (loses existing data):

```bash
# WARNING: This destroys existing database data
docker-compose down -v
# Edit docker-compose.yaml to add:
#   - TZ=America/New_York environment variable  
#   - /etc/localtime:/etc/localtime:ro volume mount
docker-compose up -d
```

## Recommendation

**Keep current setup** and use application-layer timezone conversion. This is actually the most robust approach for production systems.