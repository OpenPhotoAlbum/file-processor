#!/usr/bin/env python3
"""
Example usage of the Claude Brain system
"""

from claude_brain import ClaudeBrain
import os

def main():
    # Initialize the brain
    brain = ClaudeBrain("example_embeddings.db")
    brain.initialize()
    
    print("=== Claude Brain Example Usage ===\n")
    
    # Example 1: Ingest the current project
    print("1. Ingesting current project...")
    project_dir = "."
    chunk_count = brain.ingest_directory(project_dir)
    print(f"Ingested {chunk_count} chunks from current project\n")
    
    # Example 2: Search for functionality
    print("2. Searching for embedding-related code...")
    results = brain.search("embedding function openai", top_n=3)
    
    for i, (score, source, content) in enumerate(results, 1):
        print(f"Result {i} (Score: {score:.3f})")
        print(f"Source: {source}")
        print(f"Content: {content[:150]}...")
        print("-" * 50)
    
    print("\n3. Searching for chunking strategy...")
    results = brain.search("text chunking strategy", top_n=2)
    
    for i, (score, source, content) in enumerate(results, 1):
        print(f"Result {i} (Score: {score:.3f})")
        print(f"Source: {source}")
        print(f"Content: {content[:150]}...")
        print("-" * 50)
    
    # Example 3: Generate CLAUDE.md
    print("\n4. Generating CLAUDE.md for current project...")
    brain.generate_claude_md(".")
    
    print("\n=== Example Complete ===")
    print("Try running:")
    print("  python claude_brain.py search 'your query here'")
    print("  python claude_brain.py ingest /path/to/your/project")

if __name__ == "__main__":
    main()