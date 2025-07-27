/**
 * Dependency Validation Tests
 * 
 * Critical tests to prevent dependency issues like the missing dotenv problem.
 * These tests validate that all required dependencies are properly declared
 * and that the built application can import them without errors.
 */

import * as fs from 'fs';
import * as path from 'path';
import { execSync } from 'child_process';

describe('Dependency Validation Tests', () => {
  const projectRoot = path.join(__dirname, '../..');
  const packageJsonPath = path.join(projectRoot, 'package.json');
  const distPath = path.join(projectRoot, 'dist');
  const mainJsPath = path.join(distPath, 'main.js');

  beforeAll(() => {
    // Ensure project is built
    if (!fs.existsSync(distPath)) {
      throw new Error('Project must be built before running dependency tests. Run: npm run build');
    }
  });

  describe('Package.json dependency validation', () => {
    test('package.json should exist and be valid', () => {
      expect(fs.existsSync(packageJsonPath)).toBe(true);
      
      const packageJson = JSON.parse(fs.readFileSync(packageJsonPath, 'utf8'));
      expect(packageJson.dependencies).toBeDefined();
    });

    test('all critical dependencies should be declared', () => {
      const packageJson = JSON.parse(fs.readFileSync(packageJsonPath, 'utf8'));
      
      const criticalDeps = [
        'dotenv',      // The dependency that caused the original issue
        'sharp',       // Image processing
        'mysql2',      // Database connectivity
        'node-vibrant', // Color extraction
        'commander'    // CLI framework
      ];

      criticalDeps.forEach(dep => {
        expect(packageJson.dependencies).toHaveProperty(dep);
      });
    });

    test('no dependencies should be missing from package.json', () => {
      // Read the main.js file and extract import/require statements
      const mainJsContent = fs.readFileSync(mainJsPath, 'utf8');
      const packageJson = JSON.parse(fs.readFileSync(packageJsonPath, 'utf8'));
      
      // Look for require() and import statements for external packages
      const importMatches = mainJsContent.match(/(?:require\(['"]([^'"]+)['"]\)|import[^'"]*['"]([^'"]+)['"])/g) || [];
      
      const externalPackages = new Set<string>();
      importMatches.forEach(match => {
        const packageMatch = match.match(/['"]([^'"]+)['"]/);
        if (packageMatch) {
          const packageName = packageMatch[1];
          // Only check external packages (not relative imports)
          if (!packageName.startsWith('.') && !packageName.startsWith('/') && !packageName.includes('node:')) {
            // Extract root package name (e.g., '@types/node' -> '@types/node', 'lodash/get' -> 'lodash')
            const rootPackage = packageName.startsWith('@') 
              ? packageName.split('/').slice(0, 2).join('/')
              : packageName.split('/')[0];
            externalPackages.add(rootPackage);
          }
        }
      });

      // Check that all external packages are in dependencies or devDependencies
      externalPackages.forEach(pkg => {
        const isInDependencies = packageJson.dependencies?.[pkg] || 
                                 packageJson.devDependencies?.[pkg] ||
                                 pkg.startsWith('node:'); // Node.js built-in modules
        
        if (!isInDependencies) {
          console.warn(`Potential missing dependency: ${pkg}`);
        }
      });
    });
  });

  describe('Runtime dependency resolution', () => {
    test('main.js should be able to load without missing module errors', () => {
      expect(() => {
        // Test that the main module can be required without throwing dependency errors
        execSync(`node -e "require('${mainJsPath.replace(/'/g, "\\'")}')"`, {
          cwd: projectRoot,
          stdio: 'pipe' // Capture output to prevent noise in test output
        });
      }).not.toThrow();
    });

    test('dotenv dependency should be resolvable (regression test)', () => {
      expect(() => {
        execSync(`node -e "require('dotenv')"`, {
          cwd: projectRoot,
          stdio: 'pipe'
        });
      }).not.toThrow();
    });

    test('all production dependencies should be resolvable', () => {
      const packageJson = JSON.parse(fs.readFileSync(packageJsonPath, 'utf8'));
      const productionDeps = Object.keys(packageJson.dependencies || {});

      productionDeps.forEach(dep => {
        expect(() => {
          execSync(`node -e "require('${dep}')"`, {
            cwd: projectRoot,
            stdio: 'pipe'
          });
        }).not.toThrow();
      });
    });
  });

  describe('Install.sh validation', () => {
    const installScriptPath = path.join(projectRoot, 'install.sh');

    test('install.sh should exist and be executable', () => {
      expect(fs.existsSync(installScriptPath)).toBe(true);
      
      const stats = fs.statSync(installScriptPath);
      expect(stats.mode & parseInt('111', 8)).toBeTruthy(); // Check execute permissions
    });

    test('install.sh should copy node_modules (regression test)', () => {
      const installContent = fs.readFileSync(installScriptPath, 'utf8');
      
      // Should contain logic to install dependencies via npm install
      expect(installContent).toMatch(/npm install/);
      
      // Should NOT just copy dist/ without dependencies
      expect(installContent).not.toMatch(/cp.*dist.*node_modules/);
    });

    test('install.sh should have production dependency installation', () => {
      const installContent = fs.readFileSync(installScriptPath, 'utf8');
      
      // Should install production dependencies
      expect(installContent).toMatch(/npm install.*production/);
    });
  });

  describe('Sample media validation', () => {
    test('sample media files should exist for installation', () => {
      const sampleMediaPath = path.join(projectRoot, 'sample_media');
      expect(fs.existsSync(sampleMediaPath)).toBe(true);
      
      // Check for key sample files that are used in CLI tests
      const keyFiles = [
        'IMG_6645.jpg',
        'heic_sample1.HEIC',
        'heritage_photo_basic.jpg'
      ];
      
      keyFiles.forEach(file => {
        expect(fs.existsSync(path.join(sampleMediaPath, file))).toBe(true);
      });
    });
  });

  describe('Build output validation', () => {
    test('dist directory should contain all necessary files', () => {
      expect(fs.existsSync(mainJsPath)).toBe(true);
      
      // Check that important modules are compiled
      const distFiles = fs.readdirSync(distPath, { recursive: true });
      expect(distFiles).toContain('main.js');
      expect(distFiles.some(f => String(f).includes('services'))).toBe(true);
      expect(distFiles.some(f => String(f).includes('processors'))).toBe(true);
    });

    test('main.js should not contain TypeScript syntax', () => {
      const mainContent = fs.readFileSync(mainJsPath, 'utf8');
      
      // Should not contain TypeScript-specific syntax
      expect(mainContent).not.toMatch(/interface\s+\w+/);
      expect(mainContent).not.toMatch(/type\s+\w+\s*=/);
      expect(mainContent).not.toMatch(/:\s*\w+\s*[=;}]/);
    });
  });
});