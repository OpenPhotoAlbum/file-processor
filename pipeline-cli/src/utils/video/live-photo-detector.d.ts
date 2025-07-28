/**
 * Live Photo detection utilities
 * Detects Apple Live Photos based on video characteristics and metadata
 */
export interface LivePhotoDetectionResult {
    isLivePhoto: boolean;
    confidence: 'high' | 'medium' | 'low' | 'none';
    indicators: {
        hasLivePhotoInfo: boolean;
        livePhotoInfoCount: number;
        duration: number | null;
        isShortDuration: boolean;
        hasCorrespondingImage: boolean;
        correspondingImagePath?: string;
    };
}
/**
 * Detects if a video file is likely an Apple Live Photo
 */
export declare class LivePhotoDetector {
    private logger;
    /**
     * Check if a video is a Live Photo
     */
    detectLivePhoto(videoPath: string): Promise<LivePhotoDetectionResult>;
    /**
     * Check for Live Photo Info metadata entries
     */
    private checkLivePhotoInfo;
    /**
     * Get video duration using ffprobe
     */
    private getVideoDuration;
    /**
     * Check for corresponding image file
     */
    private checkCorrespondingImage;
    /**
     * Calculate confidence level based on indicators
     */
    private calculateConfidence;
}
