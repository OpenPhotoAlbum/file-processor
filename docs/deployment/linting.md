# Linting and Code Quality

The Media Processing Pipeline uses ESLint with TypeScript support to maintain consistent code quality and catch potential issues early in development.

## Setup

ESLint is configured with:
- **@typescript-eslint/parser**: TypeScript parsing support
- **@typescript-eslint/eslint-plugin**: TypeScript-specific rules
- **eslint-plugin-import**: Import/export validation
- **eslint-plugin-node**: Node.js best practices
- **eslint-plugin-promise**: Promise handling rules

## Configuration

The project uses the new flat config format in `eslint.config.js`:

```javascript
// eslint.config.js
import eslint from '@eslint/js';
import tseslint from '@typescript-eslint/eslint-plugin';
import tsParser from '@typescript-eslint/parser';

export default [
  eslint.configs.recommended,
  {
    files: ['**/*.ts', '**/*.tsx'],
    languageOptions: {
      parser: tsParser,
      // ... parser options
    },
    plugins: {
      '@typescript-eslint': tseslint,
    },
    rules: {
      // ... custom rules
    },
  }
];
```

## Available Scripts

| Script | Description | Usage |
|--------|-------------|--------|
| `npm run lint` | Run ESLint on all TypeScript files | Development checking |
| `npm run lint:fix` | Auto-fix all fixable ESLint issues | Quick cleanup |
| `npm run lint:check` | Run ESLint with zero warnings allowed | CI/CD pipeline |
| `npm run typecheck` | Run TypeScript compiler without emitting | Type checking only |
| `npm run build` | Full build with linting and type checking | Production builds |
| `npm run build:fast` | TypeScript compilation only | Development builds |

## Rule Categories

### TypeScript Rules
- **no-unused-vars**: Prevents unused variables (with `_` prefix exception)
- **no-explicit-any**: Warns about `any` usage (warnings only)
- **no-inferrable-types**: Prevents redundant type annotations
- **no-var-requires**: Enforces ES6 imports over CommonJS

### Code Quality Rules
- **prefer-const**: Enforces `const` for variables that aren't reassigned
- **no-var**: Prevents `var` usage in favor of `let`/`const`
- **object-shorthand**: Enforces object shorthand properties
- **prefer-template**: Encourages template literals over string concatenation

### Code Style Rules
- **quotes**: Enforces single quotes with escape allowance
- **semi**: Requires semicolons
- **indent**: 2-space indentation
- **max-len**: 120 character line limit (warnings only)
- **comma-dangle**: No trailing commas

### Security Rules
- **no-eval**: Prevents `eval()` usage
- **no-implied-eval**: Prevents implicit eval
- **no-new-func**: Prevents `Function` constructor

### Error Handling Rules
- **no-throw-literal**: Requires proper Error objects for throwing
- **no-async-promise-executor**: Prevents async Promise executors
- **no-await-in-loop**: Warns about await in loops (performance)

## File-Specific Overrides

### Test Files (`**/*.test.ts`, `**/*.spec.ts`)
- `@typescript-eslint/no-explicit-any`: Disabled
- `no-console`: Disabled

### Main Entry Points (`src/main.ts`, `scripts/**/*.ts`)
- `no-console`: Disabled (console output expected)
- `@typescript-eslint/no-explicit-any`: Disabled

## IDE Integration

### VS Code Setup
The project includes VS Code configuration for automatic ESLint integration:

```json
// .vscode/settings.json
{
  "eslint.enable": true,
  "eslint.format.enable": true,
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": "explicit"
  },
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "dbaeumer.vscode-eslint"
}
```

### Recommended Extensions
- `dbaeumer.vscode-eslint`: ESLint integration
- `ms-vscode.vscode-typescript-next`: Enhanced TypeScript support

## Build Integration

The build process includes linting as a quality gate:

```bash
# Full build with all checks
npm run build
# → lint:check → typecheck → tsc

# Fast development build (skip linting)
npm run build:fast
# → tsc only
```

## Ignoring Files

Files are ignored through the `ignores` property in `eslint.config.js`:

```javascript
{
  ignores: [
    'dist/**/*',        // Compiled output
    'node_modules/**/*', // Dependencies
    'scratch/**/*',     // Development workspace
    '**/*.js.map',      // Source maps
    '**/*.d.ts',        // Type definitions
    'coverage/**/*',    // Test coverage
  ],
}
```

## Current Warnings

The project currently allows up to 15 warnings (configurable in `package.json`):
- `@typescript-eslint/no-explicit-any`: 9 warnings for `any` types in processors and types
- `max-len`: 1 warning for long line in pre-processor
- `no-await-in-loop`: 2 warnings for await in loops (intentional for sequential processing)

## Best Practices

### Fixing `any` Types
Instead of `any`, prefer:
```typescript
// ❌ Avoid
function process(data: any): any

// ✅ Better
function process(data: unknown): ProcessResult
function process<T>(data: T): ProcessedData<T>
```

### Handling Unused Parameters
Use `_` prefix for intentionally unused parameters:
```typescript
// ❌ ESLint error
function handler(file: MediaFile, metadata: any) {
  return processFile(file);
}

// ✅ ESLint compliant
function handler(file: MediaFile, _metadata: any) {
  return processFile(file);
}
```

### Import Organization
ESLint enforces import order:
```typescript
// 1. Node.js built-ins
import { stat } from 'fs/promises';

// 2. External packages
import { config } from 'dotenv';

// 3. Internal modules
import { Logger } from '../utils/logging/index.js';
import { createSystemErrorFactory } from '../utils/errors/factories.js';
```

## CI/CD Integration

For continuous integration, use the strict linting command:
```bash
npm run lint:check  # Fails on any warnings
npm run typecheck   # Fails on type errors
npm run build       # Full build with all checks
```

## Future Improvements

- **Prettier Integration**: Add Prettier for consistent formatting
- **Import Sorting**: Automated import organization
- **Custom Rules**: Project-specific ESLint rules
- **Performance Rules**: Rules for async/await optimization
- **Security Scanning**: Additional security-focused rules