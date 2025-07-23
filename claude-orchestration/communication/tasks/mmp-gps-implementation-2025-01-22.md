# Claude 2 Task: MMP GPS Command Implementation

**Task ID:** mmp-gps-implementation-2025-01-22
**From:** Claude 1 (Architect/CTO)
**To:** Claude 2 (Implementation Specialist)
**Date:** July 22, 2025
**Priority:** High - Blocking photo-intern staging workflows
**Working Directory:** `/photos/tools/refactor/mmp`

## Task Overview

Implement the core `mmp gps` command to replace fragmented legacy GPS tools with unified interface. This is essential for photo-intern to process thousands of heritage photos in staging.

## Implementation Requirements

### **Core Functionality**
```bash
# Primary command pattern
mmp gps <files...> --set <location>

# Examples that MUST work
mmp gps photo.jpg --set cottage
mmp gps *.jpg --set "42.7070,-71.1631"  
mmp gps /photos/batch/ --set cottage --batch
```

### **Location Resolution**
1. **Configuration shortcuts** - `cottage` → `"42.7070,-71.1631"` (from existing config)
2. **Direct coordinates** - Accept `"lat,lng"` format with validation
3. **Error handling** - Clear messages for invalid locations/coordinates

### **GPS Writing**
1. **ExifTool integration** - Write proper GPS fields with hemisphere references
2. **Batch processing** - Handle multiple files efficiently
3. **Validation** - Coordinate range checking (-90 to 90 lat, -180 to 180 lng)
4. **Error recovery** - Continue processing remaining files if one fails

### **Files to Implement/Modify**

#### **1. Update `/src/commands/locate.ts`**
- Remove stub code and interactive mode scaffolding
- Implement core `--set` option with location resolution
- Add `--batch` option for directory processing
- Add proper error handling and validation

#### **2. Create `/src/services/LocationService.ts`**
```typescript
interface LocationService {
  resolveLocation(input: string): Promise<{lat: number, lng: number}>;
  validateCoordinates(lat: number, lng: number): boolean;
}
```

#### **3. Create `/src/services/GPSService.ts`**
```typescript
interface GPSService {
  writeGPS(file: string, lat: number, lng: number): Promise<void>;
  writeBatchGPS(files: string[], lat: number, lng: number): Promise<BatchResult>;
}
```

#### **4. Update configuration integration**
- Use existing `config.shortcuts.locations` from `/src/core/config.ts`
- Leverage current cottage/didi-house/lawrence/haverhill shortcuts

### **Technical Specifications**

#### **ExifTool GPS Fields**
```bash
# Required GPS fields to write
-GPSLatitude="<absolute_value>"
-GPSLatitudeRef="<N|S>"  
-GPSLongitude="<absolute_value>"
-GPSLongitudeRef="<E|W>"
```

#### **Coordinate Validation**
- Latitude: -90 to 90 degrees
- Longitude: -180 to 180 degrees  
- Format: `"42.7070,-71.1631"` (decimal degrees)

#### **Error Handling**
- Invalid coordinates → clear error message with valid range
- Missing ExifTool → installation instructions
- File not found → continue with remaining files
- ExifTool failure → report which files failed

### **File Processing Logic**
```typescript
// Core workflow
1. Parse and validate location input
2. Resolve to coordinates (shortcuts → coords)
3. Validate coordinate ranges
4. For each file:
   - Check file exists and is supported format
   - Write GPS data via ExifTool
   - Handle errors gracefully
5. Report success/failure summary
```

### **Dependencies to Use**
- **execa** - For ExifTool subprocess execution
- **fs-extra** - For file operations
- **chalk** - For colored output
- **existing config system** - For shortcuts resolution

## Success Metrics

### **Functional Requirements** ✅
- [ ] `mmp gps photo.jpg --set cottage` works correctly
- [ ] `mmp gps *.jpg --set "42.7070,-71.1631"` processes multiple files
- [ ] Invalid coordinates show clear error message
- [ ] Missing files are skipped gracefully
- [ ] ExifTool errors are handled and reported

### **Performance Requirements** ✅  
- [ ] Process 10+ photos in under 5 seconds
- [ ] Batch mode handles 100+ files without memory issues
- [ ] Failed files don't block processing of remaining files

### **Integration Requirements** ✅
- [ ] Uses existing MMP configuration shortcuts
- [ ] Consistent with other MMP command patterns
- [ ] Proper TypeScript types (no `any` usage)
- [ ] Error messages match MMP error handling patterns

### **Photo-Intern Validation** ✅
- [ ] Photo-intern can set GPS on staging photos using shortcuts
- [ ] Batch processing works with `/photos/staging` directory structure
- [ ] Generated EXIF data is compatible with main processing pipeline
- [ ] Tool performs comparably to legacy manual-photo-tools

### **Quality Gates** ✅
All must pass before task completion:
```bash
npm run lint:check    # ESLint compliance
npm run typecheck     # TypeScript compilation  
npm run build         # Full build pipeline
npm test              # Unit tests pass
```

## Testing Protocol

### **Manual Testing Commands**
```bash
# Test with sample photo
mmp gps assets/20250722_184858_test-red-background_scan.jpeg --set cottage

# Test coordinate validation
mmp gps photo.jpg --set "invalid-coords"  # Should error gracefully

# Test missing shortcut
mmp gps photo.jpg --set "nonexistent"     # Should error with helpful message

# Test batch processing
mmp gps /tmp/test-photos/*.jpg --set cottage --batch
```

### **Success Validation**
```bash
# Verify GPS data was written
exiftool -GPS* photo.jpg
# Should show: GPSLatitude, GPSLatitudeRef, GPSLongitude, GPSLongitudeRef
```

## Context Notes

- **Legacy tools being replaced:** `/photos/tools/manual-photo-tools/geotag-*.py`
- **Database integration:** Defer to Phase 2 (place name lookup)
- **Interactive mode:** Removed from scope - implement basic CLI only
- **Photo-intern waiting:** This unblocks thousands of heritage photos in staging

**Implementation Priority:** Complete core functionality before adding advanced features. Photo-intern needs working GPS assignment immediately.

---

## Coordination Metadata

**Session Context:**
- Fixed `__dirname` ES modules issue
- Validated crop command working
- Photo-intern ready to test GPS functionality
- Legacy scripts deprecated in favor of unified MMP CLI

**Next Steps After Implementation:**
1. Photo-intern validates GPS command with staging photos
2. Continue implementing remaining MMP commands (dates, rotate, etc.)
3. Full production deployment once all core commands complete