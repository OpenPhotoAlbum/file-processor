#!/usr/bin/env python3
"""
Claude Brain Database Cleanup

Removes unwanted files from the embeddings database that shouldn't have been ingested.
"""

import sqlite3
import os
from pathlib import Path

def cleanup_database(db_path: str = "embeddings.db"):
    """Remove unwanted files from the database."""
    
    if not os.path.exists(db_path):
        print(f"❌ Database not found: {db_path}")
        return
    
    print(f"🧹 Cleaning up Claude Brain database: {db_path}")
    
    db = sqlite3.connect(db_path)
    cursor = db.cursor()
    
    # Define patterns to remove
    unwanted_patterns = [
        # Python compiled files and caches
        '.pyc',
        '__pycache__',
        '.pyo',
        '.pyd',
        
        # Virtual environments and dependencies
        '/venv/',
        '/node_modules/',
        '/site-packages/',
        '/dist-packages/',
        '/.env',
        
        # Build and temporary files
        '/build/',
        '/dist/',
        '/.cache/',
        '/tmp/',
        '/temp/',
        '.tmp',
        '.temp',
        
        # Log files
        '.log',
        '/logs/',
        
        # Binary and media files
        '.db',
        '.sqlite',
        '.sqlite3',
        '.jpg',
        '.jpeg',
        '.png',
        '.gif',
        '.pdf',
        '.zip',
        '.tar',
        '.gz',
        
        # IDE and OS files
        '.DS_Store',
        '.vscode/',
        '.idea/',
        
        # Config files that might contain sensitive data
        'thunder-client',
        'environment.json',
    ]
    
    total_removed = 0
    
    for pattern in unwanted_patterns:
        try:
            # Count files matching pattern
            cursor.execute('SELECT COUNT(*) FROM embeddings WHERE file LIKE ?', (f'%{pattern}%',))
            count = cursor.fetchone()[0]
            
            if count > 0:
                print(f"  🗑️  Removing {count} entries matching '{pattern}'")
                
                # Remove entries
                cursor.execute('DELETE FROM embeddings WHERE file LIKE ?', (f'%{pattern}%',))
                total_removed += count
        
        except Exception as e:
            print(f"  ⚠️  Error removing pattern '{pattern}': {e}")
    
    # Commit changes
    db.commit()
    
    # Get final statistics
    cursor.execute('SELECT COUNT(*) FROM embeddings')
    remaining_count = cursor.fetchone()[0]
    
    cursor.execute('SELECT COUNT(DISTINCT file) FROM embeddings')
    remaining_files = cursor.fetchone()[0]
    
    db.close()
    
    print(f"\n✅ Cleanup complete!")
    print(f"  • Removed: {total_removed} entries")
    print(f"  • Remaining: {remaining_count} entries from {remaining_files} files")
    
    # Vacuum database to reclaim space
    print(f"🗜️  Vacuuming database to reclaim space...")
    db = sqlite3.connect(db_path)
    db.execute('VACUUM')
    db.close()
    
    # Show final size
    size_mb = os.path.getsize(db_path) / (1024 * 1024)
    print(f"📦 Final database size: {size_mb:.1f} MB")

if __name__ == "__main__":
    cleanup_database()