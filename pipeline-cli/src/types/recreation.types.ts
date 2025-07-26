/**
 * Recreation.gov Type Definitions
 * 
 * Type definitions for the Recreation Information Database (RIDB) API.
 * Extracted from recreation.ts provider for improved maintainability
 * and reusability across the codebase.
 */

export interface RecreationFacility {
  FacilityID: string;
  FacilityName: string;
  FacilityTypeDescription: string;
  FacilityLatitude: number;
  FacilityLongitude: number;
  FacilityDescription?: string;
  FacilityDirections?: string;
  FacilityPhone?: string;
  FacilityEmail?: string;
  FacilityReservationURL?: string;
  FacilityAdaAccess?: string;
  StayLimit?: string;
  Keywords?: string;
  LastUpdatedDate?: string;
}

export interface RecreationCampsite {
  CampsiteID: string;
  FacilityID: string;
  CampsiteName: string;
  CampsiteType: string;
  TypeOfUse: string;
  Loop: string;
  CampsiteAccessible: boolean;
  CampsiteLatitude?: number;
  CampsiteLongitude?: number;
  CreatedDate?: string;
  LastUpdatedDate?: string;
  ATTRIBUTES?: Array<{
    AttributeID: number;
    AttributeName: string;
    AttributeValue: string;
  }>;
  PERMITTEDEQUIPMENT?: Array<{
    EquipmentName: string;
    MaxLength: number;
  }>;
  ENTITYMEDIA?: Array<{
    EntityMediaID: string;
    MediaType: string;
    Title?: string;
    Description?: string;
    URL?: string;
  }>;
}

export interface RecreationApiResponse {
  METADATA: {
    RESULTS: {
      CURRENT_COUNT: number;
      TOTAL_COUNT: number;
    };
  };
  RECDATA: RecreationFacility[];
}

export interface RecreationCampsiteResponse {
  METADATA: {
    RESULTS: {
      CURRENT_COUNT: number;
      TOTAL_COUNT: number;
    };
  };
  RECDATA: RecreationCampsite[];
}

export interface RecreationArea {
  RecAreaID: string;
  OrgRecAreaID: string;
  ParentOrgID: string;
  RecAreaName: string;
  RecAreaDescription?: string;
  RecAreaFeeDescription?: string;
  RecAreaDirections?: string;
  RecAreaAccessibilityText?: string;
  RecAreaPhone?: string;
  RecAreaEmail?: string;
  RecAreaReservationURL?: string;
  RecAreaMapURL?: string;
  GEOJSON?: {
    TYPE: string;
    COORDINATES: [number, number];
  };
  RecAreaLongitude: number;
  RecAreaLatitude: number;
  StayLimit?: string;
  Keywords?: string;
  Reservable: boolean;
  Enabled: boolean;
  LastUpdatedDate?: string;
  ORGANIZATION?: Array<{
    OrgID: string;
    OrgName: string;
    OrgType: string;
    OrgAbbrevName: string;
  }>;
  ACTIVITY?: Array<{
    ActivityID: string;
    ActivityName: string;
    RecAreaActivityDescription?: string;
  }>;
}

export interface RecreationAreaResponse {
  METADATA: {
    RESULTS: {
      CURRENT_COUNT: number;
      TOTAL_COUNT: number;
    };
  };
  RECDATA: RecreationArea[];
}