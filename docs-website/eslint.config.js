import eslint from '@eslint/js';
import tseslint from '@typescript-eslint/eslint-plugin';
import tsParser from '@typescript-eslint/parser';

export default [
  eslint.configs.recommended,
  {
    files: ['**/*.ts', '**/*.tsx'],
    languageOptions: {
      parser: tsParser,
      parserOptions: {
        ecmaVersion: 2020,
        sourceType: 'module',
        ecmaFeatures: {
          jsx: true,
        },
      },
    },
    plugins: {
      '@typescript-eslint': tseslint,
    },
    rules: {
      // Disable base ESLint rules that are handled by TypeScript
      'no-unused-vars': 'off',
      'no-undef': 'off',
      
      // TypeScript-specific rules
      '@typescript-eslint/no-unused-vars': ['error', { argsIgnorePattern: '^_' }],
      '@typescript-eslint/no-explicit-any': 'warn',
      '@typescript-eslint/explicit-function-return-type': 'off',
      '@typescript-eslint/explicit-module-boundary-types': 'off',
      '@typescript-eslint/no-inferrable-types': 'error',
      '@typescript-eslint/no-var-requires': 'error',
      
      // General code quality rules
      'no-console': 'off', // Documentation site may need console output
      'no-debugger': 'error',
      'no-duplicate-imports': 'error',
      'prefer-const': 'error',
      'no-var': 'error',
      'object-shorthand': 'error',
      'prefer-template': 'error',
      
      // Error handling rules
      'no-throw-literal': 'error',
      
      // Code style rules - allow trailing commas for Docusaurus compatibility
      'comma-dangle': ['error', 'always-multiline'],
      'quotes': ['error', 'single', { avoidEscape: true }],
      'semi': ['error', 'always'],
      'indent': ['error', 2],
      'max-len': ['warn', { code: 120, ignoreComments: true }],
      
      // Security-related rules
      'no-eval': 'error',
      'no-implied-eval': 'error',
      'no-new-func': 'error',
    },
  },
  {
    // React/JSX specific rules for documentation components
    files: ['src/**/*.tsx', 'src/**/*.jsx'],
    rules: {
      // More lenient for React components in documentation
      '@typescript-eslint/no-explicit-any': 'off',
      '@typescript-eslint/no-var-requires': 'off', // Docusaurus uses require() for assets
      'no-console': 'off',
    },
  },
  {
    ignores: [
      'build/**/*',
      '.docusaurus/**/*',
      'node_modules/**/*',
      '**/*.js.map',
      '**/*.d.ts',
    ],
  },
];