import * as fs from 'fs';
import * as path from 'path';

// Simple interface for our metadata structure
interface PhotoMetadata {
  file: {
    path: string;
    size: number;
    mimeType: string;
  };
  media: {
    dimensions: {
      width: number;
      height: number;
      megapixels: number;
    };
  };
  timestamps: {
    primary: {
      timestamp: string;
    };
  };
  camera?: {
    make?: string;
    model?: string;
    lens?: string;
    software?: string | number;
  };
  settings?: {
    iso?: number;
    aperture?: number;
    shutterSpeed?: string;
    focalLength?: string;
  };
  location: {
    primary?: {
      latitude: number;
      longitude: number;
    };
    geolocation?: {
      city?: string;
      state_code?: string;
      county_name?: string;
    };
    landmarks?: Array<{
      landmark: {
        name: string;
        category?: string;
        description?: string;
      };
      source: string;
      distance: number;
    }>;
  };
  technical?: Record<string, any>;
}

export class PhotoBrowserGenerator {
  
  public generatePhotoPage(photoPath: string, metadata: PhotoMetadata): string {
    // Extract key data from our metadata
    const photoName = path.basename(photoPath);
    const relativePhotoPath = path.relative(process.cwd(), photoPath);
    
    // Format date from our metadata
    const captureDate = new Date(metadata.timestamps.primary.timestamp);
    const formattedDate = captureDate.toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric',
      hour: '2-digit',
      minute: '2-digit',
      timeZoneName: 'short'
    });
    
    // Create template variables
    const templateData = {
      photoName,
      photoPath: relativePhotoPath,
      fileSize: this.formatFileSize(metadata.file.size),
      mimeType: metadata.file.mimeType,
      dimensions: `${metadata.media.dimensions.width} × ${metadata.media.dimensions.height}`,
      megapixels: metadata.media.dimensions.megapixels,
      camera: metadata.camera ? `${metadata.camera.make} ${metadata.camera.model}` : 'Unknown',
      lens: metadata.camera?.lens || 'Unknown',
      iso: metadata.settings?.iso || 'Unknown',
      aperture: metadata.settings?.aperture || 'Unknown',
      shutterSpeed: metadata.settings?.shutterSpeed || 'Unknown',
      focalLength: metadata.settings?.focalLength || 'Unknown',
      captureDate: formattedDate,
      hasGPS: !!metadata.location.primary,
      latitude: metadata.location.primary?.latitude || 0,
      longitude: metadata.location.primary?.longitude || 0,
      landmarks: metadata.location.landmarks || [],
      landmarkCount: metadata.location.landmarks?.length || 0,
      city: metadata.location.geolocation?.city || 'Unknown',
      state: metadata.location.geolocation?.state_code || 'Unknown',
      county: metadata.location.geolocation?.county_name || 'Unknown'
    };
    
    // Generate insights based on our rich metadata
    const insights = this.generateInsights(metadata);
    
    // Build complete HTML page from scratch
    return this.buildCompletePage(templateData, metadata, insights);
  }
  
  private formatFileSize(bytes: number): string {
    const sizes = ['Bytes', 'KB', 'MB', 'GB'];
    if (bytes === 0) return '0 Bytes';
    const i = Math.floor(Math.log(bytes) / Math.log(1024));
    return Math.round(bytes / Math.pow(1024, i) * 100) / 100 + ' ' + sizes[i];
  }
  
  private generateInsights(metadata: PhotoMetadata): any {
    const insights = {
      locationStory: '',
      technicalAnalysis: '',
      faceDetection: '',
      photographyConditions: ''
    };
    
    // Location story using our GNIS and Recreation.gov data
    if (metadata.location.landmarks && metadata.location.landmarks.length > 0) {
      // Check for specific landmarks
      const recreationLandmarks = metadata.location.landmarks.filter(l => l.source === 'Recreation.gov');
      const npsLandmarks = metadata.location.landmarks.filter(l => l.source === 'National Parks Service');
      
      if (npsLandmarks.length > 0) {
        const park = npsLandmarks[0].landmark;
        insights.locationStory = `This photo was taken in ${park.fullName}, established in ${park.established}. `;
        if (park.description) {
          insights.locationStory += park.description + ' ';
        }
      }
      
      if (recreationLandmarks.length > 0) {
        const facility = recreationLandmarks[0].landmark;
        const distance = (recreationLandmarks[0].distance / 1000).toFixed(1);
        insights.locationStory += `The photo was captured ${distance}km from ${facility.name}, a ${facility.category} within the park. `;
        
        if (facility.description) {
          const shortDesc = facility.description.split('.')[0] + '.';
          insights.locationStory += shortDesc;
        }
      }
      
      if (!npsLandmarks.length && !recreationLandmarks.length) {
        const landmarkNames = metadata.location.landmarks.slice(0, 3).map(l => l.landmark.name).join(', ');
        insights.locationStory = `This photo was taken near ${landmarkNames}. `;
      }
    }
    
    // Fallback to geographic location if available
    if (metadata.location.geolocation && (!insights.locationStory || insights.locationStory.length < 50)) {
      insights.locationStory = `Photo taken in ${metadata.location.geolocation?.city}, ${metadata.location.geolocation?.county_name} County, ${metadata.location.geolocation?.state_code}.`;
    } else if (!insights.locationStory) {
      insights.locationStory = 'Location analysis based on GPS coordinates and nearby landmarks.';
    }
    
    // Technical analysis using camera settings
    if (metadata.settings) {
      const { iso, aperture, shutterSpeed } = metadata.settings;
      insights.technicalAnalysis = `Shot with ${metadata.camera?.make} ${metadata.camera?.model} at ISO ${iso}, f/${aperture}, ${shutterSpeed} shutter speed. `;
      
      // Analyze settings for insights
      if (iso && iso < 100) {
        insights.technicalAnalysis += 'Low ISO indicates excellent lighting conditions with minimal noise. ';
        insights.photographyConditions = 'Optimal daylight conditions with excellent natural lighting allowed for clean, low-noise capture.';
      } else if (iso && iso > 400) {
        insights.technicalAnalysis += 'Higher ISO suggests challenging lighting, likely compensated by iPhone computational photography. ';
        insights.photographyConditions = 'Challenging lighting required higher ISO, but computational photography maintained image quality.';
      } else {
        insights.photographyConditions = 'Good lighting conditions with balanced camera settings.';
      }
      
      if (aperture && aperture < 2.0) {
        insights.technicalAnalysis += `Wide aperture (f/${aperture}) creates shallow depth of field, isolating the subject. `;
      }
      
      // Add focus distance if available
      if (metadata.technical && metadata.technical['MakerNotes:FocusDistanceRange']) {
        insights.technicalAnalysis += `Focus distance: ${metadata.technical['MakerNotes:FocusDistanceRange']}. `;
      }
    }
    
    // Face detection insights
    if (metadata.technical && metadata.technical['XMP:RegionType'] && 
        Array.isArray(metadata.technical['XMP:RegionType']) && 
        metadata.technical['XMP:RegionType'].includes('Face')) {
      const faceCount = metadata.technical['XMP:RegionType'].filter(type => type === 'Face').length;
      insights.faceDetection = `iPhone detected ${faceCount} face${faceCount > 1 ? 's' : ''} in this photo, optimizing focus and exposure for portrait photography.`;
    }
    
    return insights;
  }
  
  private buildCompletePage(templateData: any, metadata: PhotoMetadata, insights: any): string {
    const landmarkList = templateData.landmarks.map(landmark => {
      const distance = (landmark.distance / 1000).toFixed(1); // Convert to km
      return `<li><strong>${landmark.landmark.name}</strong> (${distance}km away) - ${landmark.landmark.category || 'Landmark'}</li>`;
    }).join('') || '<li>No landmarks detected nearby</li>';

    return `<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${templateData.photoName} - Photo Metadata</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background-color: #f8f9fa;
            color: #202124;
            line-height: 1.5;
        }
        
        .header {
            background: #fff;
            padding: 24px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12);
            margin-bottom: 24px;
        }
        
        .header h1 {
            font-size: 32px;
            font-weight: 400;
            color: #1a73e8;
            margin-bottom: 8px;
        }
        
        .header p {
            color: #5f6368;
            font-size: 16px;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 24px;
        }
        
        .section {
            background: #fff;
            border-radius: 8px;
            padding: 24px;
            margin-bottom: 16px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12);
        }
        
        .section-title {
            font-size: 20px;
            font-weight: 500;
            color: #202124;
            margin-bottom: 16px;
            padding-bottom: 8px;
            border-bottom: 1px solid #dadce0;
        }
        
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 16px;
            margin-bottom: 16px;
        }
        
        .info-row {
            display: flex;
            margin-bottom: 8px;
            align-items: flex-start;
        }
        
        .info-row .label {
            font-weight: 500;
            color: #5f6368;
            min-width: 120px;
            margin-right: 12px;
        }
        
        .info-row .value {
            color: #202124;
            flex: 1;
        }
        
        .insight-card {
          background: #f8f9fa;
          border-radius: 8px;
          padding: 20px;
          border-left: 4px solid #1a73e8;
          margin-bottom: 16px;
        }
        
        .insight-card h3 {
          font-size: 16px;
          font-weight: 500;
          color: #1a73e8;
          margin-bottom: 8px;
        }
        
        .insight-card p, .insight-card ul {
          color: #5f6368;
          line-height: 1.5;
          margin: 0;
        }
        
        .insight-card li {
          margin-bottom: 4px;
        }
        
        .photo-container {
            text-align: center;
            margin-bottom: 24px;
        }
        
        .photo-container img {
            max-width: 100%;
            max-height: 70vh;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }
        
        .photo-title {
            font-size: 18px;
            font-weight: 500;
            color: #202124;
            margin: 16px 0 8px 0;
        }
        
        .photo-subtitle {
            color: #5f6368;
            font-size: 14px;
        }
        
        .camera-stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
            gap: 12px;
            margin-top: 16px;
        }
        
        .stat-card {
            text-align: center;
            background: #f8f9fa;
            border-radius: 6px;
            padding: 12px;
        }
        
        .stat-value {
            font-size: 18px;
            font-weight: 600;
            color: #1a73e8;
        }
        
        .stat-label {
            font-size: 12px;
            color: #5f6368;
            margin-top: 4px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Enhanced Photo Metadata</h1>
        <p>AI-powered analysis of ${templateData.photoName} with geographic and technical intelligence</p>
    </div>
    
    <div class="container">
        <!-- Photo Display -->
        <div class="section">
            <div class="photo-container">
                <img src="${templateData.photoPath}" alt="${templateData.photoName}" />
                <div class="photo-title">${templateData.photoName}</div>
                <div class="photo-subtitle">Captured: ${templateData.captureDate}</div>
            </div>
        </div>
        
        <!-- Enhanced AI-Generated Insights Section -->
        <div class="section">
            <h2 class="section-title">🧠 Enhanced Photo Intelligence</h2>
            
            <div class="insight-card">
                <h3>📍 Location Story</h3>
                <p>${insights.locationStory || 'Location analysis based on GPS coordinates and nearby landmarks.'}</p>
            </div>
            
            <div class="insight-card">
                <h3>📸 Technical Analysis</h3>
                <p>${insights.technicalAnalysis || 'Camera settings optimized for the shooting conditions.'}</p>
            </div>
            
            <div class="insight-card">
                <h3>🗺️ Geographic Context</h3>
                <p>${templateData.city !== 'Unknown' ? 
                    `Captured in ${templateData.city}, ${templateData.county} County, ${templateData.state}.` : 
                    `Captured at GPS coordinates: ${templateData.latitude.toFixed(6)}, ${-templateData.longitude.toFixed(6)}.`
                } ${templateData.landmarkCount > 0 ? `${templateData.landmarkCount} recreational facilities and landmarks detected nearby.` : ''}</p>
            </div>
            
            ${insights.faceDetection ? `
            <div class="insight-card">
                <h3>👤 Face Detection</h3>
                <p>${insights.faceDetection}</p>
            </div>
            ` : ''}
            
            <div class="insight-card">
                <h3>🏞️ Nearby Landmarks</h3>
                <ul style="margin: 0; padding-left: 20px;">
                    ${landmarkList}
                </ul>
            </div>
            
            <div class="insight-card">
                <h3>📊 Photography Conditions</h3>
                <p>${insights.photographyConditions}</p>
            </div>
        </div>
        
        <!-- Technical Details Grid -->
        <div class="grid">
            <div class="section">
                <h2 class="section-title">📷 Camera Information</h2>
                <div class="info-row">
                    <span class="label">Make:</span>
                    <span class="value">${metadata.camera?.make || 'Unknown'}</span>
                </div>
                <div class="info-row">
                    <span class="label">Model:</span>
                    <span class="value">${metadata.camera?.model || 'Unknown'}</span>
                </div>
                <div class="info-row">
                    <span class="label">Lens:</span>
                    <span class="value">${templateData.lens}</span>
                </div>
                <div class="info-row">
                    <span class="label">Software:</span>
                    <span class="value">${metadata.camera?.software || 'Unknown'}</span>
                </div>
                
                <div class="camera-stats">
                    <div class="stat-card">
                        <div class="stat-value">${templateData.iso}</div>
                        <div class="stat-label">ISO</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-value">f/${templateData.aperture}</div>
                        <div class="stat-label">Aperture</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-value">${templateData.shutterSpeed}</div>
                        <div class="stat-label">Shutter</div>
                    </div>
                    <div class="stat-card">
                        <div class="stat-value">${templateData.focalLength}</div>
                        <div class="stat-label">Focal Length</div>
                    </div>
                </div>
            </div>
            
            <div class="section">
                <h2 class="section-title">📁 File Information</h2>
                <div class="info-row">
                    <span class="label">Filename:</span>
                    <span class="value">${templateData.photoName}</span>
                </div>
                <div class="info-row">
                    <span class="label">Size:</span>
                    <span class="value">${templateData.fileSize}</span>
                </div>
                <div class="info-row">
                    <span class="label">Format:</span>
                    <span class="value">${templateData.mimeType}</span>
                </div>
                <div class="info-row">
                    <span class="label">Dimensions:</span>
                    <span class="value">${templateData.dimensions}</span>
                </div>
                <div class="info-row">
                    <span class="label">Megapixels:</span>
                    <span class="value">${templateData.megapixels} MP</span>
                </div>
            </div>
            
            <div class="section">
                <h2 class="section-title">🌍 Location Data</h2>
                <div class="info-row">
                    <span class="label">City:</span>
                    <span class="value">${templateData.city}</span>
                </div>
                <div class="info-row">
                    <span class="label">County:</span>
                    <span class="value">${templateData.county}</span>
                </div>
                <div class="info-row">
                    <span class="label">State:</span>
                    <span class="value">${templateData.state}</span>
                </div>
                <div class="info-row">
                    <span class="label">Latitude:</span>
                    <span class="value">${templateData.latitude.toFixed(6)}°</span>
                </div>
                <div class="info-row">
                    <span class="label">Longitude:</span>
                    <span class="value">${templateData.longitude.toFixed(6)}°</span>
                </div>
                <div class="info-row">
                    <span class="label">Landmarks:</span>
                    <span class="value">${templateData.landmarkCount} nearby</span>
                </div>
            </div>
        </div>
    </div>
</body>
</html>`;
  }
}