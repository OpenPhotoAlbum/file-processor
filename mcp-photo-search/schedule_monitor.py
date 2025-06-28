#!/usr/bin/env python3
"""
Claude Brain Scheduled Monitoring

Runs periodic drift checks and automatically updates when needed.
Can be run as a cron job or continuous monitoring service.
"""

import time
import os
import sys
import schedule
import subprocess
from datetime import datetime
from pathlib import Path

# Add current directory to path
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
from drift_monitor import DriftMonitor

class ScheduledMonitor:
    def __init__(self, project_root: str = "/mnt/hdd/photo-process", check_interval: int = 60):
        self.project_root = project_root
        self.check_interval = check_interval  # minutes
        self.monitor = DriftMonitor(project_root)
        self.last_update = None
        
    def check_and_update(self):
        """Check for drift and update if needed."""
        print(f"\n⏰ {datetime.now().strftime('%Y-%m-%d %H:%M:%S')} - Checking Claude Brain drift...")
        
        try:
            report = self.monitor.check_drift()
            
            if report['needs_update']:
                print("🔄 Drift detected - triggering automatic update...")
                self.trigger_update()
                self.last_update = datetime.now()
            else:
                print("✅ No drift detected - database is current")
                
        except Exception as e:
            print(f"❌ Error during drift check: {e}")
    
    def trigger_update(self):
        """Trigger database rebuild."""
        try:
            # Run the rebuild command
            cmd = [
                sys.executable, 
                "claude_brain.py", 
                "ingest", 
                self.project_root
            ]
            
            print(f"🚀 Running: {' '.join(cmd)}")
            result = subprocess.run(cmd, capture_output=True, text=True, 
                                  cwd=os.path.dirname(__file__))
            
            if result.returncode == 0:
                print("✅ Database rebuild completed successfully")
                # Update cache after successful rebuild
                self.monitor.update_cache()
            else:
                print(f"❌ Database rebuild failed: {result.stderr}")
                
        except Exception as e:
            print(f"❌ Error during update: {e}")
    
    def start_continuous_monitoring(self):
        """Start continuous monitoring service."""
        print(f"🔄 Starting Claude Brain continuous monitoring...")
        print(f"📅 Check interval: {self.check_interval} minutes")
        print(f"📁 Project root: {self.project_root}")
        print("⏹️  Press Ctrl+C to stop")
        
        # Schedule periodic checks
        schedule.every(self.check_interval).minutes.do(self.check_and_update)
        
        # Initial check
        self.check_and_update()
        
        try:
            while True:
                schedule.run_pending()
                time.sleep(30)  # Check every 30 seconds for scheduled tasks
        except KeyboardInterrupt:
            print("\n👋 Stopping continuous monitoring")

def main():
    import argparse
    
    parser = argparse.ArgumentParser(description="Claude Brain Scheduled Monitor")
    parser.add_argument("--project-root", default="/mnt/hdd/photo-process",
                       help="Project root directory")
    parser.add_argument("--interval", type=int, default=60,
                       help="Check interval in minutes (default: 60)")
    parser.add_argument("--once", action="store_true",
                       help="Run once and exit (default: continuous)")
    parser.add_argument("--cron", action="store_true",
                       help="Run for cron job (check once, update if needed)")
    
    args = parser.parse_args()
    
    monitor = ScheduledMonitor(args.project_root, args.interval)
    
    if args.once or args.cron:
        # Single check
        monitor.check_and_update()
    else:
        # Continuous monitoring
        monitor.start_continuous_monitoring()

if __name__ == "__main__":
    main()