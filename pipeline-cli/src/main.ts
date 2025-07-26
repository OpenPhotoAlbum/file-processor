import { config } from 'dotenv';
import { runCLI } from './cli/index.js';

// Load environment variables
config();

/**
 * Main entry point - now uses CLI interface instead of hardcoded test files
 */
async function main() {
  await runCLI();
}

// Run if called directly
if (import.meta.url === `file://${process.argv[1]}`) {
  main().catch((error) => {
    console.error('💥 Fatal error in main application:', error.message);
    process.exit(1);
  });
}