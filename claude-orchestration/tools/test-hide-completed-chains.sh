#!/bin/bash
# Test for hiding completed chains from default chain-status.sh output

# Test case: Completed chains should NOT show in default output, but should show with --completed flag

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHAINS_DIR="$(dirname "$SCRIPT_DIR")/communication/task-chains"
ACTIVE_DIR="$CHAINS_DIR/active"
TEST_COMPLETED_CHAIN="$ACTIVE_DIR/test-completed-for-hiding.yaml"

# Cleanup function
cleanup() {
    [ -f "$TEST_COMPLETED_CHAIN" ] && rm -f "$TEST_COMPLETED_CHAIN"
}
trap cleanup EXIT

echo "Testing completed chain hiding functionality..."

# Create a test completed chain
cat > "$TEST_COMPLETED_CHAIN" << 'EOF'
id: test-completed-for-hiding
title: Test Completed Chain for Hiding
description: Test chain to verify completed chains are hidden by default
status: completed
created: '2025-07-24 12:00'
updated: '2025-07-24 12:30'
phases:
  - id: test_phase
    phase_name: Test Phase
    assigned_to: claude-2
    description: Test phase that was completed
    status: completed
    started: '2025-07-24 12:00'
    completed: '2025-07-24 12:30'
    completion_evidence: Test phase completed successfully
success_criteria:
  - Completed chain should be hidden from default output
  - Completed chain should show with --completed flag
EOF

echo "Created test completed chain: test-completed-for-hiding"

# Test 1: Default output should NOT show completed chains
OUTPUT_DEFAULT=$("$SCRIPT_DIR/chain-status.sh" 2>&1)

if echo "$OUTPUT_DEFAULT" | grep -q "Test Completed Chain for Hiding"; then
    echo "❌ FAIL: Completed chain shows in default output (should be hidden)"
    echo "Default output:"
    echo "$OUTPUT_DEFAULT"
    TEST_PASSED=false
else
    echo "✅ PASS: Completed chain hidden from default output"
    TEST_PASSED=true
fi

# Test 2: --completed flag should show completed chains
if "$SCRIPT_DIR/chain-status.sh" --help 2>&1 | grep -q "\-\-completed"; then
    OUTPUT_COMPLETED=$("$SCRIPT_DIR/chain-status.sh" --completed 2>&1)
    
    if echo "$OUTPUT_COMPLETED" | grep -q "Test Completed Chain for Hiding"; then
        echo "✅ PASS: Completed chain shows with --completed flag"
    else
        echo "❌ FAIL: Completed chain does not show with --completed flag"
        echo "Output with --completed:"
        echo "$OUTPUT_COMPLETED"
        TEST_PASSED=false
    fi
else
    echo "❌ FAIL: --completed flag not implemented yet"
    TEST_PASSED=false
fi

# Test 3: Active chains should still show in default output
if echo "$OUTPUT_DEFAULT" | grep -q "claude-"; then
    echo "✅ PASS: Active chains still show in default output"
else
    echo "❌ FAIL: Active chains missing from default output"
    TEST_PASSED=false
fi

# Print summary
if [ "$TEST_PASSED" = true ]; then
    echo "✅ All tests passed - hide completed chains works correctly"
    exit 0
else
    echo "❌ Test failed - hide completed chains needs implementation"
    exit 1
fi