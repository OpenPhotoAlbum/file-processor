# Documentation Website Deployment Guide

## Overview

This guide provides comprehensive instructions for deploying the Media Processing Pipeline documentation website to GitHub Pages. The deployment process has been tested and validated with production-ready configuration.

## Prerequisites

### GitHub Repository Setup

1. **Repository Configuration:**
   - Repository name: `media-processing-pipeline`
   - Organization/User: `stephen`
   - Access: Ensure push permissions to the repository

2. **GitHub Pages Configuration:**
   - Navigate to repository Settings → Pages
   - Source: Deploy from a branch
   - Branch: `gh-pages` (will be created automatically)
   - Folder: `/ (root)`

### Local Environment Requirements

- **Node.js:** Version 18.0 or higher
- **Git:** Configured with GitHub credentials
- **npm:** Version 8.0 or higher
- **Repository access:** Push permissions to the target repository

## Deployment Process

### Method 1: Automatic Deployment (Recommended)

The documentation website includes a built-in deployment script that handles the entire process:

```bash
# Navigate to documentation directory
cd docs-website

# Install dependencies (if not already done)
npm install

# Build and deploy in one command
npm run deploy
```

**What this command does:**
1. Runs `docusaurus build` to generate static files
2. Creates or updates the `gh-pages` branch
3. Copies built files to the `gh-pages` branch
4. Pushes the `gh-pages` branch to GitHub
5. GitHub Pages automatically serves the updated content

### Method 2: Manual Deployment

For more control over the deployment process:

```bash
# Navigate to documentation directory
cd docs-website

# Install dependencies
npm install

# Run quality checks
npm run typecheck
npm run lint

# Build the site
npm run build

# Deploy to GitHub Pages
npm run deploy
```

### Method 3: Staged Deployment

For production deployments with verification:

```bash
# Build and verify locally
npm run build
npm run serve

# Test at http://localhost:3000
# Verify all pages load correctly
# Check search functionality
# Validate navigation

# Deploy after verification
npm run deploy
```

## Configuration Details

### Repository Settings

The deployment is configured in `docusaurus.config.ts`:

```typescript
// Production URL configuration
url: 'https://stephen.github.io',
baseUrl: '/media-processing-pipeline/',

// GitHub Pages deployment config
organizationName: 'stephen',
projectName: 'media-processing-pipeline',
deploymentBranch: 'gh-pages',
trailingSlash: false,
```

### Environment Variables

Optional environment variables for deployment:

- **`GIT_USER`** - Override Git username for deployment
- **`USE_SSH`** - Use SSH instead of HTTPS for Git operations
- **`DEPLOYMENT_BRANCH`** - Override default `gh-pages` branch

**Examples:**

```bash
# Deploy with specific Git user
GIT_USER=stephen npm run deploy

# Deploy using SSH
USE_SSH=true npm run deploy

# Deploy to custom branch
DEPLOYMENT_BRANCH=docs npm run deploy
```

## Post-Deployment Verification

### Automatic Checks

After deployment, verify the following:

1. **GitHub Pages Status:**
   - Go to repository Settings → Pages
   - Verify "Your site is published at..." message
   - Check for any deployment errors

2. **Website Accessibility:**
   - Visit: `https://stephen.github.io/media-processing-pipeline/`
   - Verify homepage loads correctly
   - Test navigation between sections

3. **Content Verification:**
   - Check all documentation categories load
   - Verify search functionality works
   - Test responsive design on mobile devices

### Manual Testing Checklist

- [ ] Homepage displays project information correctly
- [ ] All navigation menu items work
- [ ] Documentation search returns relevant results
- [ ] Blog posts (if any) are accessible
- [ ] Footer links are functional
- [ ] Mobile responsive design works
- [ ] Page load times are reasonable (< 3 seconds)
- [ ] No broken links or 404 errors

## Troubleshooting

### Common Deployment Issues

#### 1. Authentication Errors

**Problem:** Git authentication fails during deployment

**Solutions:**
```bash
# Configure Git credentials
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Use personal access token for HTTPS
# Or configure SSH key for repository access
```

#### 2. Build Failures

**Problem:** Build fails before deployment

**Solutions:**
```bash
# Check for TypeScript errors
npm run typecheck

# Fix linting issues
npm run lint:fix

# Clear cache and rebuild
npm run clear
npm run build
```

#### 3. GitHub Pages Not Updating

**Problem:** Site deployed but changes not visible

**Solutions:**
1. **Check deployment status** in GitHub repository Actions tab
2. **Force refresh** browser cache (Ctrl+F5 or Cmd+Shift+R)
3. **Wait for propagation** (can take 5-10 minutes)
4. **Verify branch** - ensure `gh-pages` branch has new commits

#### 4. 404 Errors on GitHub Pages

**Problem:** Site shows 404 error or pages not found

**Solutions:**
1. **Check baseUrl configuration** in `docusaurus.config.ts`
2. **Verify repository name** matches `projectName` setting
3. **Ensure GitHub Pages is enabled** for the repository

### Debug Commands

```bash
# Check build output
npm run build -- --verbose

# Test local deployment
npm run serve

# Check Docusaurus configuration
npx docusaurus --version

# Validate GitHub Pages setup
git ls-remote --heads origin gh-pages
```

## Advanced Configuration

### Custom Domain Setup

To deploy to a custom domain:

1. **Add CNAME file:**
   ```bash
   echo "docs.yourproject.com" > static/CNAME
   ```

2. **Update configuration:**
   ```typescript
   // In docusaurus.config.ts
   url: 'https://docs.yourproject.com',
   baseUrl: '/',
   ```

3. **Configure DNS:**
   - Add CNAME record pointing to `stephen.github.io`
   - Update GitHub Pages settings to use custom domain

### Automated Deployment

For CI/CD integration, create GitHub Actions workflow:

```yaml
# .github/workflows/deploy-docs.yml
name: Deploy Documentation

on:
  push:
    branches: [main]
    paths: ['docs-website/**']

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: 18
      - name: Install and Deploy
        run: |
          cd docs-website
          npm install
          npm run deploy
        env:
          GIT_USER: git
```

## Maintenance and Updates

### Regular Deployment Tasks

1. **Content Updates:**
   - Edit documentation in `docs/` directory
   - Test changes locally with `npm start`
   - Deploy with `npm run deploy`

2. **Dependency Updates:**
   ```bash
   npm update
   npm audit fix
   npm run deploy
   ```

3. **Configuration Changes:**
   - Modify `docusaurus.config.ts` as needed
   - Update `sidebars.ts` for navigation changes
   - Test locally, then deploy

### Backup Strategy

Before major changes:

1. **Create backup branch:**
   ```bash
   git checkout gh-pages
   git checkout -b gh-pages-backup-$(date +%Y%m%d)
   git push origin gh-pages-backup-$(date +%Y%m%d)
   ```

2. **Export build artifacts:**
   ```bash
   npm run build
   tar -czf docs-backup-$(date +%Y%m%d).tar.gz build/
   ```

## Performance Optimization

### Build Optimization

- **Static generation:** All pages pre-rendered for fast loading
- **Code splitting:** Automatic JavaScript optimization
- **Image optimization:** Compress images before adding to `static/`
- **CDN benefits:** GitHub Pages provides global CDN distribution

### Monitoring

Track deployment performance:

- **Build time:** Should complete in under 2 minutes
- **Site size:** Monitor total build directory size
- **Load times:** Test page speeds after deployment
- **Search indexing:** Ensure search remains functional

## Security Considerations

### Safe Deployment Practices

1. **Review content** before deployment for sensitive information
2. **Use environment variables** for any API keys or tokens
3. **Validate external links** to prevent malicious redirects
4. **Regular updates** of Docusaurus and dependencies
5. **Monitor access logs** through GitHub repository insights

This deployment guide ensures reliable, secure, and maintainable documentation website publishing for the Media Processing Pipeline project.