# Deployment Documentation

**Last Updated:** 2025-07-23  
**Status:** Production deployment procedures established

## Setup & Installation

### Getting Started
**Documentation:** [getting-started.md](getting-started.md)  
**Purpose:** Complete installation and initial setup guide

#### Prerequisites
- Node.js 18+ with TypeScript support
- MySQL 8.0 database server
- Docker for database containerization
- Git for version control

#### Quick Setup Steps
1. Clone repository and install dependencies
2. Configure database connection
3. Run database migrations
4. Build TypeScript source
5. Validate with sample processing

### Code Quality & Standards
**Documentation:** [linting.md](linting.md)  
**Purpose:** ESLint configuration and development standards

#### Quality Gates (MANDATORY)
After ANY coding task, run in sequence:
1. `npm run lint:check` - ESLint compliance verification
2. `npm run typecheck` - TypeScript compilation check
3. `npm run build` - Complete build pipeline
4. `npm test` - Full test suite execution

#### Standards Enforcement
- **Zero tolerance** for new ESLint warnings/errors
- **Clean TypeScript compilation** required
- **All tests must pass** - no regression allowed
- **Semantic types** instead of `any` usage

## Database Deployment

### Database Setup
**Critical:** mykin_db container contains 150k+ photos - NEVER recreate without explicit permission

#### Database Configuration
- **Container:** `mykin_db` (MySQL 8.0 on port 3309)
- **Volume:** `mykin_db_data` for persistence
- **Database:** `kin` with user `kin`
- **Migration system:** Tracks completed migrations

#### Recovery Protocol
If database issues occur:
1. Debug connection/permissions first
2. Check existing tables: `docker exec mykin_db mysql -u kin -p'Dalekini21!' kin -e "SHOW TABLES;"`
3. Backup critical data if recreation absolutely necessary
4. Get explicit user approval for any destructive operations

### Migration Management
- **Migration files:** `/mysql-init/` directory
- **Reference data:** GNIS, Recreation.gov, geographic boundaries
- **Media data:** Photos, videos, processing results
- **Cleanup script:** `/scripts/database-clean-media.sh` (preserves reference data)

## Environment Configuration

### Environment Variables
Essential configuration for deployment:

#### Geolocation Services
- `GEOLOCATION_ENABLED=true` - Enable reverse geocoding (default)
- `LANDMARK_MAX_RADIUS=50000` - Search radius in meters

#### Provider Configuration
- `RECREATION_GOV_PROVIDER_ENABLED=false` - Recreation.gov lookups (default)
- `GNIS_PROVIDER_ENABLED=true` - USGS GNIS lookups (default)
- `NPS_PROVIDER_ENABLED=true` - National Parks Service (default)

#### Output Configuration
- CLI supports `--json` and `--timestamp-only` modes
- Environment variables control provider availability
- Logging can be suppressed for clean output modes

## Production Deployment

### Build Process
```bash
# Complete build with quality gates
npm run lint:check
npm run typecheck
npm run build
npm test

# Production build verification
node dist/main.js -f "sample:vancouver-island.jpg" --json
```

### File System Requirements
- **Working directory:** Absolute paths required for all operations
- **Photo storage:** `/photos/archive/` for organized collections
- **Staging area:** `/photos/staging/` for processing workflow
- **Metadata output:** JSON sidecar files alongside originals

### Service Dependencies
- **MySQL database** - Core data storage
- **File system access** - Read access to photo collections
- **Network access** - External API integrations (optional)
- **Processing power** - Multi-core utilization for batch operations

## Monitoring & Validation

### Health Checks
- Database connectivity validation
- File system access verification
- External service availability (optional)
- Processing pipeline functionality

### Performance Monitoring
- Photo processing throughput
- Database query performance
- Memory and CPU utilization
- Error rate tracking

### Quality Validation
- Test suite execution (49/49 tests)
- Mock system functionality
- API response validation
- Processing result accuracy

## Security Considerations

### Data Protection
- **Path sanitization** in all logging output
- **Database credentials** managed securely
- **API keys** for external services (if used)
- **File system permissions** appropriate for read-only processing

### Access Control
- **Database isolation** - Media vs reference data separation
- **Network security** - Optional external service access
- **File permissions** - Appropriate access levels
- **Error handling** - No sensitive data in error messages

## Troubleshooting

### Common Issues
- Database connection failures - Check container status
- Permission errors - Verify file system access
- Type compilation errors - Run quality gates
- Test failures - Check mock system integrity

### Recovery Procedures
- Database recovery from backup
- File system permission restoration
- Service dependency resolution
- Quality gate failure remediation

For specific deployment scenarios, refer to individual documentation files in this directory.