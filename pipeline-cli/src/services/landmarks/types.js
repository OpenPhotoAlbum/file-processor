/**
 * Landmark System Types - Core interfaces and enums
 */
/**
 * Landmark categories for classification
 */
export var LandmarkCategory;
(function (LandmarkCategory) {
    LandmarkCategory["NATIONAL_PARK"] = "national_park";
    LandmarkCategory["NATIONAL_MONUMENT"] = "national_monument";
    LandmarkCategory["NATIONAL_HISTORIC_SITE"] = "national_historic_site";
    LandmarkCategory["NATIONAL_RECREATION_AREA"] = "national_recreation_area";
    LandmarkCategory["NATIONAL_FOREST"] = "national_forest";
    LandmarkCategory["STATE_PARK"] = "state_park";
    LandmarkCategory["STATE_FOREST"] = "state_forest";
    LandmarkCategory["NATURAL_FEATURE"] = "natural_feature";
    LandmarkCategory["HISTORIC_LANDMARK"] = "historic_landmark";
    LandmarkCategory["CULTURAL_SITE"] = "cultural_site";
    LandmarkCategory["SCENIC_AREA"] = "scenic_area";
    // GNIS natural feature categories
    LandmarkCategory["MOUNTAIN"] = "mountain";
    LandmarkCategory["LAKE"] = "lake";
    LandmarkCategory["RIVER"] = "river";
    LandmarkCategory["VALLEY"] = "valley";
    LandmarkCategory["RIDGE"] = "ridge";
    LandmarkCategory["WATER_FEATURE"] = "water_feature";
    // Recreation.gov facility categories
    LandmarkCategory["VISITOR_CENTER"] = "visitor_center";
    LandmarkCategory["NATURE_CENTER"] = "nature_center";
    LandmarkCategory["CAMPGROUND"] = "campground";
    LandmarkCategory["DAY_USE_AREA"] = "day_use_area";
    LandmarkCategory["BOAT_LAUNCH"] = "boat_launch";
    LandmarkCategory["PICNIC_AREA"] = "picnic_area";
    LandmarkCategory["TRAILHEAD"] = "trailhead";
    LandmarkCategory["RECREATION_FACILITY"] = "recreation_facility";
})(LandmarkCategory || (LandmarkCategory = {}));
/**
 * Data sources for landmark information
 */
export var LandmarkSource;
(function (LandmarkSource) {
    LandmarkSource["NPS_API"] = "nps_api";
    LandmarkSource["NPS_BUNDLED"] = "nps_bundled";
    LandmarkSource["USGS_GNIS"] = "usgs_gnis";
    LandmarkSource["RECREATION_GOV"] = "recreation_gov";
    LandmarkSource["STATE_API"] = "state_api";
    LandmarkSource["OSM"] = "openstreetmap";
    LandmarkSource["BUNDLED"] = "bundled";
    LandmarkSource["CACHE"] = "cache";
})(LandmarkSource || (LandmarkSource = {}));
/**
 * Relationship between GPS coordinates and landmark
 */
export var LandmarkRelationship;
(function (LandmarkRelationship) {
    LandmarkRelationship["WITHIN_BOUNDARY"] = "within_boundary";
    LandmarkRelationship["AT_ENTRANCE"] = "at_entrance";
    LandmarkRelationship["NEARBY"] = "nearby";
    LandmarkRelationship["VISIBLE_FROM"] = "visible_from";
    LandmarkRelationship["OVERLOOK"] = "overlook";
})(LandmarkRelationship || (LandmarkRelationship = {}));
//# sourceMappingURL=types.js.map