#!/usr/bin/env node
import fs from 'fs/promises';
import path from 'path';
import { Logger } from '../utils/logging/index.js';

const logger = new Logger('JSONAnalyzer');

interface MigrationAnalysis {
  totalFiles: number;
  byMimeType: Record<string, number>;
  byCollection: Record<string, number>;
  byYear: Record<string, number>;
  processingVersions: Record<string, number>;
  uniqueEquipment: Set<string>;
  uniqueSoftware: Set<string>;
  colorAnalysisPresent: number;
  gpsDataPresent: number;
  landmarkDataPresent: number;
  livePhotoCount: number;
  errors: string[];
  sampleFiles: string[];
  processingHistory: {
    totalProcessingRuns: number;
    successfulRuns: number;
    failedRuns: number;
    avgDurationMs: number;
  };
}

interface JSONMetadata {
  success?: boolean;
  results?: Array<{
    metadata?: {
      file?: {
        path?: string;
        mimeType?: string;
        size?: number;
      };
      processing?: {
        processor?: string;
        extractedAt?: string;
        success?: boolean;
        duration?: number;
      };
      media?: {
        type?: string;
        format?: string;
        dominantColor?: string;
        meanColor?: string;
        salientColor?: string;
        livePhotoInfo?: unknown;
      };
      location?: {
        latitude?: number;
        longitude?: number;
        landmarks?: unknown[];
      };
      camera?: {
        make?: string;
        model?: string;
        software?: string;
      };
      timestamps?: {
        primary?: {
          timestamp?: string;
          source?: string;
          confidence?: string;
        };
      };
    };
  }>;
}

async function findJSONFiles(directory: string): Promise<string[]> {
  const files: string[] = [];
  
  async function walk(dir: string): Promise<void> {
    try {
      const entries = await fs.readdir(dir, { withFileTypes: true });
      
      for (const entry of entries) {
        const fullPath = path.join(dir, entry.name);
        
        if (entry.isDirectory()) {
          await walk(fullPath);
        } else if (entry.name.endsWith('.json')) {
          files.push(fullPath);
        }
      }
    } catch (error) {
      logger.warn(`Error reading directory ${dir}: ${error}`);
    }
  }
  
  await walk(directory);
  return files;
}

async function analyzeJSONFile(filePath: string): Promise<Partial<MigrationAnalysis>> {
  try {
    const content = await fs.readFile(filePath, 'utf-8');
    const data: JSONMetadata = JSON.parse(content);
    
    // Initialize analysis result
    const result: Partial<MigrationAnalysis> = {
      byMimeType: {},
      byCollection: {},
      byYear: {},
      processingVersions: {},
      uniqueEquipment: new Set(),
      uniqueSoftware: new Set(),
      colorAnalysisPresent: 0,
      gpsDataPresent: 0,
      landmarkDataPresent: 0,
      livePhotoCount: 0,
      errors: [],
      processingHistory: {
        totalProcessingRuns: 0,
        successfulRuns: 0,
        failedRuns: 0,
        avgDurationMs: 0
      }
    };
    
    if (!data.results || data.results.length === 0) {
      result.errors?.push(`No results in ${filePath}`);
      return result;
    }
    
    for (const item of data.results) {
      const metadata = item.metadata;
      if (!metadata) continue;
      
      // Analyze MIME types
      if (metadata.file?.mimeType) {
        const mimeType = metadata.file.mimeType;
        result.byMimeType![mimeType] = (result.byMimeType![mimeType] || 0) + 1;
      }
      
      // Analyze collection (based on path)
      if (metadata.file?.path) {
        const filePath = metadata.file.path;
        if (filePath.includes('/archive/')) {
          result.byCollection!['archive'] = (result.byCollection!['archive'] || 0) + 1;
        } else if (filePath.includes('/staging/')) {
          result.byCollection!['staging'] = (result.byCollection!['staging'] || 0) + 1;
        } else {
          result.byCollection!['other'] = (result.byCollection!['other'] || 0) + 1;
        }
        
        // Extract year from path
        const yearMatch = filePath.match(/\/(\d{4})\//);
        if (yearMatch) {
          const year = yearMatch[1];
          result.byYear![year] = (result.byYear![year] || 0) + 1;
        }
      }
      
      // Analyze processing versions
      if (metadata.processing?.processor) {
        const processor = metadata.processing.processor;
        result.processingVersions![processor] = (result.processingVersions![processor] || 0) + 1;
        
        // Processing statistics
        result.processingHistory!.totalProcessingRuns++;
        if (metadata.processing.success) {
          result.processingHistory!.successfulRuns++;
        } else {
          result.processingHistory!.failedRuns++;
        }
        
        if (metadata.processing.duration) {
          result.processingHistory!.avgDurationMs += metadata.processing.duration;
        }
      }
      
      // Analyze equipment
      if (metadata.camera?.make && metadata.camera?.model) {
        const equipment = `${metadata.camera.make}-${metadata.camera.model}`;
        result.uniqueEquipment!.add(equipment);
      }
      
      // Analyze software
      if (metadata.camera?.software) {
        result.uniqueSoftware!.add(metadata.camera.software);
      }
      
      // Check for color analysis
      if (metadata.media?.dominantColor || metadata.media?.meanColor || metadata.media?.salientColor) {
        result.colorAnalysisPresent!++;
      }
      
      // Check for GPS data
      if (metadata.location?.latitude && metadata.location?.longitude) {
        result.gpsDataPresent!++;
      }
      
      // Check for landmark data
      if (metadata.location?.landmarks && metadata.location.landmarks.length > 0) {
        result.landmarkDataPresent!++;
      }
      
      // Check for Live Photos
      if (metadata.media?.livePhotoInfo) {
        result.livePhotoCount!++;
      }
    }
    
    return result;
    
  } catch (error) {
    return {
      errors: [`Error parsing ${filePath}: ${error}`]
    };
  }
}

function mergeAnalysis(results: Partial<MigrationAnalysis>[]): MigrationAnalysis {
  const merged: MigrationAnalysis = {
    totalFiles: 0,
    byMimeType: {},
    byCollection: {},
    byYear: {},
    processingVersions: {},
    uniqueEquipment: new Set(),
    uniqueSoftware: new Set(),
    colorAnalysisPresent: 0,
    gpsDataPresent: 0,
    landmarkDataPresent: 0,
    livePhotoCount: 0,
    errors: [],
    sampleFiles: [],
    processingHistory: {
      totalProcessingRuns: 0,
      successfulRuns: 0,
      failedRuns: 0,
      avgDurationMs: 0
    }
  };
  
  for (const result of results) {
    merged.totalFiles++;
    
    // Merge MIME types
    if (result.byMimeType) {
      for (const [mime, count] of Object.entries(result.byMimeType)) {
        merged.byMimeType[mime] = (merged.byMimeType[mime] || 0) + count;
      }
    }
    
    // Merge collections
    if (result.byCollection) {
      for (const [collection, count] of Object.entries(result.byCollection)) {
        merged.byCollection[collection] = (merged.byCollection[collection] || 0) + count;
      }
    }
    
    // Merge years
    if (result.byYear) {
      for (const [year, count] of Object.entries(result.byYear)) {
        merged.byYear[year] = (merged.byYear[year] || 0) + count;
      }
    }
    
    // Merge processing versions
    if (result.processingVersions) {
      for (const [processor, count] of Object.entries(result.processingVersions)) {
        merged.processingVersions[processor] = (merged.processingVersions[processor] || 0) + count;
      }
    }
    
    // Merge equipment and software sets
    if (result.uniqueEquipment) {
      for (const equipment of result.uniqueEquipment) {
        merged.uniqueEquipment.add(equipment);
      }
    }
    
    if (result.uniqueSoftware) {
      for (const software of result.uniqueSoftware) {
        merged.uniqueSoftware.add(software);
      }
    }
    
    // Sum counters
    merged.colorAnalysisPresent += result.colorAnalysisPresent || 0;
    merged.gpsDataPresent += result.gpsDataPresent || 0;
    merged.landmarkDataPresent += result.landmarkDataPresent || 0;
    merged.livePhotoCount += result.livePhotoCount || 0;
    
    // Merge processing history
    if (result.processingHistory) {
      merged.processingHistory.totalProcessingRuns += result.processingHistory.totalProcessingRuns;
      merged.processingHistory.successfulRuns += result.processingHistory.successfulRuns;
      merged.processingHistory.failedRuns += result.processingHistory.failedRuns;
      merged.processingHistory.avgDurationMs += result.processingHistory.avgDurationMs;
    }
    
    // Merge errors
    if (result.errors) {
      merged.errors.push(...result.errors);
    }
  }
  
  // Calculate average duration
  if (merged.processingHistory.totalProcessingRuns > 0) {
    merged.processingHistory.avgDurationMs = Math.round(
      merged.processingHistory.avgDurationMs / merged.processingHistory.totalProcessingRuns
    );
  }
  
  return merged;
}

async function generateReport(analysis: MigrationAnalysis): Promise<void> {
  const report = `
# JSON Metadata Analysis Report

**Generated:** ${new Date().toISOString()}

## Overview
- **Total JSON files:** ${analysis.totalFiles.toLocaleString()}
- **Files with color analysis:** ${analysis.colorAnalysisPresent.toLocaleString()} (${(analysis.colorAnalysisPresent / analysis.totalFiles * 100).toFixed(1)}%)
- **Files with GPS data:** ${analysis.gpsDataPresent.toLocaleString()} (${(analysis.gpsDataPresent / analysis.totalFiles * 100).toFixed(1)}%)
- **Files with landmark data:** ${analysis.landmarkDataPresent.toLocaleString()} (${(analysis.landmarkDataPresent / analysis.totalFiles * 100).toFixed(1)}%)
- **Live Photos:** ${analysis.livePhotoCount.toLocaleString()}

## MIME Types
${Object.entries(analysis.byMimeType)
    .sort(([,a], [,b]) => b - a)
    .map(([mime, count]) => `- **${mime}:** ${count.toLocaleString()}`)
    .join('\n')}

## Collections
${Object.entries(analysis.byCollection)
    .sort(([,a], [,b]) => b - a)
    .map(([collection, count]) => `- **${collection}:** ${count.toLocaleString()}`)
    .join('\n')}

## Years
${Object.entries(analysis.byYear)
    .sort(([a], [b]) => a.localeCompare(b))
    .map(([year, count]) => `- **${year}:** ${count.toLocaleString()}`)
    .join('\n')}

## Processing Versions
${Object.entries(analysis.processingVersions)
    .sort(([,a], [,b]) => b - a)
    .map(([processor, count]) => `- **${processor}:** ${count.toLocaleString()}`)
    .join('\n')}

## Equipment Found (${analysis.uniqueEquipment.size} unique)
${Array.from(analysis.uniqueEquipment)
    .sort()
    .map(equipment => `- ${equipment}`)
    .join('\n')}

## Software Found (${analysis.uniqueSoftware.size} unique)
${Array.from(analysis.uniqueSoftware)
    .sort()
    .map(software => `- ${software}`)
    .join('\n')}

## Processing Statistics
- **Total processing runs:** ${analysis.processingHistory.totalProcessingRuns.toLocaleString()}
- **Successful runs:** ${analysis.processingHistory.successfulRuns.toLocaleString()} (${(analysis.processingHistory.successfulRuns / analysis.processingHistory.totalProcessingRuns * 100).toFixed(1)}%)
- **Failed runs:** ${analysis.processingHistory.failedRuns.toLocaleString()} (${(analysis.processingHistory.failedRuns / analysis.processingHistory.totalProcessingRuns * 100).toFixed(1)}%)
- **Average duration:** ${analysis.processingHistory.avgDurationMs}ms

## Migration Readiness
- **Color analysis coverage:** ${(analysis.colorAnalysisPresent / analysis.totalFiles * 100).toFixed(1)}%
- **GPS coverage:** ${(analysis.gpsDataPresent / analysis.totalFiles * 100).toFixed(1)}%
- **Landmark enrichment:** ${(analysis.landmarkDataPresent / analysis.totalFiles * 100).toFixed(1)}%

## Errors (${analysis.errors.length})
${analysis.errors.slice(0, 10).map(error => `- ${error}`).join('\n')}
${analysis.errors.length > 10 ? `... and ${analysis.errors.length - 10} more errors` : ''}
`;

  const reportPath = '/home/stephen/Documents/initial-media-processing/docs/json-analysis-report.md';
  await fs.writeFile(reportPath, report.trim());
  
  logger.info(`Analysis report written to ${reportPath}`);
}

async function main() {
  const archivePath = process.argv[2] || '/photos/archive';
  
  logger.info('Starting JSON metadata analysis...');
  logger.info(`Scanning directory: ${archivePath}`);
  
  // Find all JSON files
  const jsonFiles = await findJSONFiles(archivePath);
  logger.info(`Found ${jsonFiles.length.toLocaleString()} JSON files`);
  
  if (jsonFiles.length === 0) {
    logger.error('No JSON files found');
    process.exit(1);
  }
  
  // Analyze in batches to avoid memory issues
  const batchSize = 1000;
  const batches: string[][] = [];
  
  for (let i = 0; i < jsonFiles.length; i += batchSize) {
    batches.push(jsonFiles.slice(i, i + batchSize));
  }
  
  logger.info(`Processing ${batches.length} batches of ${batchSize} files each`);
  
  const allResults: Partial<MigrationAnalysis>[] = [];
  
  for (let i = 0; i < batches.length; i++) {
    const batch = batches[i];
    logger.info(`Processing batch ${i + 1}/${batches.length} (${batch.length} files)`);
    
    const batchPromises = batch.map(file => analyzeJSONFile(file));
    const batchResults = await Promise.all(batchPromises);
    
    allResults.push(...batchResults);
    
    // Progress update every 10 batches
    if ((i + 1) % 10 === 0) {
      logger.info(`Completed ${i + 1}/${batches.length} batches`);
    }
  }
  
  logger.info('Merging analysis results...');
  const finalAnalysis = mergeAnalysis(allResults);
  
  logger.info('Generating report...');
  await generateReport(finalAnalysis);
  
  logger.info('Analysis complete!');
  logger.info(`Total files analyzed: ${finalAnalysis.totalFiles.toLocaleString()}`);
  logger.info(`Files with GPS: ${finalAnalysis.gpsDataPresent.toLocaleString()}`);
  logger.info(`Files with landmarks: ${finalAnalysis.landmarkDataPresent.toLocaleString()}`);
  logger.info(`Unique equipment: ${finalAnalysis.uniqueEquipment.size}`);
}

if (import.meta.url === `file://${process.argv[1]}`) {
  main().catch(error => {
    logger.error(`Analysis failed: ${error}`);
    process.exit(1);
  });
}