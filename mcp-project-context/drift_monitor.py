#!/usr/bin/env python3
"""
Claude Brain Drift Detection System

Monitors file changes and automatically triggers re-ingestion when needed.
Provides both reactive (on-demand) and proactive (scheduled) drift detection.
"""

import os
import sqlite3
import hashlib
import json
import time
from datetime import datetime, timedelta
from pathlib import Path
from typing import Dict, List, Tuple, Set
import argparse
from file_processor import FileProcessor

class DriftMonitor:
    def __init__(self, project_root: str, db_path: str = "embeddings.db"):
        self.project_root = Path(project_root)
        self.db_path = db_path
        self.cache_file = "drift_cache.json"
        self.file_processor = FileProcessor()  # Use same filtering as ingestion
        
    
    def get_current_file_state(self) -> Dict[str, Dict]:
        """Get current state of all tracked files using FileProcessor filtering."""
        file_state = {}
        
        # Walk through project directory
        for root, dirs, files in os.walk(self.project_root):
            # Skip ignored directories using FileProcessor logic
            dirs[:] = [d for d in dirs if not self.file_processor._should_ignore(os.path.join(root, d)) and not d.startswith('.')]
            
            for file in files:
                if not file.startswith('.'):
                    file_path = os.path.join(root, file)
                    
                    # Use FileProcessor filtering (same as ingestion)
                    if not self.file_processor._should_ignore(file_path):
                        try:
                            stat = Path(file_path).stat()
                            file_state[file_path] = {
                                'mtime': stat.st_mtime,
                                'size': stat.st_size,
                                'hash': self._get_file_hash(Path(file_path))
                            }
                        except (OSError, IOError):
                            continue
        
        return file_state
    
    
    def _get_file_hash(self, file_path: Path) -> str:
        """Get SHA256 hash of file content."""
        try:
            with open(file_path, 'rb') as f:
                return hashlib.sha256(f.read()).hexdigest()
        except (OSError, IOError):
            return ""
    
    def load_cached_state(self) -> Dict[str, Dict]:
        """Load previously cached file state."""
        cache_path = Path(self.cache_file)
        if not cache_path.exists():
            return {}
        
        try:
            with open(cache_path, 'r') as f:
                return json.load(f)
        except (json.JSONDecodeError, OSError):
            return {}
    
    def save_cached_state(self, file_state: Dict[str, Dict]):
        """Save current file state to cache."""
        cache_data = {
            'timestamp': datetime.now().isoformat(),
            'file_count': len(file_state),
            'files': file_state
        }
        
        with open(self.cache_file, 'w') as f:
            json.dump(cache_data, f, indent=2)
    
    def detect_changes(self) -> Tuple[Set[str], Set[str], Set[str]]:
        """
        Detect file changes since last check.
        
        Returns:
            - new_files: Files added since last check
            - modified_files: Files modified since last check  
            - deleted_files: Files deleted since last check
        """
        current_state = self.get_current_file_state()
        cached_state = self.load_cached_state()
        
        if 'files' not in cached_state:
            cached_files = {}
        else:
            cached_files = cached_state['files']
        
        current_files = set(current_state.keys())
        cached_file_paths = set(cached_files.keys())
        
        # Detect changes
        new_files = current_files - cached_file_paths
        deleted_files = cached_file_paths - current_files
        
        # Check for modifications
        modified_files = set()
        for file_path in current_files & cached_file_paths:
            current_info = current_state[file_path]
            cached_info = cached_files[file_path]
            
            # Compare hash for definitive change detection
            if current_info['hash'] != cached_info['hash']:
                modified_files.add(file_path)
        
        return new_files, modified_files, deleted_files
    
    def get_database_files(self) -> Set[str]:
        """Get list of files currently in the embeddings database."""
        if not os.path.exists(self.db_path):
            return set()
        
        db = sqlite3.connect(self.db_path)
        cursor = db.cursor()
        
        try:
            cursor.execute('SELECT DISTINCT file FROM embeddings')
            db_files = set()
            
            for (file_chunk,) in cursor.fetchall():
                # Remove chunk and summary suffixes to get actual file path
                if '_chunk_' in file_chunk:
                    actual_file = file_chunk.split('_chunk_')[0]
                    db_files.add(actual_file)
                elif '_summary' in file_chunk:
                    actual_file = file_chunk.split('_summary')[0]
                    db_files.add(actual_file)
                else:
                    db_files.add(file_chunk)
            
            return db_files
        finally:
            db.close()
    
    def check_drift(self) -> Dict:
        """
        Check for drift between file system and database.
        
        Returns comprehensive drift report.
        """
        print("🔍 Checking for Claude Brain drift...")
        
        # Get current state
        new_files, modified_files, deleted_files = self.detect_changes()
        current_state = self.get_current_file_state()
        db_files = self.get_database_files()
        
        # Check database vs filesystem alignment
        current_fs_files = set(current_state.keys())
        db_missing_files = current_fs_files - db_files
        db_stale_files = db_files - current_fs_files
        
        drift_report = {
            'timestamp': datetime.now().isoformat(),
            'filesystem_changes': {
                'new_files': list(new_files),
                'modified_files': list(modified_files),
                'deleted_files': list(deleted_files),
                'total_changes': len(new_files) + len(modified_files) + len(deleted_files)
            },
            'database_alignment': {
                'files_in_fs': len(current_fs_files),
                'files_in_db': len(db_files),
                'missing_from_db': list(db_missing_files),
                'stale_in_db': list(db_stale_files),
                'alignment_issues': len(db_missing_files) + len(db_stale_files)
            },
            'needs_update': False
        }
        
        # Determine if update is needed
        # If database alignment is perfect, only count modified/deleted files as drift
        # (new files without cache just means this is first run after rebuild)
        if drift_report['database_alignment']['alignment_issues'] == 0:
            # Database is in sync - only real changes matter
            real_changes = (len(drift_report['filesystem_changes']['modified_files']) + 
                           len(drift_report['filesystem_changes']['deleted_files']))
            if real_changes > 0:
                drift_report['needs_update'] = True
        else:
            # Database has alignment issues - full drift check
            total_drift = (drift_report['filesystem_changes']['total_changes'] + 
                          drift_report['database_alignment']['alignment_issues'])
            if total_drift > 0:
                drift_report['needs_update'] = True
        
        return drift_report
    
    def print_drift_report(self, report: Dict):
        """Print human-readable drift report."""
        print(f"\n📊 Claude Brain Drift Report - {report['timestamp']}")
        print("=" * 60)
        
        fs_changes = report['filesystem_changes']
        db_alignment = report['database_alignment']
        
        print(f"🔄 Filesystem Changes:")
        print(f"  • New files: {len(fs_changes['new_files'])}")
        print(f"  • Modified files: {len(fs_changes['modified_files'])}")  
        print(f"  • Deleted files: {len(fs_changes['deleted_files'])}")
        print(f"  • Total changes: {fs_changes['total_changes']}")
        
        print(f"\n🗄️  Database Alignment:")
        print(f"  • Files in filesystem: {db_alignment['files_in_fs']}")
        print(f"  • Files in database: {db_alignment['files_in_db']}")
        print(f"  • Missing from database: {len(db_alignment['missing_from_db'])}")
        print(f"  • Stale in database: {len(db_alignment['stale_in_db'])}")
        print(f"  • Alignment issues: {db_alignment['alignment_issues']}")
        
        if report['needs_update']:
            print(f"\n⚠️  UPDATE RECOMMENDED: Drift detected!")
            # Recommend auto-update for minor changes, rebuild for major alignment issues
            if db_alignment['alignment_issues'] > 10:
                print(f"   Run: npm run mcp-project:rebuild")
            else:
                print(f"   Run: npm run mcp-project:auto-update")
        else:
            print(f"\n✅ NO DRIFT: Database is up to date")
    
    def remove_file_embeddings(self, file_path: str):
        """Remove all embeddings for a specific file."""
        db = sqlite3.connect(self.db_path)
        cursor = db.cursor()
        try:
            # Remove all chunks for this file (handles both chunk and summary patterns)
            cursor.execute("DELETE FROM embeddings WHERE file LIKE ?", (f"{file_path}%",))
            deleted_count = cursor.rowcount
            db.commit()
            if deleted_count > 0:
                print(f"  🗑️  Removed {deleted_count} embeddings for {file_path}")
        finally:
            db.close()
    
    def incremental_update(self, changed_files: List[str]):
        """Update embeddings for only the specified changed files."""
        if not changed_files:
            print("📝 No files to update")
            return
            
        print(f"🔄 Incrementally updating {len(changed_files)} changed files...")
        
        # Import here to avoid circular imports
        from claude_brain import ClaudeBrain
        brain = ClaudeBrain(self.db_path)
        
        # Initialize processor if not already done
        if brain.processor is None:
            from file_processor import FileProcessor
            brain.processor = FileProcessor(project_root=str(self.project_root))
        
        total_chunks = 0
        for file_path in changed_files:
            if os.path.exists(file_path):
                # Remove old embeddings for this file
                self.remove_file_embeddings(file_path)
                
                # Re-process the file
                print(f"  📄 Processing: {file_path}")
                chunks = brain.processor.process_file(file_path)
                if chunks:
                    from embeddings.embedding_store import process_texts_batch
                    process_texts_batch(chunks, self.db_path)
                    total_chunks += len(chunks)
                    print(f"    ✅ Added {len(chunks)} chunks")
                else:
                    print(f"    ⚠️  No chunks generated")
            else:
                # File was deleted, just remove its embeddings
                print(f"  🗑️  Removing deleted file: {file_path}")
                self.remove_file_embeddings(file_path)
        
        print(f"✅ Incremental update complete: {total_chunks} chunks processed")

    def update_cache(self):
        """Update the drift cache with current file state."""
        print("💾 Updating drift cache...")
        current_state = self.get_current_file_state()
        self.save_cached_state(current_state)
        print(f"✅ Cached state for {len(current_state)} files")

def main():
    parser = argparse.ArgumentParser(description="Claude Brain Drift Monitor")
    parser.add_argument("--project-root", default="/mnt/hdd/photo-process", 
                       help="Project root directory")
    parser.add_argument("--db", default="embeddings.db", 
                       help="Path to embeddings database")
    parser.add_argument("--check", action="store_true", 
                       help="Check for drift and report")
    parser.add_argument("--update-cache", action="store_true",
                       help="Update drift cache with current state")
    parser.add_argument("--auto-update", action="store_true",
                       help="Automatically trigger rebuild if drift detected")
    
    args = parser.parse_args()
    
    monitor = DriftMonitor(args.project_root, args.db)
    
    if args.check or (not args.update_cache):
        # Default action is to check drift
        report = monitor.check_drift()
        monitor.print_drift_report(report)
        
        if args.auto_update and report['needs_update']:
            print("\n🚀 Auto-updating database...")
            
            # Collect all files that need updating
            changed_files = []
            fs_changes = report['filesystem_changes']
            
            # Add new and modified files
            changed_files.extend(fs_changes['new_files'])
            changed_files.extend(fs_changes['modified_files'])
            changed_files.extend(fs_changes['deleted_files'])
            
            # Add files missing from database
            db_alignment = report['database_alignment']
            changed_files.extend(db_alignment['missing_from_db'])
            
            # Remove duplicates
            changed_files = list(set(changed_files))
            
            # Perform incremental update
            monitor.incremental_update(changed_files)
            monitor.update_cache()
            print("✅ Auto-update complete!")
    
    if args.update_cache:
        monitor.update_cache()

if __name__ == "__main__":
    main()