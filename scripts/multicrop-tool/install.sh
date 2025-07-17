#!/bin/bash

# install.sh - Install multicrop-tool to user's local bin directory
#
# This script installs:
# - multicrop script as 'multicrop' command in ~/.local/bin/
# - scan script as 'multicrop-scan' command in ~/.local/bin/
# - set-photo-dates script as 'multicrop-set-dates' command in ~/.local/bin/
# - multicrop-ref to ~/.local/share/multicrop/
# - backgrounds directory to ~/.local/share/multicrop/backgrounds/

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Installation directories
LOCAL_BIN="$HOME/.local/bin"
LOCAL_SHARE="$HOME/.local/share/multicrop"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "📦 Installing multicrop-tool..."
echo "   Source: $SCRIPT_DIR"
echo "   Target: $LOCAL_SHARE"
echo "   Commands: $LOCAL_BIN/multicrop, $LOCAL_BIN/multicrop-scan, $LOCAL_BIN/multicrop-set-dates"
echo ""

# Function to print colored output
print_status() {
    echo -e "${GREEN}✓${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

# Check dependencies
echo "🔍 Checking dependencies..."

# Check if ImageMagick is installed
if ! command -v convert >/dev/null 2>&1; then
    print_error "ImageMagick (convert command) is not installed"
    echo "   Please install ImageMagick first:"
    echo "   Ubuntu/Debian: sudo apt install imagemagick"
    echo "   macOS: brew install imagemagick"
    exit 1
fi
print_status "ImageMagick found"

# Check source files exist
if [ ! -f "$SCRIPT_DIR/multicrop" ]; then
    print_error "multicrop script not found in $SCRIPT_DIR"
    exit 1
fi
print_status "multicrop script found"

if [ ! -f "$SCRIPT_DIR/scan" ]; then
    print_error "scan script not found in $SCRIPT_DIR"
    exit 1
fi
print_status "scan script found"

if [ ! -f "$SCRIPT_DIR/set-photo-dates" ]; then
    print_error "set-photo-dates script not found in $SCRIPT_DIR"
    exit 1
fi
print_status "set-photo-dates script found"

if [ ! -f "$SCRIPT_DIR/multicrop-ref" ]; then
    print_error "multicrop-ref script not found in $SCRIPT_DIR"
    exit 1
fi
print_status "multicrop-ref script found"

if [ ! -d "$SCRIPT_DIR/backgrounds" ]; then
    print_error "backgrounds directory not found in $SCRIPT_DIR"
    exit 1
fi
print_status "backgrounds directory found"

# Create installation directories
echo ""
echo "📁 Creating installation directories..."

mkdir -p "$LOCAL_BIN"
print_status "Created $LOCAL_BIN"

mkdir -p "$LOCAL_SHARE"
print_status "Created $LOCAL_SHARE"

# Copy files
echo ""
echo "📋 Installing files..."

# Copy multicrop-ref
cp "$SCRIPT_DIR/multicrop-ref" "$LOCAL_SHARE/multicrop-ref"
chmod +x "$LOCAL_SHARE/multicrop-ref"
print_status "Installed multicrop-ref"

# Copy backgrounds directory
cp -r "$SCRIPT_DIR/backgrounds" "$LOCAL_SHARE/backgrounds"
print_status "Installed backgrounds directory"

# Create main multicrop command by modifying multicrop script
echo ""
echo "🔧 Creating commands..."

# Create multicrop command with updated paths
sed "s|MULTICROP_REF=\"\$SCRIPT_DIR/multicrop-ref\"|MULTICROP_REF=\"$LOCAL_SHARE/multicrop-ref\"|" "$SCRIPT_DIR/multicrop" | \
sed "s|BACKGROUNDS_DIR=\"\$SCRIPT_DIR/backgrounds\"|BACKGROUNDS_DIR=\"$LOCAL_SHARE/backgrounds\"|" > "$LOCAL_BIN/multicrop"
chmod +x "$LOCAL_BIN/multicrop"
print_status "Installed multicrop command"

# Create multicrop-scan command with updated paths
sed "s|PROCESS_TOOL=\"\$SCRIPT_DIR/multicrop\"|PROCESS_TOOL=\"$LOCAL_BIN/multicrop\"|" "$SCRIPT_DIR/scan" | \
sed "s|DATE_TOOL=\"\$SCRIPT_DIR/set-photo-dates\"|DATE_TOOL=\"$LOCAL_BIN/multicrop-set-dates\"|" > "$LOCAL_BIN/multicrop-scan"
chmod +x "$LOCAL_BIN/multicrop-scan"
print_status "Installed multicrop-scan command"

# Create multicrop-set-dates command
cp "$SCRIPT_DIR/set-photo-dates" "$LOCAL_BIN/multicrop-set-dates"
chmod +x "$LOCAL_BIN/multicrop-set-dates"
print_status "Installed multicrop-set-dates command"

# Check if ~/.local/bin is in PATH
echo ""
echo "🛣️  Checking PATH..."

if echo ":$PATH:" | grep -q ":$LOCAL_BIN:"; then
    print_status "~/.local/bin is already in PATH"
else
    print_warning "~/.local/bin is not in PATH"
    echo "   Add this line to your ~/.bashrc or ~/.zshrc:"
    echo "   export PATH=\"\$HOME/.local/bin:\$PATH\""
    echo ""
    echo "   Then run: source ~/.bashrc  (or restart your terminal)"
fi

# Test installation
echo ""
echo "🧪 Testing installation..."

if [ -x "$LOCAL_BIN/multicrop" ]; then
    print_status "multicrop command is executable"
    
    # Test help command
    if "$LOCAL_BIN/multicrop" -h &> /dev/null; then
        print_status "multicrop help command works"
    else
        print_warning "multicrop help command failed"
    fi
else
    print_error "multicrop command is not executable"
    exit 1
fi

if [ -x "$LOCAL_BIN/multicrop-scan" ]; then
    print_status "multicrop-scan command is executable"
    
    # Test help command
    if "$LOCAL_BIN/multicrop-scan" -h &> /dev/null; then
        print_status "multicrop-scan help command works"
    else
        print_warning "multicrop-scan help command failed"
    fi
else
    print_error "multicrop-scan command is not executable"
    exit 1
fi

if [ -x "$LOCAL_BIN/multicrop-set-dates" ]; then
    print_status "multicrop-set-dates command is executable"
    
    # Test help command
    if "$LOCAL_BIN/multicrop-set-dates" -h &> /dev/null; then
        print_status "multicrop-set-dates help command works"
    else
        print_warning "multicrop-set-dates help command failed"
    fi
else
    print_error "multicrop-set-dates command is not executable"
    exit 1
fi

# Success message
echo ""
echo -e "${GREEN}🎉 Installation complete!${NC}"
echo ""
echo "Usage:"
echo "   multicrop -src input.jpg -dest output/"
echo "   multicrop -src input_dir/ -dest output/ -M"
echo "   multicrop-scan -dest output/ -r red -name \"description\""
echo "   multicrop-scan -dest output/ -r red -date \"1985-12-25\" -name \"old photos\""
echo "   multicrop-set-dates -date \"1997\" photo1.jpg photo2.jpg"
echo "   multicrop -h              # for help"
echo "   multicrop-scan -h         # for scan help"
echo "   multicrop-set-dates -h    # for date setting help"
echo ""

if ! echo ":$PATH:" | grep -q ":$LOCAL_BIN:"; then
    echo -e "${YELLOW}Note: Don't forget to add ~/.local/bin to your PATH!${NC}"
fi