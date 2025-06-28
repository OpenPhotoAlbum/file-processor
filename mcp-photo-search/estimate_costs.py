#!/usr/bin/env python3
"""
Cost estimation script that works without OpenAI API key
"""

import os
import sys
import tiktoken
from file_processor import FileProcessor

def estimate_project_cost(project_path):
    """Estimate the cost of processing a project."""
    print(f"🔍 Analyzing project: {project_path}")
    print("=" * 60)
    
    # Initialize processor and encoding
    processor = FileProcessor()
    encoding = tiktoken.get_encoding("cl100k_base")
    
    # Collect all chunks that would be processed
    print("📂 Processing files...")
    all_chunks = processor.process_directory(project_path, recursive=True)
    
    if not all_chunks:
        print("❌ No files found to process")
        return
    
    # Calculate token counts
    total_tokens = 0
    file_count = {}
    
    for chunk_text, metadata in all_chunks:
        tokens = len(encoding.encode(chunk_text))
        total_tokens += tokens
        
        # Track by file type
        if '.' in metadata:
            file_type = metadata.split('.')[-1].split('_')[0]
            file_count[file_type] = file_count.get(file_type, 0) + 1
    
    # Calculate costs
    ada_002_cost = total_tokens * (0.0001 / 1000)  # $0.0001 per 1K tokens
    embedding_3_small_cost = total_tokens * (0.00002 / 1000)  # newer, cheaper model
    
    print("📊 COST ESTIMATION REPORT")
    print("=" * 60)
    print(f"Files that would be processed: {len(all_chunks)} chunks")
    print(f"Total tokens: {total_tokens:,}")
    print(f"Estimated cost (text-embedding-ada-002): ${ada_002_cost:.4f}")
    print(f"Estimated cost (text-embedding-3-small): ${embedding_3_small_cost:.4f}")
    
    print("\n📋 File breakdown:")
    for file_type, count in sorted(file_count.items()):
        print(f"  {file_type}: {count} chunks")
    
    # Cost comparisons
    print(f"\n💰 Cost comparisons:")
    print(f"  Small coffee: ~$2.00")
    print(f"  Your project: ~${ada_002_cost:.4f}")
    print(f"  Ratio: {2.0/ada_002_cost:.0f}x cheaper than coffee!" if ada_002_cost > 0 else "")
    
    print("\n🎯 Recommendations:")
    if ada_002_cost < 0.01:
        print("  ✅ Very affordable - go ahead!")
    elif ada_002_cost < 0.05:
        print("  ✅ Reasonable cost for a substantial project")
    elif ada_002_cost < 0.20:
        print("  ⚠️  Moderate cost - consider filtering more files")
    else:
        print("  ⚠️  Higher cost - definitely filter sensitive/large files first")
    
    print("\n🔧 To reduce costs:")
    print("  - Edit .brainignore to exclude more file types")
    print("  - Process specific directories only: --no-recursive")
    print("  - Start with smaller subdirectories for testing")

if __name__ == "__main__":
    project_path = sys.argv[1] if len(sys.argv) > 1 else "."
    estimate_project_cost(project_path)