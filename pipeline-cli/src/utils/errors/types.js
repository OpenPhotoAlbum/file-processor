/**
 * Error system type definitions
 */
export var ErrorSeverity;
(function (ErrorSeverity) {
    ErrorSeverity["FATAL"] = "F";
    ErrorSeverity["ERROR"] = "E";
    ErrorSeverity["WARNING"] = "W";
    ErrorSeverity["INFO"] = "I"; // Informational, not an error
})(ErrorSeverity || (ErrorSeverity = {}));
export var ErrorComponent;
(function (ErrorComponent) {
    ErrorComponent["VALIDATION"] = "VAL";
    ErrorComponent["EXIF"] = "EXIF";
    ErrorComponent["GPS"] = "GPS";
    ErrorComponent["TIMESTAMP"] = "TIME";
    ErrorComponent["PATH"] = "PATH";
    ErrorComponent["METADATA"] = "META";
    ErrorComponent["IMAGE"] = "IMG";
    ErrorComponent["VIDEO"] = "VID";
    ErrorComponent["CONFIG"] = "CFG";
    ErrorComponent["SYSTEM"] = "SYS";
    ErrorComponent["LANDMARK"] = "LANDMARK"; // Landmark detection and enrichment
})(ErrorComponent || (ErrorComponent = {}));
//# sourceMappingURL=types.js.map