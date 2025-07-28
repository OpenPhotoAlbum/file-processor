/**
 * Supported sidecar metadata file formats
 */
export var SidecarFormat;
(function (SidecarFormat) {
    /** JSON format - commonly used by Google Takeout, custom tools */
    SidecarFormat["JSON"] = "json";
    /** XMP format - Adobe Bridge, Lightroom, etc. */
    SidecarFormat["XMP"] = "xmp";
    /** XML format - various video metadata systems */
    SidecarFormat["XML"] = "xml";
    /** Plain text format - simple key=value pairs */
    SidecarFormat["TEXT"] = "text";
})(SidecarFormat || (SidecarFormat = {}));
/**
 * Known sidecar metadata sources
 */
export var SidecarSource;
(function (SidecarSource) {
    /** Google Takeout photo metadata */
    SidecarSource["GOOGLE_TAKEOUT"] = "google-takeout";
    /** Adobe Bridge XMP metadata */
    SidecarSource["ADOBE_BRIDGE"] = "adobe-bridge";
    /** Adobe Lightroom metadata */
    SidecarSource["ADOBE_LIGHTROOM"] = "adobe-lightroom";
    /** Custom metadata files */
    SidecarSource["CUSTOM"] = "custom";
    /** Unknown or unidentified source */
    SidecarSource["UNKNOWN"] = "unknown";
})(SidecarSource || (SidecarSource = {}));
/**
 * MIME types that the codebase can actually process
 * These are the formats our processors, validators, and extractors support
 */
export var SupportedMimeType;
(function (SupportedMimeType) {
    /** JPEG images - primary supported format */
    SupportedMimeType["JPEG"] = "image/jpeg";
    /** JPEG images - alternative MIME type */
    SupportedMimeType["JPG"] = "image/jpg";
    /** PNG images - full support */
    SupportedMimeType["PNG"] = "image/png";
    /** HEIC images - Apple format support */
    SupportedMimeType["HEIC"] = "image/heic";
    /** GIF images - basic support */
    SupportedMimeType["GIF"] = "image/gif";
    /** TIFF images - full support */
    SupportedMimeType["TIFF"] = "image/tiff";
    /** WEBP images - modern web format */
    SupportedMimeType["WEBP"] = "image/webp";
})(SupportedMimeType || (SupportedMimeType = {}));
//# sourceMappingURL=media.js.map