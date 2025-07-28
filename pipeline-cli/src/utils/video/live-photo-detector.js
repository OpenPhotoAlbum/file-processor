/**
 * Live Photo detection utilities
 * Detects Apple Live Photos based on video characteristics and metadata
 */
import { execSync } from 'child_process';
import { existsSync } from 'fs';
import { Logger } from '../logging/index.js';
import { sanitizePathForLogging } from '../paths.js';
/**
 * Detects if a video file is likely an Apple Live Photo
 */
export class LivePhotoDetector {
    logger = new Logger('LivePhotoDetector');
    /**
     * Check if a video is a Live Photo
     */
    async detectLivePhoto(videoPath) {
        const safePath = sanitizePathForLogging(videoPath);
        this.logger.debug('Checking for Live Photo indicators', { videoPath: safePath });
        const result = {
            isLivePhoto: false,
            confidence: 'none',
            indicators: {
                hasLivePhotoInfo: false,
                livePhotoInfoCount: 0,
                duration: null,
                isShortDuration: false,
                hasCorrespondingImage: false
            }
        };
        try {
            // 1. Check for Live Photo Info metadata using exiftool with embedded extraction
            const livePhotoInfoCount = this.checkLivePhotoInfo(videoPath);
            result.indicators.hasLivePhotoInfo = livePhotoInfoCount > 0;
            result.indicators.livePhotoInfoCount = livePhotoInfoCount;
            // 2. Check video duration
            const duration = this.getVideoDuration(videoPath);
            result.indicators.duration = duration;
            result.indicators.isShortDuration = duration !== null && duration > 0 && duration <= 3.5;
            // 3. Check for corresponding image file
            const imageCheck = this.checkCorrespondingImage(videoPath);
            result.indicators.hasCorrespondingImage = imageCheck.exists;
            if (imageCheck.path) {
                result.indicators.correspondingImagePath = imageCheck.path;
            }
            // 4. Determine if it's a Live Photo and confidence level
            const confidenceScore = this.calculateConfidence(result.indicators);
            result.confidence = confidenceScore;
            result.isLivePhoto = confidenceScore !== 'none';
            this.logger.info('Live Photo detection complete', {
                videoPath: safePath,
                isLivePhoto: result.isLivePhoto,
                confidence: result.confidence,
                indicators: result.indicators
            });
        }
        catch (error) {
            this.logger.error('Error detecting Live Photo', error);
        }
        return result;
    }
    /**
     * Check for Live Photo Info metadata entries
     */
    checkLivePhotoInfo(videoPath) {
        try {
            // Use exiftool with embedded extraction to find Live Photo Info
            const command = `exiftool -ee -a "${videoPath}" 2>/dev/null | grep -c -i "live.*photo.*info" || echo "0"`;
            const output = execSync(command, { encoding: 'utf8' }).trim();
            const count = parseInt(output, 10);
            this.logger.debug('Live Photo Info count', { videoPath: sanitizePathForLogging(videoPath), count });
            return isNaN(count) ? 0 : count;
        }
        catch (error) {
            this.logger.debug('Error checking Live Photo Info', { error: error.message });
            return 0;
        }
    }
    /**
     * Get video duration using ffprobe
     */
    getVideoDuration(videoPath) {
        try {
            const command = `ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "${videoPath}" 2>/dev/null`;
            const output = execSync(command, { encoding: 'utf8' }).trim();
            const duration = parseFloat(output);
            return isNaN(duration) ? null : duration;
        }
        catch (error) {
            this.logger.debug('Error getting video duration', { error: error.message });
            return null;
        }
    }
    /**
     * Check for corresponding image file
     */
    checkCorrespondingImage(videoPath) {
        // Remove extension to get base path
        const basePath = videoPath.replace(/\.(mov|MOV)$/, '');
        // Check for common image extensions
        const imageExtensions = ['HEIC', 'heic', 'JPG', 'jpg', 'JPEG', 'jpeg', 'PNG', 'png'];
        for (const ext of imageExtensions) {
            const imagePath = `${basePath}.${ext}`;
            if (existsSync(imagePath)) {
                return { exists: true, path: imagePath };
            }
        }
        return { exists: false };
    }
    /**
     * Calculate confidence level based on indicators
     */
    calculateConfidence(indicators) {
        let score = 0;
        // Live Photo Info is the strongest indicator
        if (indicators.hasLivePhotoInfo && indicators.livePhotoInfoCount > 0) {
            score += 3;
            if (indicators.livePhotoInfoCount > 20) {
                score += 1; // Extra point for many entries
            }
        }
        // Short duration is important
        if (indicators.isShortDuration) {
            score += 2;
        }
        // Corresponding image file
        if (indicators.hasCorrespondingImage) {
            score += 1;
        }
        // Determine confidence level
        if (score >= 5)
            return 'high';
        if (score >= 3)
            return 'medium';
        if (score >= 1)
            return 'low';
        return 'none';
    }
}
//# sourceMappingURL=live-photo-detector.js.map