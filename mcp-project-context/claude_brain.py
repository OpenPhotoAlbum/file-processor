#!/usr/bin/env python3
"""
Claude Brain - Contextual Memory System for Claude Code Sessions

This tool processes codebases, creates embeddings, and enables semantic search
to provide relevant context for Claude coding sessions.
"""

import argparse
import os
import sys
from typing import List, Tuple, Optional

from embeddings.embedding_store import create_db, process_texts_batch
from embeddings.retrieval_engine import search_embeddings
from file_processor import FileProcessor
from generator.claude_md_generator import generate_module_claude_md
from usage_tracker import tracker

class ClaudeBrain:
    def __init__(self, db_path: str = "embeddings.db"):
        self.db_path = db_path
        self.processor = None  # Will be initialized when we know the project root
        
    def initialize(self):
        """Initialize the database."""
        create_db(self.db_path)
        print(f"Initialized database at {self.db_path}")
    
    def ingest_file(self, filepath: str) -> int:
        """Process and ingest a single file."""
        if not os.path.exists(filepath):
            print(f"Error: File {filepath} does not exist")
            return 0
        
        # Initialize processor with file's directory as project root
        if not self.processor:
            self.processor = FileProcessor(project_root=os.path.dirname(filepath))
        
        # Start tracking
        tracker.start_session("ingest_file", f"Processing {filepath}")
        
        print(f"Processing file: {filepath}")
        chunks = self.processor.process_file(filepath)
        
        if chunks:
            process_texts_batch(chunks, self.db_path)
            print(f"Ingested {len(chunks)} chunks from {filepath}")
            
            # End tracking
            tracker.end_session()
            return len(chunks)
        else:
            print(f"No content extracted from {filepath}")
            tracker.end_session()
            return 0
    
    def ingest_directory(self, directory_path: str, recursive: bool = True) -> int:
        """Process and ingest all files in a directory."""
        if not os.path.exists(directory_path):
            print(f"Error: Directory {directory_path} does not exist")
            return 0
        
        # Initialize processor with project root
        if not self.processor:
            self.processor = FileProcessor(project_root=directory_path)
        
        # Start tracking
        tracker.start_session("ingest_directory", f"Processing {directory_path} (recursive={recursive})")
        
        print(f"Processing directory: {directory_path} (recursive={recursive})")
        chunks = self.processor.process_directory(directory_path, recursive)
        
        if chunks:
            print(f"Processing {len(chunks)} chunks in batches...")
            process_texts_batch(chunks, self.db_path)
            print(f"Successfully ingested {len(chunks)} chunks")
            
            # End tracking
            tracker.end_session()
            return len(chunks)
        else:
            print("No content found to ingest")
            tracker.end_session()
            return 0
    
    def search(self, query: str, top_n: int = 5) -> List[Tuple[float, str, str]]:
        """Search for relevant content."""
        results = search_embeddings(query, self.db_path, top_n)
        return results
    
    def generate_claude_md(self, module_path: str):
        """Generate CLAUDE.md file for a module."""
        if not os.path.exists(module_path):
            print(f"Error: Path {module_path} does not exist")
            return
        
        print(f"Generating CLAUDE.md for: {module_path}")
        generate_module_claude_md(module_path)
        claude_md_path = os.path.join(module_path, "CLAUDE.md")
        if os.path.exists(claude_md_path):
            print(f"Generated CLAUDE.md at: {claude_md_path}")
        else:
            print("No CLAUDE.md generated (no Python files found)")

def main():
    parser = argparse.ArgumentParser(description="Claude Brain - Contextual Memory System")
    parser.add_argument("--db", default="embeddings.db", help="Database path")
    
    subparsers = parser.add_subparsers(dest="command", help="Available commands")
    
    # Init command
    init_parser = subparsers.add_parser("init", help="Initialize the database")
    
    # Ingest commands
    ingest_parser = subparsers.add_parser("ingest", help="Ingest files or directories")
    ingest_parser.add_argument("path", help="File or directory path to ingest")
    ingest_parser.add_argument("--no-recursive", action="store_true", 
                              help="Don't process directories recursively")
    
    # Search command
    search_parser = subparsers.add_parser("search", help="Search for content")
    search_parser.add_argument("query", help="Search query")
    search_parser.add_argument("-n", "--top-n", type=int, default=5, 
                              help="Number of results to return")
    search_parser.add_argument("--show-content", action="store_true",
                              help="Show full content of results")
    
    # Generate CLAUDE.md command
    claude_parser = subparsers.add_parser("generate-claude-md", 
                                         help="Generate CLAUDE.md for a module")
    claude_parser.add_argument("path", help="Module path")
    
    # Usage report command
    usage_parser = subparsers.add_parser("usage", help="Show token usage and cost report")
    usage_parser.add_argument("--reset", action="store_true", help="Reset usage log")
    
    # Preview command
    preview_parser = subparsers.add_parser("preview", help="Preview what files would be processed")
    preview_parser.add_argument("path", help="File or directory path to preview")
    preview_parser.add_argument("--no-recursive", action="store_true", 
                               help="Don't process directories recursively")
    
    args = parser.parse_args()
    
    if not args.command:
        parser.print_help()
        return
    
    brain = ClaudeBrain(args.db)
    
    if args.command == "init":
        brain.initialize()
    
    elif args.command == "ingest":
        if os.path.isfile(args.path):
            count = brain.ingest_file(args.path)
        elif os.path.isdir(args.path):
            count = brain.ingest_directory(args.path, not args.no_recursive)
        else:
            print(f"Error: {args.path} is not a valid file or directory")
            return
        
        print(f"Ingestion complete. Total chunks: {count}")
    
    elif args.command == "search":
        print(f"Searching for: {args.query}")
        print("-" * 50)
        
        results = brain.search(args.query, args.top_n)
        
        if not results:
            print("No results found.")
            return
        
        for i, (similarity, source, content) in enumerate(results, 1):
            print(f"{i}. Score: {similarity:.3f}")
            print(f"   Source: {source}")
            if args.show_content:
                print(f"   Content: {content[:200]}...")
            print()
    
    elif args.command == "generate-claude-md":
        brain.generate_claude_md(args.path)
    
    elif args.command == "usage":
        if args.reset:
            if os.path.exists("usage_log.json"):
                os.remove("usage_log.json")
                print("Usage log reset.")
            else:
                print("No usage log found.")
        else:
            tracker.print_usage_report()
    
    elif args.command == "preview":
        print(f"🔍 Previewing files that would be processed from: {args.path}")
        print("=" * 60)
        
        if os.path.isfile(args.path):
            if brain.processor._should_ignore(args.path):
                print(f"❌ IGNORED: {args.path}")
            else:
                print(f"✅ WOULD PROCESS: {args.path}")
        elif os.path.isdir(args.path):
            file_count = 0
            ignored_count = 0
            
            if args.no_recursive:
                for file in os.listdir(args.path):
                    if not file.startswith('.') and os.path.isfile(os.path.join(args.path, file)):
                        filepath = os.path.join(args.path, file)
                        if brain.processor._should_ignore(filepath):
                            print(f"❌ IGNORED: {filepath}")
                            ignored_count += 1
                        else:
                            print(f"✅ WOULD PROCESS: {filepath}")
                            file_count += 1
            else:
                for root, dirs, files in os.walk(args.path):
                    # Show directory filtering
                    dirs[:] = [d for d in dirs if not brain.processor._should_ignore(os.path.join(root, d)) and not d.startswith('.')]
                    
                    for file in files:
                        if not file.startswith('.'):
                            filepath = os.path.join(root, file)
                            if brain.processor._should_ignore(filepath):
                                print(f"❌ IGNORED: {filepath}")
                                ignored_count += 1
                            else:
                                print(f"✅ WOULD PROCESS: {filepath}")
                                file_count += 1
            
            print("=" * 60)
            print(f"📊 Summary: {file_count} files would be processed, {ignored_count} ignored")
            print(f"💡 To exclude more files, edit .brainignore")
        else:
            print(f"Error: {args.path} is not a valid file or directory")

if __name__ == "__main__":
    main()