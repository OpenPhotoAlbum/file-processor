#!/bin/bash

# Media Processing Pipeline CLI Installation Script
# Installs MPP CLI globally following multicrop-tool pattern

set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_BIN="$HOME/.local/bin"
INSTALL_SHARE="$HOME/.local/share/mpp"
CONFIG_DIR="$HOME/.config/mpp"

echo -e "${GREEN}📦 Media Processing Pipeline CLI Installation Script${NC}"
echo "Installing Media Processing Pipeline CLI..."
echo ""

# Check for Node.js
if ! command -v node &> /dev/null; then
    echo -e "${RED}❌ Node.js not found${NC}"
    echo "Please install Node.js 18+ and try again"
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node --version | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 18 ]; then
    echo -e "${RED}❌ Node.js version 18+ required${NC}"
    echo "Current version: $(node --version)"
    exit 1
fi

echo -e "${GREEN}✅ Node.js $(node --version) found${NC}"

# Check for ExifTool
if ! command -v exiftool &> /dev/null; then
    echo -e "${YELLOW}⚠️  ExifTool not found${NC}"
    echo "ExifTool is required for metadata extraction."
    echo "Install it with:"
    echo "  Ubuntu/Debian: sudo apt install exiftool"
    echo "  macOS: brew install exiftool"
    echo ""
    read -p "Continue installation anyway? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
else
    echo -e "${GREEN}✅ ExifTool found${NC}"
fi

# Create directories
echo "Creating installation directories..."
mkdir -p "$INSTALL_BIN"
mkdir -p "$INSTALL_SHARE"
mkdir -p "$CONFIG_DIR"

# Build the project
echo "Building Media Processing Pipeline CLI..."
cd "$SCRIPT_DIR"

if [ ! -f "package.json" ]; then
    echo -e "${RED}❌ package.json not found${NC}"
    exit 1
fi

# Install dependencies
echo "Installing dependencies..."
npm install --silent

# Build TypeScript
echo "Compiling TypeScript..."
npm run build --silent

if [ ! -d "dist" ]; then
    echo -e "${RED}❌ Build failed - dist directory not found${NC}"
    exit 1
fi

# Copy built files and assets
echo "Installing files..."
cp -r dist/* "$INSTALL_SHARE/"

# Copy package.json for dependency tracking
cp package.json "$INSTALL_SHARE/"

# Install production dependencies in the installation directory
echo "Installing production dependencies..."
cd "$INSTALL_SHARE"
npm install --production --silent
cd "$SCRIPT_DIR"

# Copy sample media for testing
if [ -d "scratch/sample_media" ]; then
  mkdir -p "$INSTALL_SHARE/sample_media"
  cp -r scratch/sample_media/* "$INSTALL_SHARE/sample_media/" 2>/dev/null || true
  echo "✅ Bundled sample media files"
fi

# Copy test scripts if they exist
if [ -d "scripts" ]; then
  cp -r scripts "$INSTALL_SHARE/" 2>/dev/null || true
  echo "✅ Bundled utility scripts"
fi

# Copy environment template
if [ -f ".env.example" ]; then
  cp .env.example "$INSTALL_SHARE/" 2>/dev/null || true
  echo "✅ Bundled environment template"
fi

# Create executable wrapper
cat > "$INSTALL_BIN/mpp" << 'EOF'
#!/bin/bash

# Set environment from config if it exists
if [ -f "$HOME/.config/mpp/.env" ]; then
    set -a  # automatically export all variables
    source "$HOME/.config/mpp/.env"
    set +a
fi

# Override sample media path for installed version
export SAMPLE_BASE_PATH="$HOME/.local/share/mpp/sample_media"

# Execute the CLI
exec node "$HOME/.local/share/mpp/main.js" "$@"
EOF

chmod +x "$INSTALL_BIN/mpp"

# Create default configuration
if [ ! -f "$CONFIG_DIR/.env" ]; then
    echo "Creating default configuration..."
    cat > "$CONFIG_DIR/.env" << 'EOF'
# Database Configuration
DB_HOST=localhost
DB_PORT=3309
DB_USER=kin
DB_PASSWORD=Dalekini21!
DB_NAME=kin

# Geolocation & Enrichment Providers
GEOLOCATION_ENABLED=true
GNIS_PROVIDER_ENABLED=true
NPS_PROVIDER_ENABLED=true
RECREATION_GOV_PROVIDER_ENABLED=false
LANDMARK_MAX_RADIUS=50000

# Path Configuration (automatically set by installation)
SAMPLE_BASE_PATH=$HOME/.local/share/mpp/sample_media

# Logging Configuration
LOG_LEVEL=INFO
EOF
fi

echo ""
echo -e "${GREEN}✅ Installation complete!${NC}"
echo ""
echo "Media Processing Pipeline CLI has been installed to:"
echo "  Binary: $INSTALL_BIN/mpp"
echo "  Assets: $INSTALL_SHARE"
echo "  Config: $CONFIG_DIR/.env"
echo ""

# Check if ~/.local/bin is in PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo -e "${YELLOW}⚠️  Warning: $HOME/.local/bin is not in your PATH${NC}"
    echo ""
    echo "To use 'mpp' from anywhere, add this to your ~/.bashrc or ~/.zshrc:"
    echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
    echo ""
    echo "Then restart your terminal or run:"
    echo "  source ~/.bashrc"
    echo ""
else
    echo -e "${GREEN}✅ PATH is configured correctly${NC}"
    echo ""
fi

# Database setup reminder
echo -e "${YELLOW}📊 Database Setup Required${NC}"
echo "The CLI requires a MySQL database for full functionality."
echo "See database-setup.md for connection instructions."
echo ""
echo "If you have the main media-processing-pipeline project:"
echo "  cd /path/to/media-processing-pipeline"
echo "  docker compose up -d"
echo ""

echo "Quick start:"
echo "  mpp --help                              # Show all options"
echo "  mpp -f \"photo.jpg\" -o \"metadata.json\"   # Extract metadata"
echo "  mpp -f \"sample:IMG_6645.jpg\" --json      # Process sample file"
echo "  mpp -f \"photo.jpg\" --timestamp-only      # Extract timestamp only"
echo ""
echo -e "${GREEN}🎉 Media Processing Pipeline CLI is ready to use!${NC}"