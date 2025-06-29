import { Knex } from 'knex';
import { EquipmentType, SoftwareType } from '../types/tables.js';

export async function seed(knex: Knex): Promise<void> {
  // Clear existing entries
  await knex('media_software').del();
  await knex('software').del();
  await knex('media_files').del();
  await knex('imaging_trains').del();
  await knex('equipment').del();

  // Insert equipment and get IDs
  const equipmentInserts = [
    // Apple devices
    {
      equipment_type: EquipmentType.CAMERA,
      make: 'Apple',
      model: 'iPhone 13 Pro',
      equipment_metadata: {
        sensor_type: 'CMOS',
        max_resolution: '4032x3024',
        video_capabilities: '4K',
        notes: 'Standard iPhone with triple camera system'
      }
    },
    {
      equipment_type: EquipmentType.CAMERA,
      make: 'Apple',
      model: 'iPhone 14 Pro',
      equipment_metadata: {
        sensor_type: 'CMOS',
        max_resolution: '4032x3024',
        video_capabilities: '4K',
        notes: 'iPhone with improved cameras and Dynamic Island'
      }
    },
    {
      equipment_type: EquipmentType.CAMERA,
      make: 'Apple',
      model: 'iPhone 12 Pro',
      equipment_metadata: {
        sensor_type: 'CMOS',
        max_resolution: '4032x3024',
        video_capabilities: '4K',
        notes: 'iPhone with LiDAR and triple camera system'
      }
    },
    {
      equipment_type: EquipmentType.CAMERA,
      make: 'Apple',
      model: 'iPhone 11 Pro',
      equipment_metadata: {
        sensor_type: 'CMOS',
        max_resolution: '4032x3024',
        video_capabilities: '4K',
        notes: 'First iPhone with triple camera system'
      }
    },
    {
      equipment_type: EquipmentType.CAMERA,
      make: 'Apple',
      model: 'iPhone',
      equipment_metadata: {
        sensor_type: 'CMOS',
        notes: 'Generic iPhone entry for older or unspecified models'
      }
    },
    // Canon cameras
    {
      equipment_type: EquipmentType.CAMERA,
      make: 'Canon',
      model: 'Canon PowerShot ELPH 330 HS',
      equipment_metadata: {
        sensor_type: 'CMOS',
        max_resolution: '4000x3000',
        notes: 'Compact digital camera from Google Takeout data'
      }
    },
    {
      equipment_type: EquipmentType.CAMERA,
      make: 'Canon',
      model: 'Generic DSLR',
      equipment_metadata: {
        sensor_type: 'CMOS',
        mount_type: 'EF/EF-S',
        notes: 'Fallback for Canon cameras not specifically identified'
      }
    },
    // Generic entries
    {
      equipment_type: EquipmentType.CAMERA,
      make: 'Unknown',
      model: 'Unknown Camera',
      equipment_metadata: {
        notes: 'Fallback for cameras that cannot be identified from EXIF'
      }
    }
  ];

  await knex('equipment').insert(equipmentInserts);

  // Get the inserted equipment IDs
  const equipmentRecords = await knex('equipment')
    .select('id', 'make', 'model')
    .orderBy('id');

  // Map equipment by make/model for easier reference
  const equipmentMap: Record<string, number> = {};
  equipmentRecords.forEach(eq => {
    equipmentMap[`${eq.make}-${eq.model}`] = eq.id;
  });

  // Insert imaging trains
  await knex('imaging_trains').insert([
    {
      name: 'iPhone 13 Pro',
      description: 'Apple iPhone 13 Pro with integrated lenses',
      primary_camera_id: equipmentMap['Apple-iPhone 13 Pro'],
      train_metadata: {
        camera_system: 'triple_camera',
        primary_focal_length: '26mm',
        ultra_wide_focal_length: '13mm',
        telephoto_focal_length: '77mm',
        setup_type: 'integrated'
      }
    },
    {
      name: 'iPhone 14 Pro',
      description: 'Apple iPhone 14 Pro with improved cameras',
      primary_camera_id: equipmentMap['Apple-iPhone 14 Pro'],
      train_metadata: {
        camera_system: 'triple_camera',
        primary_focal_length: '24mm',
        ultra_wide_focal_length: '13mm',
        telephoto_focal_length: '77mm',
        setup_type: 'integrated'
      }
    },
    {
      name: 'iPhone 12 Pro',
      description: 'Apple iPhone 12 Pro with LiDAR scanner',
      primary_camera_id: equipmentMap['Apple-iPhone 12 Pro'],
      train_metadata: {
        camera_system: 'triple_camera',
        primary_focal_length: '26mm',
        ultra_wide_focal_length: '13mm',
        telephoto_focal_length: '52mm',
        setup_type: 'integrated',
        special_features: ['LiDAR']
      }
    },
    {
      name: 'iPhone 11 Pro',
      description: 'Apple iPhone 11 Pro - first triple camera iPhone',
      primary_camera_id: equipmentMap['Apple-iPhone 11 Pro'],
      train_metadata: {
        camera_system: 'triple_camera',
        primary_focal_length: '26mm',
        ultra_wide_focal_length: '13mm',
        telephoto_focal_length: '52mm',
        setup_type: 'integrated'
      }
    },
    {
      name: 'Generic iPhone',
      description: 'Generic iPhone camera setup',
      primary_camera_id: equipmentMap['Apple-iPhone'],
      train_metadata: {
        setup_type: 'integrated',
        notes: 'Camera specifications vary by model'
      }
    },
    {
      name: 'Canon PowerShot ELPH 330 HS',
      description: 'Canon compact digital camera',
      primary_camera_id: equipmentMap['Canon-Canon PowerShot ELPH 330 HS'],
      train_metadata: {
        setup_type: 'compact',
        zoom_range: '10x optical',
        focal_length_range: '24-240mm',
        notes: 'Popular compact camera from 2012-2013 era'
      }
    },
    {
      name: 'Generic DSLR',
      description: 'Canon DSLR with unknown lens configuration',
      primary_camera_id: equipmentMap['Canon-Generic DSLR'],
      train_metadata: {
        setup_type: 'dslr',
        mount_type: 'EF/EF-S',
        notes: 'Lens information will be extracted from EXIF when available'
      }
    },
    {
      name: 'Unknown Camera',
      description: 'Fallback for unidentified equipment',
      primary_camera_id: equipmentMap['Unknown-Unknown Camera'],
      train_metadata: {
        setup_type: 'unknown',
        notes: 'Equipment details will be populated as EXIF data is analyzed'
      }
    }
  ]);

  // Insert software
  await knex('software').insert([
    // Capture software
    {
      name: 'iPhone Camera',
      software_type: SoftwareType.CAPTURE,
      version: 'iOS 15+',
      software_metadata: {
        platform: 'iOS',
        manufacturer: 'Apple',
        capabilities: ['photo', 'video', 'live_photo', 'portrait_mode', 'night_mode', 'prores']
      }
    },
    {
      name: 'iPhone Camera',
      software_type: SoftwareType.CAPTURE,
      version: 'iOS 14',
      software_metadata: {
        platform: 'iOS',
        manufacturer: 'Apple',
        capabilities: ['photo', 'video', 'live_photo', 'portrait_mode', 'night_mode']
      }
    },
    {
      name: 'Canon Camera',
      software_type: SoftwareType.CAPTURE,
      version: 'Unknown',
      software_metadata: {
        manufacturer: 'Canon',
        capabilities: ['photo', 'video'],
        notes: 'Generic Canon camera software entry'
      }
    },
    {
      name: 'Google Camera',
      software_type: SoftwareType.CAPTURE,
      version: 'Unknown',
      software_metadata: {
        platform: 'Android',
        manufacturer: 'Google',
        capabilities: ['photo', 'video', 'hdr+', 'night_sight'],
        notes: 'Google Pixel camera software'
      }
    },
    // Processing software
    {
      name: 'ImageProcessor',
      software_type: SoftwareType.PROCESSING,
      version: '1.0.0',
      software_metadata: {
        platform: 'Node.js',
        capabilities: ['exif_extraction', 'color_analysis', 'gps_processing', 'landmark_enrichment'],
        description: 'Media Processing Pipeline image processor'
      }
    },
    {
      name: 'VideoProcessor',
      software_type: SoftwareType.PROCESSING,
      version: '1.0.0',
      software_metadata: {
        platform: 'Node.js',
        capabilities: ['exif_extraction', 'live_photo_detection', 'gps_processing'],
        description: 'Media Processing Pipeline video processor'
      }
    },
    // Post-processing software
    {
      name: 'Adobe Lightroom',
      software_type: SoftwareType.POST_PROCESSING,
      version: 'Unknown',
      software_metadata: {
        manufacturer: 'Adobe',
        capabilities: ['raw_processing', 'color_grading', 'metadata_editing'],
        notes: 'Popular photo editing software'
      }
    },
    {
      name: 'Photos',
      software_type: SoftwareType.POST_PROCESSING,
      version: 'macOS',
      software_metadata: {
        platform: 'macOS',
        manufacturer: 'Apple',
        capabilities: ['organization', 'basic_editing', 'icloud_sync']
      }
    },
    // Generic/fallback
    {
      name: 'Unknown Software',
      software_type: SoftwareType.CAPTURE,
      version: 'Unknown',
      software_metadata: {
        notes: 'Fallback for unidentified capture software'
      }
    }
  ]);
}