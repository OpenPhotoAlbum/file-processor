import { describe, test, expect, beforeAll } from '@jest/globals';
import fs from 'fs/promises';

/**
 * JSON Deduplication Validation Tests
 * 
 * Ensures no data duplication between JSON columns and relational tables.
 * Prevents regression of the comprehensive deduplication work completed on June 30, 2025.
 * 
 * Uses sample11.json which contains the latest optimized structure.
 */
describe('JSON Deduplication Validation', () => {
  let inspectionData: any;
  let mediaMetadata: any;
  let cameraExif: any;
  let geolocationData: any;

  beforeAll(async () => {
    // Use the existing sample11.json which contains optimized structure
    const rawData = await fs.readFile('sample11.json', 'utf-8');
    inspectionData = JSON.parse(rawData);
    
    mediaMetadata = inspectionData.media_files.media_metadata;
    cameraExif = inspectionData.media_files.camera_exif;
    geolocationData = inspectionData.media_locations[0]?.geolocation_data;
  });

  describe('Media Properties Deduplication', () => {
    test('media type/format not duplicated in JSON', () => {
      expect(mediaMetadata.media?.type).toBeUndefined();
      expect(mediaMetadata.media?.format).toBeUndefined();
      
      // Should be in columns only
      expect(inspectionData.media_files.media_type).toBe('image');
      expect(inspectionData.media_files.media_format).toBe('jpeg');
    });

    test('color data not duplicated in JSON', () => {
      expect(mediaMetadata.media?.dominantColor).toBeUndefined();
      expect(mediaMetadata.media?.meanColor).toBeUndefined();
      expect(mediaMetadata.media?.salientColor).toBeUndefined();
      
      // Should be in columns only
      expect(inspectionData.media_files.dominant_color_hex).toBeTruthy();
      expect(inspectionData.media_files.mean_color_hex).toBeTruthy();
      expect(inspectionData.media_files.salient_color_hex).toBeTruthy();
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
      expect(inspectionData.media_files.iso_value).toBeTruthy();
      expect(inspectionData.media_files.aperture_f_number).toBeTruthy();
      expect(inspectionData.media_files.shutter_speed_seconds).toBeTruthy();
      expect(inspectionData.media_files.focal_length_mm).toBeTruthy();
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
      
      // Should be in equipment table only
      expect(inspectionData.equipment[0].make).toBe('Apple');
      expect(inspectionData.equipment[0].model).toBe('iPhone 13');
    });

    test('camera object should be empty or minimal', () => {
      expect(Object.keys(mediaMetadata.camera || {})).toHaveLength(0);
    });

    test('software version in software table only', () => {
      expect(inspectionData.software[0].version).toBe('18.5');
      expect(inspectionData.software[0].name).toBe('iOS');
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
      const location = inspectionData.media_locations[0];
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
    test('all landmarks stored in relational tables', () => {
      expect(inspectionData.media_landmarks).toHaveLength(10);
      expect(inspectionData.landmarks).toHaveLength(10);
    });

    test('landmarks contain complete provider data', () => {
      const landmark = inspectionData.landmarks[0];
      expect(landmark.name).toBeTruthy();
      expect(landmark.category).toBeTruthy();
      expect(landmark.provider).toBeTruthy();
      expect(landmark.provider_data).toBeTruthy();
    });

    test('landmark associations have distance data', () => {
      const association = inspectionData.media_landmarks[0];
      expect(association.file_id).toBeTruthy();
      expect(association.landmark_id).toBeTruthy();
      expect(association.distance_meters).toBeGreaterThan(0);
    });
  });

  describe('Data Integrity Validation', () => {
    test('no data loss - all expected tables populated', () => {
      expect(inspectionData.media_files).toBeDefined();
      expect(inspectionData.media_locations).toHaveLength(1);
      expect(inspectionData.media_landmarks).toHaveLength(10);
      expect(inspectionData.landmarks).toHaveLength(10);
      expect(inspectionData.equipment).toHaveLength(1);
      expect(inspectionData.software).toHaveLength(1);
      expect(inspectionData.processing_runs).toHaveLength(1);
    });

    test('foreign key relationships maintained', () => {
      const location = inspectionData.media_locations[0];
      const city = inspectionData.geo_cities[0];
      const state = inspectionData.geo_states[0];
      const country = inspectionData.geo_countries[0];
      
      expect(location.city_id).toBe(city.id);
      expect(location.state_id).toBe(state.id);
      expect(location.country_id).toBe(country.id);
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