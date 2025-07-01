import { describe, test, expect, beforeAll } from '@jest/globals';
import fs from 'fs/promises';
import path from 'path';

/**
 * JSON Deduplication Validation Tests
 * 
 * Ensures no data duplication between JSON columns and relational tables.
 * Prevents regression of the comprehensive deduplication work completed on June 30, 2025.
 * 
 * Uses real database inspection data from a sample image with rich metadata.
 * Run `npm run test:setup-fixtures` in local development to generate fresh fixture data.
 */
describe('JSON Deduplication Validation', () => {
  let inspectionData: any;
  let mediaMetadata: any;
  let cameraExif: any;
  let geolocationData: any;

  beforeAll(async () => {
    const fixtureFile = path.join(__dirname, 'mocks', 'dedupe.json');
    const isLocal = process.env.NODE_ENV !== 'test' && !process.env.CI && !process.env.GITHUB_ACTIONS;
    
    try {
      // Try to read existing fixture
      const rawData = await fs.readFile(fixtureFile, 'utf-8');
      inspectionData = JSON.parse(rawData);
      
    } catch (error) {
      if (isLocal) {
        // In local development, provide helpful guidance
        throw new Error(
          `Deduplication test fixture not found. Run 'npm run test:setup-fixtures' to generate it from your database.`
        );
      } else {
        // In CI/test environments, skip this test suite gracefully
        console.warn('⚠️  Deduplication fixture not available, skipping tests');
        return;
      }
    }
    
    // Validate fixture structure
    if (!inspectionData?.media_file || !inspectionData?.location) {
      throw new Error('Invalid deduplication fixture - missing required database tables');
    }
    
    mediaMetadata = inspectionData.media_file.media_metadata;
    cameraExif = inspectionData.media_file.camera_exif;
    geolocationData = inspectionData.location?.geolocation_data;
  });

  describe('Media Properties Deduplication', () => {
    test('media type/format not duplicated in JSON', () => {
      expect(mediaMetadata.media?.type).toBeUndefined();
      expect(mediaMetadata.media?.format).toBeUndefined();
      
      // Should be in columns only
      expect(inspectionData.media_file.media_type).toBe('image');
      expect(inspectionData.media_file.media_format).toBe('jpeg');
    });

    test('color data not duplicated in JSON', () => {
      expect(mediaMetadata.media?.dominantColor).toBeUndefined();
      expect(mediaMetadata.media?.meanColor).toBeUndefined();
      expect(mediaMetadata.media?.salientColor).toBeUndefined();
      
      // Should be in columns only
      expect(inspectionData.media_file.dominant_color_hex).toBeTruthy();
      expect(inspectionData.media_file.mean_color_hex).toBeTruthy();
      expect(inspectionData.media_file.salient_color_hex).toBeTruthy();
    });

    test('dimensions preserved in JSON (unique data)', () => {
      expect(mediaMetadata.media?.dimensions).toBeDefined();
      expect(mediaMetadata.media.dimensions.width).toBeGreaterThan(0);
      expect(mediaMetadata.media.dimensions.height).toBeGreaterThan(0);
    });
  });

  describe('Camera Settings Deduplication', () => {
    test('camera settings not duplicated in JSON', () => {
      expect(mediaMetadata.settings?.iso).toBeUndefined();
      expect(mediaMetadata.settings?.aperture).toBeUndefined();
      expect(mediaMetadata.settings?.shutterSpeed).toBeUndefined();
      expect(mediaMetadata.settings?.focalLength).toBeUndefined();
      expect(mediaMetadata.settings?.flash).toBeUndefined();
      
      // Should be in columns only
      expect(inspectionData.media_file.iso_value).toBeTruthy();
      expect(inspectionData.media_file.aperture_f_number).toBeTruthy();
      expect(inspectionData.media_file.shutter_speed_seconds).toBeTruthy();
      expect(inspectionData.media_file.focal_length_mm).toBeTruthy();
    });

    test('unique settings preserved in JSON', () => {
      // focalLength35mm is not stored in columns, should remain in JSON
      expect(mediaMetadata.settings?.focalLength35mm).toBeDefined();
    });
  });

  describe('Camera Information Deduplication', () => {
    test('camera make/model not duplicated in JSON', () => {
      expect(mediaMetadata.camera?.make).toBeUndefined();
      expect(mediaMetadata.camera?.model).toBeUndefined();
      expect(mediaMetadata.camera?.software).toBeUndefined();
      expect(mediaMetadata.camera?.lens).toBeUndefined();
      
      // Equipment is null in this test data (no equipment_id set)
      expect(inspectionData.equipment).toBeNull();
    });

    test('camera object should be empty or minimal', () => {
      expect(Object.keys(mediaMetadata.camera || {})).toHaveLength(0);
    });

    test('software is null in this test data', () => {
      expect(inspectionData.software).toBeNull();
    });
  });

  describe('Technical Data Deduplication', () => {
    test('camera_exif column eliminated', () => {
      expect(cameraExif).toBeNull();
    });

    test('file metadata not duplicated in technical JSON', () => {
      expect(mediaMetadata.technical?.fileType).toBeUndefined();
      expect(mediaMetadata.technical?.mimeType).toBeUndefined();
      expect(mediaMetadata.technical?.SourceFile).toBeUndefined();
      expect(mediaMetadata.technical?.['EXIF:Flash']).toBeUndefined();
    });

    test('unique technical data preserved', () => {
      expect(mediaMetadata.technical?.exifVersion).toBeDefined();
      expect(mediaMetadata.technical?.['EXIF:LensInfo']).toBeDefined();
    });
  });

  describe('Location Data Deduplication', () => {
    test('location data not in media_metadata', () => {
      expect(mediaMetadata.location).toBeUndefined();
    });

    test('minimal geolocation summary only', () => {
      expect(geolocationData).toBeDefined();
      expect(geolocationData.enrichmentStatus).toBeDefined();
      expect(geolocationData.alternatives).toBeDefined();
      expect(geolocationData.conflicts).toBeDefined();
      
      // Should not contain full landmark data
      expect(geolocationData.landmarks).toBeUndefined();
      expect(geolocationData.geolocation?.city).toBeUndefined();
    });

    test('location data in relational tables', () => {
      const location = inspectionData.location;
      expect(location.latitude).toBeTruthy();
      expect(location.longitude).toBeTruthy();
      expect(location.city_id).toBeTruthy();
      expect(location.state_id).toBeTruthy();
      expect(location.country_id).toBeTruthy();
    });
  });

  describe('Processing Data Deduplication', () => {
    test('processing data not in media_metadata', () => {
      expect(mediaMetadata.processing).toBeUndefined();
    });

    test('processing data in processing_runs table', () => {
      const processingRun = inspectionData.processing_runs[0];
      expect(processingRun.processor).toBe('ImageProcessor');
      expect(processingRun.success).toBe(1);
      expect(processingRun.extracted_at).toBeTruthy();
    });
  });

  describe('Landmark Data Completeness', () => {
    test('landmark associations stored in relational table', () => {
      expect(inspectionData.landmarks).toBeDefined();
      expect(inspectionData.landmarks.length).toBe(10);
    });

    test('landmark associations have distance data', () => {
      const association = inspectionData.landmarks[0];
      expect(association.file_id).toBeTruthy();
      expect(association.landmark_id).toBeTruthy();
      expect(association.distance_meters).toBeGreaterThan(0);
    });
  });

  describe('Data Integrity Validation', () => {
    test('all core data structures populated', () => {
      expect(inspectionData.media_file).toBeDefined();
      expect(inspectionData.location).toBeDefined();
      expect(inspectionData.landmarks).toHaveLength(10);
      expect(inspectionData.processing_runs).toHaveLength(3);
    });

    test('foreign key relationships maintained in location', () => {
      const location = inspectionData.location;
      expect(location.city_id).toBeTruthy();
      expect(location.state_id).toBeTruthy();
      expect(location.country_id).toBeTruthy();
    });
  });

  describe('Storage Efficiency Validation', () => {
    test('media_metadata JSON is appropriately sized', () => {
      const jsonSize = JSON.stringify(mediaMetadata).length;
      
      // Should be significantly smaller than original (~1000+ lines)
      // Rough estimate: should be under 6000 characters for cleaned metadata
      expect(jsonSize).toBeLessThan(6000);
      
      // Should still contain essential unique data
      expect(jsonSize).toBeGreaterThan(100);
    });

    test('geolocation_data is minimal summary only', () => {
      const geoJsonSize = JSON.stringify(geolocationData).length;
      
      // Should be much smaller than full location data
      expect(geoJsonSize).toBeLessThan(500);
      
      // Should contain enrichment status
      expect(geoJsonSize).toBeGreaterThan(50);
    });
  });

  describe('Prevention of Future Duplication', () => {
    test('validate no new duplicate patterns introduced', () => {
      // Check for common duplication anti-patterns
      const mediaMetadataStr = JSON.stringify(mediaMetadata);
      
      // Should not contain column data
      expect(mediaMetadataStr).not.toMatch(/image\/jpeg/);
      expect(mediaMetadataStr).not.toMatch(/ImageProcessor/);
      expect(mediaMetadataStr).not.toMatch(/success.*true/);
      
      // Note: Some technical EXIF fields like "iPhone 13" and "Apple" may remain 
      // in EXIF:LensID and EXIF:LensMake as they're part of technical metadata,
      // not duplicated equipment data
    });

    test('ensure camera_exif stays null', () => {
      expect(cameraExif).toBeNull();
    });
  });
});