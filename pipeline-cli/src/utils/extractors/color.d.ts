export interface ColorAnalysis {
    dominantColor: string;
    meanColor: string;
    salientColor: string | null;
    topColors: Array<{
        color: string;
        percentage: number;
    }>;
    colorProfile: {
        quantizationLevel: number;
        imageSize: string;
        analysisMethod: string;
    };
}
export declare function extractColorAnalysis(imagePath: string): Promise<ColorAnalysis>;
export declare function extractDominantColorOnly(imagePath: string): Promise<string>;
