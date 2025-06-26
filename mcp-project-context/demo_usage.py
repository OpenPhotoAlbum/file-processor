#!/usr/bin/env python3
"""
Demo script to show usage tracking without requiring OpenAI API key
"""

import os
import json
from usage_tracker import UsageTracker

def show_baseline_usage():
    """Show the current usage state - should be empty initially."""
    tracker = UsageTracker()
    
    print("=" * 60)
    print("🔍 CLAUDE BRAIN - BASELINE USAGE REPORT")
    print("=" * 60)
    
    # Check if usage log exists
    if os.path.exists("usage_log.json"):
        usage = tracker.get_total_usage()
        print(f"📊 Current Usage Status:")
        print(f"   Total Sessions: {usage['total_sessions']}")
        print(f"   Total Tokens: {usage['total_tokens']:,}")
        print(f"   Total Cost: ${usage['total_cost']:.4f}")
        
        if usage['sessions']:
            print(f"\n📋 Recent Sessions:")
            for session in usage['sessions'][-3:]:
                print(f"   {session['start_time'][:19]} | {session['operation']} | ${session.get('estimated_cost', 0):.4f}")
    else:
        print("📊 No previous usage found - this is your baseline!")
        print("   Total Sessions: 0")
        print("   Total Tokens: 0")
        print("   Total Cost: $0.0000")
    
    print("\n💡 Next Steps:")
    print("   1. Set your OPENAI_API_KEY environment variable")
    print("   2. Run: python3 claude_brain.py init")
    print("   3. Run: python3 claude_brain.py ingest . --no-recursive")
    print("   4. Run: python3 claude_brain.py usage")
    print("   5. Compare the before/after token usage!")
    
    print("=" * 60)

def simulate_usage_report():
    """Show what a usage report would look like after operations."""
    print("\n" + "=" * 60)
    print("📊 EXAMPLE: What usage might look like after testing")
    print("=" * 60)
    print("📈 Simulated Usage After Small Test:")
    print("   Total Sessions: 2")
    print("   Total Tokens: 3,247")
    print("   Total Cost: $0.0003")
    print("")
    print("📋 Example Sessions:")
    print("   2024-06-21 12:34:56 | ingest_directory | $0.0002")
    print("   2024-06-21 12:35:43 | search | $0.0001")
    print("")
    print("💰 Cost Breakdown:")
    print("   - Small project (10-20 files): ~$0.0002-0.0010")
    print("   - Medium project (100+ files): ~$0.002-0.020")
    print("   - Large project (1000+ files): ~$0.020-0.100")
    print("=" * 60)

if __name__ == "__main__":
    show_baseline_usage()
    simulate_usage_report()