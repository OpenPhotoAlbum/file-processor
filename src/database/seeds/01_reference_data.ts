import { Knex } from 'knex';
import { EquipmentType, SoftwareType } from '../types/tables.js';

export async function seed(knex: Knex): Promise<void> {
  // Clear existing entries
  await knex('media_software').del();
  await knex('software').del();
  await knex('media_files').del();
  await knex('imaging_trains').del();
  await knex('equipment').del();

  // Insert equipment
  const equipment = await knex('equipment').insert([
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
      make: 'Canon',
      model: 'Generic DSLR',
      equipment_metadata: {
        sensor_type: 'CMOS',
        mount_type: 'EF/EF-S',
        notes: 'Fallback for Canon cameras not specifically identified'
      }
    },
    {
      equipment_type: EquipmentType.CAMERA,
      make: 'Unknown',
      model: 'Unknown Camera',
      equipment_metadata: {
        notes: 'Fallback for cameras that cannot be identified from EXIF'
      }
    }
  ]).returning('id');

  // Insert imaging trains
  await knex('imaging_trains').insert([
    {
      name: 'iPhone 13 Pro',
      description: 'Apple iPhone 13 Pro with integrated lenses',
      primary_camera_id: equipment[0].id,
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
      primary_camera_id: equipment[1].id,
      train_metadata: {
        camera_system: 'triple_camera',
        primary_focal_length: '24mm',
        ultra_wide_focal_length: '13mm',
        telephoto_focal_length: '77mm',
        setup_type: 'integrated'
      }
    },
    {
      name: 'Generic DSLR',
      description: 'Canon DSLR with unknown lens configuration',
      primary_camera_id: equipment[2].id,
      train_metadata: {
        setup_type: 'dslr',
        mount_type: 'EF/EF-S',
        notes: 'Lens information will be extracted from EXIF when available'
      }
    },
    {
      name: 'Unknown Camera',
      description: 'Fallback for unidentified equipment',
      primary_camera_id: equipment[3].id,
      train_metadata: {
        setup_type: 'unknown',
        notes: 'Equipment details will be populated as EXIF data is analyzed'
      }
    }
  ]);

  // Insert software
  await knex('software').insert([
    {
      name: 'iPhone Camera',
      software_type: SoftwareType.CAPTURE,
      version: 'iOS 15+',
      software_metadata: {
        platform: 'iOS',
        manufacturer: 'Apple',
        capabilities: ['photo', 'video', 'live_photo', 'portrait_mode']
      }
    },
    {
      name: 'ImageProcessor',
      software_type: SoftwareType.PROCESSING,
      version: '1.0.0',
      software_metadata: {
        platform: 'Node.js',
        capabilities: ['exif_extraction', 'color_analysis', 'gps_processing'],
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
      name: 'Unknown Software',
      software_type: SoftwareType.CAPTURE,
      version: 'Unknown',
      software_metadata: {
        notes: 'Fallback for unidentified capture software'
      }
    }
  ]);
}