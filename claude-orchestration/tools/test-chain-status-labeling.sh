#!/bin/bash
# Test for chain status labeling bug where completed chains show under "unassigned Tasks"

# Test case: Completed chain should show under the assignee who completed it, not "unassigned"

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHAINS_DIR="$(dirname "$SCRIPT_DIR")/communication/task-chains"
ACTIVE_DIR="$CHAINS_DIR/active"
TEST_CHAIN_FILE="$ACTIVE_DIR/test-completed-chain.yaml"

# Cleanup function
cleanup() {
    [ -f "$TEST_CHAIN_FILE" ] && rm -f "$TEST_CHAIN_FILE"
}
trap cleanup EXIT

echo "Testing chain status labeling for completed chains..."

# Create a test completed chain
cat > "$TEST_CHAIN_FILE" << 'EOF'
id: test-completed-chain
title: Test Completed Chain
description: Test chain to verify completed chains show under correct assignee
status: completed
created: '2025-07-24 12:00'
updated: '2025-07-24 12:30'
phases:
  - id: test_phase
    phase_name: Test Phase
    assigned_to: claude-2
    description: Test phase that was completed by Builder
    status: completed
    started: '2025-07-24 12:00'
    completed: '2025-07-24 12:30'
    completion_evidence: Test phase completed successfully
success_criteria:
  - Chain shows under Builder section when completed
EOF

echo "Created test chain: test-completed-chain"

# Run chain-status.sh with --completed flag to see completed chains
OUTPUT=$("$SCRIPT_DIR/chain-status.sh" --completed 2>&1)

# Check if completed chain appears under correct section
# Look for the test chain in the Builder section by checking the area after "Builder" header
if echo "$OUTPUT" | sed -n '/Builder.*Tasks/,/Tasks\|═══════════/p' | grep -q "Test Completed Chain"; then
    echo "✅ PASS: Completed chain correctly shows under Builder section"
    TEST_PASSED=true
else
    echo "❌ FAIL: Completed chain does not show under Builder section"
    echo "Expected: Chain should appear under '💻 claude-2 Builder' section"
    echo "Actual output:"
    echo "$OUTPUT"
    TEST_PASSED=false
fi

# Also check that it does NOT appear under unassigned
if echo "$OUTPUT" | grep -A 10 "unassigned" | grep -q "Test Completed Chain"; then
    echo "❌ FAIL: Completed chain incorrectly shows under unassigned section"
    echo "This is the bug we're trying to fix!"
    TEST_PASSED=false
else
    echo "✅ PASS: Completed chain does not show under unassigned section"
fi

# Print summary
if [ "$TEST_PASSED" = true ]; then
    echo "✅ All tests passed - labeling works correctly"
    exit 0
else
    echo "❌ Test failed - labeling bug confirmed"
    exit 1
fi