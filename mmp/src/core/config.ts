/**
 * Configuration Management
 * 
 * Handles loading and managing MMP configuration from ~/.config/mmp/config.json
 */

import { promises as fs } from 'fs';
import { homedir } from 'os';
import { join } from 'path';

export interface LocationShortcuts {
  [name: string]: string; // name -> "lat,lng"
}

export interface BackgroundShortcuts {
  [name: string]: string; // name -> path
}

export interface DatabaseConfig {
  host: string;
  port: number;
  user: string;
  database: string;
}

export interface DirectoriesConfig {
  staging: string;
  archive: string;
  tools: string;
}

export interface ScanningConfig {
  default_device: string;
  default_resolution: number;
  default_format: string;
}

export interface AIConfig {
  enabled: boolean;
  provider: string;
}

export interface MMPConfig {
  database: DatabaseConfig;
  directories: DirectoriesConfig;
  shortcuts: {
    locations: LocationShortcuts;
    backgrounds: BackgroundShortcuts;
  };
  scanning: ScanningConfig;
  ai: AIConfig;
}

const DEFAULT_CONFIG: MMPConfig = {
  database: {
    host: 'localhost',
    port: 3309,
    user: 'kin',
    database: 'kin'
  },
  directories: {
    staging: '/photos/staging',
    archive: '/photos/archive',
    tools: '/photos/tools'
  },
  shortcuts: {
    locations: {
      cottage: '42.7070,-71.1631',
      'didi-house': '30.2672,-97.7431',
      lawrence: '42.7067,-71.1631',
      haverhill: '42.7762,-71.0773'
    },
    backgrounds: {
      red: '~/.local/share/mmp/backgrounds/red.jpg',
      white: '~/.local/share/mmp/backgrounds/white.jpg'
    }
  },
  scanning: {
    default_device: 'airscan:e0:HP',
    default_resolution: 300,
    default_format: 'jpeg'
  },
  ai: {
    enabled: true,
    provider: 'claude'
  }
};

class ConfigManager {
  private configPath: string;
  private config: MMPConfig | null = null;

  constructor() {
    this.configPath = join(homedir(), '.config', 'mmp', 'config.json');
  }

  async load(): Promise<MMPConfig> {
    if (this.config) {
      return this.config;
    }

    try {
      const configData = await fs.readFile(this.configPath, 'utf8');
      this.config = { ...DEFAULT_CONFIG, ...JSON.parse(configData) };
    } catch (error) {
      // Config doesn't exist or is invalid, use defaults
      this.config = DEFAULT_CONFIG;
    }

    return this.config!; // We know it's not null at this point
  }

  async save(config: MMPConfig): Promise<void> {
    const configDir = join(homedir(), '.config', 'mmp');
    await fs.mkdir(configDir, { recursive: true });
    await fs.writeFile(this.configPath, JSON.stringify(config, null, 2));
    this.config = config;
  }

  async addLocationShortcut(name: string, coordinates: string): Promise<void> {
    const config = await this.load();
    config.shortcuts.locations[name] = coordinates;
    await this.save(config);
  }

  async removeLocationShortcut(name: string): Promise<void> {
    const config = await this.load();
    delete config.shortcuts.locations[name];
    await this.save(config);
  }

  async resolveLocationShortcut(nameOrCoords: string): Promise<string> {
    const config = await this.load();
    
    // If it's already coordinates, return as-is
    if (nameOrCoords.includes(',') && nameOrCoords.match(/^-?\d+\.?\d*,-?\d+\.?\d*$/)) {
      return nameOrCoords;
    }
    
    // Look up shortcut
    const coordinates = config.shortcuts.locations[nameOrCoords];
    if (coordinates) {
      return coordinates;
    }
    
    // Not found - might be a place name that needs geocoding
    throw new Error(`Location shortcut '${nameOrCoords}' not found. Use coordinates or add shortcut first.`);
  }
}

// Export singleton instance
export const config = new ConfigManager();
export default config;