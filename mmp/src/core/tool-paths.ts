/**
 * Tool Paths Configuration
 * 
 * CRITICAL: MPP must NEVER hardcode paths to old fragmented tools.
 * This file exists to prevent that mistake and enforce the wrapper pattern.
 */

import { readFileSync } from 'fs';
import { homedir } from 'os';
import path from 'path';

interface MPPConfig {
  tools: {
    multicrop: string;
    exiftool?: string;
    scanimage?: string;
  };
  directories: {
    staging: string;
    archive: string;
    tools: string;
  };
  shortcuts: {
    locations: Record<string, string>;
    backgrounds: Record<string, string>;
  };
}

let config: MPPConfig | null = null;

export function getConfig(): MPPConfig {
  if (!config) {
    const configPath = path.join(homedir(), '.config', 'mmp', 'config.json');
    try {
      config = JSON.parse(readFileSync(configPath, 'utf8'));
    } catch (error) {
      throw new Error(`❌ MPP configuration not found at ${configPath}`);
    }
  }
  
  return config!;
}

export function getMulticropPath(): string {
  const cfg = getConfig();
  
  if (!cfg.tools.multicrop) {
    throw new Error('❌ Multicrop tool path not configured in ~/.config/mmp/config.json');
  }
  
  // ENFORCE: Never allow hardcoded old tool paths
  if (cfg.tools.multicrop.includes('/photos/tools/multicrop-tool/')) {
    console.error('🚫 ERROR: MPP is trying to use old fragmented tool path!');
    console.error('🚫 This defeats the purpose of MPP unification.');
    console.error('🚫 Configure MPP to use bundled tools or proper wrapper.');
    throw new Error('MPP configuration points to fragmented tool - this is not allowed');
  }
  
  return cfg.tools.multicrop;
}

/**
 * ARCHITECTURE ENFORCEMENT:
 * This function exists to catch and prevent hardcoded tool paths.
 * If you're reading this because you got an error, you need to:
 * 
 * 1. Configure tool paths in ~/.config/mmp/config.json
 * 2. Use wrapper pattern - MPP calls configured tools
 * 3. NEVER hardcode paths like '/photos/tools/old-tool'
 */
export function validateToolConfiguration() {
  try {
    const cfg = getConfig();
    
    // Check for forbidden hardcoded paths
    const forbiddenPaths = [
      '/photos/tools/multicrop-tool/',
      '/photos/tools/manual-photo-tools/',
      '/photos/tools/scan.sh'
    ];
    
    for (const [toolName, toolPath] of Object.entries(cfg.tools)) {
      if (typeof toolPath === 'string') {
        for (const forbidden of forbiddenPaths) {
          if (toolPath.includes(forbidden)) {
            throw new Error(`🚫 Tool "${toolName}" points to fragmented path: ${toolPath}`);
          }
        }
      }
    }
    
    return true;
  } catch (error) {
    console.error('❌ Tool configuration validation failed:', error);
    return false;
  }
}