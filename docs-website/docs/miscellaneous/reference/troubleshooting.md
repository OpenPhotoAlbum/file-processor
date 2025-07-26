---
title: "Troubleshooting Guide"
description: Auto-generated from troubleshooting.md
---

# Troubleshooting Guide

**Purpose:** Common issues and resolution procedures  
**Last Updated:** July 26, 2025  
**Status:** Comprehensive troubleshooting reference

## Quick Diagnostics

### System Health Check
```bash
# Check core dependencies
node --version          # Should be 18+
npm --version          # Should be 8+
docker --version       # Should be 20+
exiftool -ver          # Should be installed

# Check database
docker ps | grep mysql
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SELECT 1;"

# Test basic processing
node pipeline-cli/dist/main.js -f "sample:vancouver-island.jpg" --json
```

## Installation Issues

### Database Connection Failed
**Symptoms:** Can't connect to MySQL, database errors
```bash
# Check database container status
docker ps | grep mykin_db

# If container not running
docker-compose up -d

# Wait for startup (30 seconds)
sleep 30

# Test connection
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SHOW TABLES;"

# If still failing, check logs
docker logs mykin_db
```

### Permission Errors
**Symptoms:** "Permission denied" errors
```bash
# Fix file permissions
chmod +x pipeline-cli/dist/main.js
chmod +x mmp/dist/cli.js

# Check directory permissions
ls -la /home/stephen/Documents/initial-media-processing/

# Fix ownership if needed
sudo chown -R stephen:stephen /home/stephen/Documents/initial-media-processing/
```

### Build/Compilation Errors
**Symptoms:** TypeScript errors, missing dependencies
```bash
# Clean and rebuild
rm -rf node_modules/ dist/
npm install
npm run build

# If still failing, check Node.js version
node --version  # Must be 18+

# Update if needed
nvm use 18  # or install Node.js 18+
```

## Processing Issues

### "File not found" Errors
**Error Code:** MPP-PATH-F-001
```bash
# Use absolute paths
node pipeline-cli/dist/main.js -f "/absolute/path/to/photo.jpg"

# Check file exists
ls -la "/path/to/photo.jpg"

# Test with sample file first
node pipeline-cli/dist/main.js -f "sample:vancouver-island.jpg" --json
```

### GPS/Location Issues

#### No GPS Data Found
**Error Code:** MPP-GPS-I-004  
**This is normal for:**
- Scanned photos
- Screenshots  
- Privacy-stripped photos
- Older cameras without GPS

```bash
# Verify GPS exists in original
exiftool -GPS* "/path/to/photo.jpg"

# If no GPS, this is expected behavior
```

#### GPS Extraction Failed  
**Error Code:** MPP-GPS-E-002
```bash
# Known issue: Video GPS corruption
# Check if this is a video file
file "/path/to/video.mp4"

# Use GPS coordinate fix (already implemented)
# This is automatically handled by the system
```

#### No Landmarks Found
**Error Code:** MPP-LANDMARK-I-004
```bash
# Increase search radius
LANDMARK_MAX_RADIUS=100000 node pipeline-cli/dist/main.js -f "photo.jpg"

# Check GPS coordinates are valid  
exiftool -GPS* "photo.jpg"

# Try with known landmark-rich location
node pipeline-cli/dist/main.js -f "sample:acadia-national-park.jpg" --json
```

### Provider/Service Issues

#### Recreation.gov Unavailable
**Error Code:** MPP-LANDMARK-W-001
```bash
# Disable Recreation.gov provider
RECREATION_GOV_PROVIDER_ENABLED=false node pipeline-cli/dist/main.js -f "photo.jpg"

# Test network connectivity
curl -I https://ridb.recreation.gov/

# Use only local providers
GEOLOCATION_ENABLED=false node pipeline-cli/dist/main.js -f "photo.jpg"
```

#### Rate Limiting
**Error Code:** MPP-LANDMARK-W-003
```bash
# System automatically handles rate limiting with backoff
# Wait a few minutes and retry

# Or disable external providers temporarily
RECREATION_GOV_PROVIDER_ENABLED=false \
NPS_PROVIDER_ENABLED=false \
  node pipeline-cli/dist/main.js -f "photo.jpg"
```

## Performance Issues

### Slow Processing
**First Run Issues:**
- Building caches (normal)
- Provider initialization (normal)
- Database connection setup (normal)

```bash
# Subsequent runs should be much faster
# If still slow, check system resources
top
df -h

# Process smaller batches
find /photos -name "*.jpg" | head -10 | while read photo; do
  node pipeline-cli/dist/main.js -f "$photo" --json > "${photo}.json"
done
```

### Memory Issues
```bash
# Check available memory
free -h

# Process files individually instead of batch
for photo in /photos/*.jpg; do
  node pipeline-cli/dist/main.js -f "$photo" --json > "${photo}.json"
  # Gives Node.js chance to garbage collect between files
done
```

## Quality Gate Failures

### ESLint Errors
```bash
# Check specific errors
npm run lint:check

# Auto-fix where possible
npm run lint:fix

# Manual fix remaining issues
```

### TypeScript Errors
```bash
# Check compilation errors
npm run typecheck

# Common fixes:
# - Add proper type annotations
# - Use semantic any types from types/semantic-any.ts
# - Never use bare 'any' type
```

### Test Failures
```bash
# Run specific test
npm test -- --testNamePattern="test name"

# Update test mocks if schema changed
npm run test:generate-mocks

# Check test coverage
npm run test:coverage
```

## MMP CLI Issues

### Command Not Found
```bash
# Check installation
which mmp

# If not found, reinstall
cd /home/stephen/Documents/initial-media-processing/mmp/
./install.sh

# Check PATH
echo $PATH | grep -o ~/.local/bin
```

### Scanner Not Detected
```bash
# Check available scanners
scanimage -L

# Update scanner device in config
nano ~/.config/mmp/config.json

# Test scanner connection
mmp capture --test-scanner
```

### Location Shortcuts Not Working
```bash
# Check configuration file
cat ~/.config/mmp/config.json

# Verify location shortcuts format
{
  "shortcuts": {
    "locations": {
      "cottage": "42.7070,-71.1631",
      "home": "42.7067,-71.1631"
    }
  }
}
```

## Heritage Photo Issues

### XMP Detection Failed
```bash
# Check if file has XMP metadata
exiftool -XMP* "photo.jpg"

# Heritage processing only works on photos with XMP
# This is expected for regular photos
```

### AI Analysis Unavailable
```bash
# Check Claude integration configuration
# AI features require proper API setup

# Process without AI enhancement
node pipeline-cli/dist/main.js -f "photo.jpg" --json
```

## Environment Configuration Issues

### Environment Variables Not Working
```bash
# Check environment variable syntax
echo $GEOLOCATION_ENABLED

# Use proper format
export GEOLOCATION_ENABLED=true
node pipeline-cli/dist/main.js -f "photo.jpg"

# Or inline
GEOLOCATION_ENABLED=true node pipeline-cli/dist/main.js -f "photo.jpg"
```

### Invalid Configuration Values
**Error Code:** MPP-CFG-E-002
```bash
# Check valid values
LANDMARK_MAX_RADIUS=50000    # Number in meters
GEOLOCATION_ENABLED=true     # Boolean: true/false
RECREATION_GOV_PROVIDER_ENABLED=false  # Boolean: true/false
```

## Database Issues

### Container Won't Start
```bash
# Check Docker service
sudo systemctl status docker

# Check container logs
docker logs mykin_db

# Remove and recreate container (LAST RESORT - data loss possible)
# DO NOT DO THIS without explicit permission
# docker-compose down
# docker-compose up -d
```

### Data Corruption Suspected
```bash
# NEVER delete database without permission
# Instead, check data integrity
docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "CHECK TABLE media_files;"

# Check recent backups
ls -la /path/to/backups/  # If backups exist

# Report issue for investigation
```

## Getting Additional Help

### Diagnostic Information Collection
```bash
# System information
uname -a
node --version
npm --version
docker --version
exiftool -ver

# Recent logs (if available)
tail -n 50 /var/log/media-processing.log

# Test with sample media
node pipeline-cli/dist/main.js -f "sample:vancouver-island.jpg" --json > diagnostic-output.json
```

### Documentation References
- **Error codes:** [Error Code Reference](error-codes.md)
- **Configuration:** [Configuration Reference](configuration.md)
- **Installation:** [Quick Start Installation](../quick-start/installation.md)
- **Complete setup:** [Deployment Guide](../deployment/getting-started.md)

### Common Success Patterns
```bash
# Minimal working example
cd /home/stephen/Documents/initial-media-processing
npm run build
node pipeline-cli/dist/main.js -f "sample:vancouver-island.jpg" --json

# Expected output: Valid JSON with metadata
# If this works, your core system is operational
```

---

**Troubleshooting Status:** ✅ Comprehensive issue resolution guide covering all major system components