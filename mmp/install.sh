#!/bin/bash

# MMP Installation Script
# Installs MMP (Media Processing Pipeline) globally following multicrop-tool pattern

set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_BIN="$HOME/.local/bin"
INSTALL_SHARE="$HOME/.local/share/mmp"
CONFIG_DIR="$HOME/.config/mmp"

echo -e "${GREEN}📦 MMP Installation Script${NC}"
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

# Create directories
echo "Creating installation directories..."
mkdir -p "$INSTALL_BIN"
mkdir -p "$INSTALL_SHARE"
mkdir -p "$CONFIG_DIR"

# Build the project
echo "Building MMP..."
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
# Copy ALL node_modules for runtime dependencies
if [ -d "node_modules" ]; then
  echo "Copying runtime dependencies..."
  cp -r node_modules "$INSTALL_SHARE/"
fi
if [ -d "assets" ]; then
  cp -r assets/* "$INSTALL_SHARE/" 2>/dev/null || true
  echo "✅ Bundled reference background images"
fi
if [ -d "scripts" ]; then
  cp -r scripts "$INSTALL_SHARE/" 2>/dev/null || true
  echo "✅ Bundled shell scripts"
fi
if [ -f "src/.env" ]; then
  cp src/.env "$INSTALL_SHARE/" 2>/dev/null || true
  echo "✅ Bundled environment configuration"
fi

# Create executable
cat > "$INSTALL_BIN/mmp" << 'EOF'
#!/bin/bash
exec node "$HOME/.local/share/mmp/cli.js" "$@"
EOF

chmod +x "$INSTALL_BIN/mmp"

# Create default configuration
if [ ! -f "$CONFIG_DIR/config.json" ]; then
    echo "Creating default configuration..."
    cat > "$CONFIG_DIR/config.json" << 'EOF'
{
  "database": {
    "host": "localhost", 
    "port": 3309,
    "user": "kin",
    "database": "kin"
  },
  "directories": {
    "staging": "/photos/staging",
    "archive": "/photos/archive"
  },
  "shortcuts": {
    "locations": {
      "cottage": "42.7070,-71.1631",
      "didi-house": "30.2672,-97.7431",
      "lawrence": "42.7067,-71.1631",
      "haverhill": "42.7762,-71.0773"
    },
    "backgrounds": {
      "red": "~/.local/share/mmp/backgrounds/red.jpg",
      "white": "~/.local/share/mmp/backgrounds/white.jpg"
    }
  },
  "scanning": {
    "default_device": "airscan:e0:HP",
    "default_resolution": 300,
    "default_format": "jpeg"
  },
  "ai": {
    "enabled": true,
    "provider": "claude"
  }
}
EOF
fi

echo ""
echo -e "${GREEN}✅ Installation complete!${NC}"
echo ""
echo "MMP has been installed to:"
echo "  Binary: $INSTALL_BIN/mmp"
echo "  Assets: $INSTALL_SHARE"
echo "  Config: $CONFIG_DIR/config.json"
echo ""

# Check if ~/.local/bin is in PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo -e "${YELLOW}⚠️  Warning: $HOME/.local/bin is not in your PATH${NC}"
    echo ""
    echo "To use MMP from anywhere, add this to your ~/.bashrc or ~/.zshrc:"
    echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
    echo ""
    echo "Then restart your terminal or run:"
    echo "  source ~/.bashrc"
    echo ""
else
    echo -e "${GREEN}✅ PATH is configured correctly${NC}"
    echo ""
fi

echo "Quick start:"
echo "  mmp --help                    # Show all commands"
echo "  mmp capture --help            # Scanning operations"
echo "  mmp understand document.jpg   # Text extraction"
echo "  mmp locate /photos/ --set cottage  # GPS operations"
echo ""
echo -e "${GREEN}🎉 MMP is ready to use!${NC}"