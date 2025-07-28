/**
 * Abstract base class for all media processors
 * Provides common functionality and enforces interface
 */
export class BaseProcessor {
    // Optional validation method
    async validate(file) {
        return this.supportedMimes.includes(file.mimeType.toLowerCase());
    }
}
//# sourceMappingURL=base.processor.js.map