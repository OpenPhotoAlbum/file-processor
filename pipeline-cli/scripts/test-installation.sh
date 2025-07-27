#!/bin/bash
# Quick Installation Test Script
# Tests that install.sh works and mmp command functions correctly
# Usage: ./scripts/test-installation.sh

set -e  # Exit on any error

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
TEST_DIR="/tmp/mmp-install-test-$$"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

cleanup() {
    if [[ -d "$TEST_DIR" ]]; then
        log_info "Cleaning up test directory: $TEST_DIR"
        rm -rf "$TEST_DIR"
    fi
}

# Set trap to cleanup on exit
trap cleanup EXIT

main() {
    log_info "Starting MMP installation test..."
    
    # Create test environment
    log_info "Creating test environment: $TEST_DIR"
    mkdir -p "$TEST_DIR"
    
    # Set up test environment variables
    export HOME="$TEST_DIR"
    export XDG_DATA_HOME="$TEST_DIR/.local/share"
    export XDG_CONFIG_HOME="$TEST_DIR/.config"
    export PATH="$HOME/.local/bin:$PATH"
    
    # Test 1: Build the project first
    log_info "Building project..."
    cd "$PROJECT_DIR"
    npm run build || {
        log_error "Build failed"
        exit 1
    }
    
    # Test 2: Run installation
    log_info "Running install.sh..."
    bash "$PROJECT_DIR/install.sh" || {
        log_error "Installation failed"
        exit 1
    }
    
    # Test 3: Check installation structure
    log_info "Verifying installation structure..."
    
    # Note: install.sh uses $HOME/.local, which is now $TEST_DIR
    INSTALL_PATH="$HOME/.local/share/mmp"
    BIN_PATH="$HOME/.local/bin/mmp"
    CONFIG_PATH="$HOME/.config/mmp/.env"
    
    if [[ ! -d "$INSTALL_PATH" ]]; then
        log_error "Installation directory not found: $INSTALL_PATH"
        exit 1
    fi
    
    if [[ ! -f "$BIN_PATH" ]]; then
        log_error "Binary not found: $BIN_PATH"
        exit 1
    fi
    
    if [[ ! -x "$BIN_PATH" ]]; then
        log_error "Binary is not executable: $BIN_PATH"
        exit 1
    fi
    
    # Test 4: Check critical dependencies
    log_info "Checking critical dependencies..."
    
    DEPS=("dotenv" "sharp" "mysql2" "node-vibrant")
    for dep in "${DEPS[@]}"; do
        if [[ ! -d "$INSTALL_PATH/node_modules/$dep" ]]; then
            log_error "Missing dependency: $dep"
            exit 1
        fi
    done
    
    # Test 5: Test mmp --help
    log_info "Testing mmp --help command..."
    OUTPUT=$("$BIN_PATH" --help 2>&1) || {
        log_error "mmp --help failed with error code $?"
        log_error "Output: $OUTPUT"
        exit 1
    }
    
    if ! echo "$OUTPUT" | grep -q "Media Processing Pipeline"; then
        log_error "mmp --help output doesn't contain expected text"
        log_error "Output: $OUTPUT"
        exit 1
    fi
    
    # Test 6: Test mmp --version
    log_info "Testing mmp --version command..."
    VERSION_OUTPUT=$("$BIN_PATH" --version 2>&1) || {
        log_error "mmp --version failed"
        exit 1
    }
    
    if ! echo "$VERSION_OUTPUT" | grep -E '^[0-9]+\.[0-9]+\.[0-9]+'; then
        log_error "mmp --version didn't return valid version"
        log_error "Output: $VERSION_OUTPUT"
        exit 1
    fi
    
    # Test 7: Test sample file processing
    log_info "Testing sample file processing..."
    TIMESTAMP_OUTPUT=$("$BIN_PATH" -f "sample:IMG_6645.jpg" --timestamp-only 2>&1) || {
        log_error "Sample file processing failed"
        log_error "Output: $TIMESTAMP_OUTPUT"
        exit 1
    }
    
    if ! echo "$TIMESTAMP_OUTPUT" | grep -E '^[0-9]{4}-[0-9]{2}-[0-9]{2}_[0-9]{2}-[0-9]{2}-[0-9]{2}$'; then
        log_error "Sample file didn't return valid timestamp"
        log_error "Output: $TIMESTAMP_OUTPUT"
        exit 1
    fi
    
    # Test 8: Test dependency import (regression test for dotenv issue)
    log_info "Testing dependency imports (regression test)..."
    cd "$INSTALL_PATH"
    node -e "require('dotenv')" 2>&1 || {
        log_error "Failed to import dotenv dependency"
        exit 1
    }
    
    # All tests passed
    log_info "✅ All installation tests passed!"
    log_info "Installation verified at: $INSTALL_PATH"
    log_info "Binary verified at: $BIN_PATH"
    log_info "Sample processing working correctly"
    
    return 0
}

# Run main function
main "$@"