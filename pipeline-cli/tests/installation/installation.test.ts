/**
 * Installation Validation Tests
 * 
 * These tests validate the install.sh script and ensure the MMP command
 * works correctly after installation. This prevents dependency issues
 * like the missing dotenv problem from reaching production.
 */

import { execSync, spawn } from 'child_process';
import * as fs from 'fs';
import * as path from 'path';
import * as os from 'os';

describe('MMP Installation Tests', () => {
  let tempInstallDir: string = '';
  let tempBinDir: string = '';
  let tempConfigDir: string = '';
  const originalPath = process.env.PATH;

  beforeAll(() => {
    // Create temporary installation directories
    tempInstallDir = fs.mkdtempSync(path.join(os.tmpdir(), 'mmp-install-test-'));
    tempBinDir = path.join(tempInstallDir, 'bin');
    tempConfigDir = path.join(tempInstallDir, 'config');
    
    fs.mkdirSync(tempBinDir, { recursive: true });
    fs.mkdirSync(tempConfigDir, { recursive: true });
    
    // Add temp bin to PATH for testing
    process.env.PATH = `${tempBinDir}:${originalPath}`;
    
    console.log(`Test installation directory: ${tempInstallDir}`);
  });

  afterAll(() => {
    // Restore original PATH
    process.env.PATH = originalPath;
    
    // Clean up temp directory
    try {
      fs.rmSync(tempInstallDir, { recursive: true, force: true });
    } catch (error) {
      console.warn(`Failed to clean up test directory: ${error}`);
    }
  });

  describe('install.sh script validation', () => {
    test('install.sh should exist and be executable', () => {
      const installScript = path.join(__dirname, '../../install.sh');
      expect(fs.existsSync(installScript)).toBe(true);
      
      const stats = fs.statSync(installScript);
      expect(stats.mode & parseInt('111', 8)).toBeTruthy(); // Check execute permissions
    });

    test('install.sh should run without errors in test environment', () => {
      const installScript = path.join(__dirname, '../../install.sh');
      
      // Set environment variables for test installation
      const env = {
        ...process.env,
        HOME: tempInstallDir,
        XDG_DATA_HOME: path.join(tempInstallDir, '.local/share'),
        XDG_CONFIG_HOME: tempConfigDir
      };

      expect(() => {
        execSync(`bash "${installScript}"`, { 
          env,
          cwd: path.dirname(installScript),
          stdio: 'pipe' // Capture output instead of showing it
        });
      }).not.toThrow();
    });
  });

  describe('Installation directory structure', () => {
    const installPath = path.join(tempInstallDir, '.local/share/mmp');
    const binPath = path.join(tempInstallDir, '.local/bin/mmp');
    const configPath = path.join(tempConfigDir, 'mmp/.env');

    beforeAll(() => {
      // Run installation for structure tests
      const installScript = path.join(__dirname, '../../install.sh');
      const env = {
        ...process.env,
        HOME: tempInstallDir,
        XDG_DATA_HOME: path.join(tempInstallDir, '.local/share'),
        XDG_CONFIG_HOME: tempConfigDir
      };

      execSync(`bash "${installScript}"`, { 
        env,
        cwd: path.dirname(installScript),
        stdio: 'pipe'
      });
    });

    test('should create application directory with correct structure', () => {
      expect(fs.existsSync(installPath)).toBe(true);
      expect(fs.existsSync(path.join(installPath, 'main.js'))).toBe(true);
      expect(fs.existsSync(path.join(installPath, 'package.json'))).toBe(true);
      expect(fs.existsSync(path.join(installPath, 'node_modules'))).toBe(true);
    });

    test('should create executable binary wrapper', () => {
      expect(fs.existsSync(binPath)).toBe(true);
      
      const stats = fs.statSync(binPath);
      expect(stats.mode & parseInt('111', 8)).toBeTruthy(); // Check execute permissions
    });

    test('should create configuration directory', () => {
      expect(fs.existsSync(configPath)).toBe(true);
    });

    test('should install all required dependencies', () => {
      const nodeModulesPath = path.join(installPath, 'node_modules');
      
      // Check for critical dependencies that caused the original issue
      expect(fs.existsSync(path.join(nodeModulesPath, 'dotenv'))).toBe(true);
      expect(fs.existsSync(path.join(nodeModulesPath, 'sharp'))).toBe(true);
      expect(fs.existsSync(path.join(nodeModulesPath, 'mysql2'))).toBe(true);
      expect(fs.existsSync(path.join(nodeModulesPath, 'node-vibrant'))).toBe(true);
    });

    test('should install sample media files', () => {
      const sampleMediaPath = path.join(installPath, 'sample_media');
      expect(fs.existsSync(sampleMediaPath)).toBe(true);
      
      // Check for key sample files
      expect(fs.existsSync(path.join(sampleMediaPath, 'IMG_6645.jpg'))).toBe(true);
      expect(fs.existsSync(path.join(sampleMediaPath, 'heic_sample1.HEIC'))).toBe(true);
    });
  });

  describe('Installed binary functionality', () => {
    const binPath = path.join(tempInstallDir, '.local/bin/mmp');

    beforeAll(() => {
      // Ensure installation is complete
      const installScript = path.join(__dirname, '../../install.sh');
      const env = {
        ...process.env,
        HOME: tempInstallDir,
        XDG_DATA_HOME: path.join(tempInstallDir, '.local/share'),
        XDG_CONFIG_HOME: tempConfigDir
      };

      execSync(`bash "${installScript}"`, { 
        env,
        cwd: path.dirname(installScript),
        stdio: 'pipe'
      });
    });

    test('mmp --help should work without dependency errors', () => {
      expect(() => {
        const output = execSync(`"${binPath}" --help`, { 
          encoding: 'utf8',
          stdio: 'pipe'
        });
        expect(output).toContain('Media Processing Pipeline');
        expect(output).toContain('Usage:');
      }).not.toThrow();
    });

    test('mmp --version should return version information', () => {
      const output = execSync(`"${binPath}" --version`, { 
        encoding: 'utf8',
        stdio: 'pipe'
      });
      expect(output.trim()).toMatch(/\d+\.\d+\.\d+/); // Should contain version number
    });

    test('mmp with sample file should process without errors', () => {
      const output = execSync(`"${binPath}" -f "sample:IMG_6645.jpg" --timestamp-only`, { 
        encoding: 'utf8',
        stdio: 'pipe',
        timeout: 30000 // 30 second timeout for processing
      });
      
      // Should return a timestamp format: YYYY-MM-DD_HH-MM-SS
      expect(output.trim()).toMatch(/\d{4}-\d{2}-\d{2}_\d{2}-\d{2}-\d{2}/);
    });

    test('mmp should handle missing files gracefully', () => {
      expect(() => {
        execSync(`"${binPath}" -f "nonexistent.jpg"`, { 
          encoding: 'utf8',
          stdio: 'pipe'
        });
      }).toThrow(); // Should throw but not due to dependency issues
    });
  });

  describe('Dependency validation', () => {
    const installPath = path.join(tempInstallDir, '.local/share/mmp');

    test('package.json should include all production dependencies', () => {
      const packageJsonPath = path.join(installPath, 'package.json');
      const packageJson = JSON.parse(fs.readFileSync(packageJsonPath, 'utf8'));
      
      const requiredDeps = [
        'dotenv',
        'sharp',
        'mysql2',
        'node-vibrant',
        'exiftool-vendored'
      ];

      requiredDeps.forEach(dep => {
        expect(packageJson.dependencies).toHaveProperty(dep);
      });
    });

    test('all package.json dependencies should be installed', () => {
      const packageJsonPath = path.join(installPath, 'package.json');
      const packageJson = JSON.parse(fs.readFileSync(packageJsonPath, 'utf8'));
      const nodeModulesPath = path.join(installPath, 'node_modules');
      
      Object.keys(packageJson.dependencies || {}).forEach(dep => {
        expect(fs.existsSync(path.join(nodeModulesPath, dep))).toBe(true);
      });
    });

    test('main.js should be able to import all dependencies without errors', () => {
      const mainJsPath = path.join(installPath, 'main.js');
      expect(fs.existsSync(mainJsPath)).toBe(true);
      
      // Test that main.js can be required without missing dependency errors
      expect(() => {
        execSync(`node -e "require('${mainJsPath}')"`, { 
          stdio: 'pipe',
          cwd: installPath
        });
      }).not.toThrow();
    });
  });

  describe('Regression tests for known issues', () => {
    test('dotenv dependency should be available (regression for original issue)', () => {
      const installPath = path.join(tempInstallDir, '.local/share/mmp');
      const dotenvPath = path.join(installPath, 'node_modules/dotenv');
      
      expect(fs.existsSync(dotenvPath)).toBe(true);
      expect(fs.existsSync(path.join(dotenvPath, 'package.json'))).toBe(true);
    });

    test('main.js should import dotenv without errors', () => {
      const installPath = path.join(tempInstallDir, '.local/share/mmp');
      
      expect(() => {
        execSync(`node -e "process.chdir('${installPath}'); require('dotenv')"`, { 
          stdio: 'pipe'
        });
      }).not.toThrow();
    });
  });
});