import json
import os
import time
from datetime import datetime
from typing import Dict, Optional
import tiktoken

class UsageTracker:
    def __init__(self, log_file: str = "usage_log.json"):
        self.log_file = log_file
        self.encoding = tiktoken.get_encoding("cl100k_base")  # GPT-3.5/4 encoding
        self.current_session = None
        
        # OpenAI pricing (as of 2024)
        self.pricing = {
            "text-embedding-ada-002": 0.0001 / 1000,  # $0.0001 per 1K tokens
            "text-embedding-3-small": 0.00002 / 1000,  # $0.00002 per 1K tokens
            "text-embedding-3-large": 0.00013 / 1000,  # $0.00013 per 1K tokens
        }
    
    def start_session(self, operation: str, description: str = "") -> str:
        """Start tracking a new session."""
        session_id = f"{operation}_{int(time.time())}"
        
        self.current_session = {
            "session_id": session_id,
            "operation": operation,
            "description": description,
            "start_time": datetime.now().isoformat(),
            "start_usage": self._get_openai_usage(),
            "tokens_processed": 0,
            "api_calls": 0,
            "texts_processed": 0,
            "model": "text-embedding-ada-002"  # default
        }
        
        print(f"🔍 Starting usage tracking for: {operation}")
        if self.current_session["start_usage"]:
            print(f"📊 Current OpenAI usage: {self.current_session['start_usage']} tokens")
        
        return session_id
    
    def track_embedding_call(self, texts: list, model: str = "text-embedding-ada-002"):
        """Track an embedding API call."""
        if not self.current_session:
            return
        
        # Count tokens in the input texts
        total_tokens = 0
        for text in texts:
            if isinstance(text, str):
                try:
                    total_tokens += len(self.encoding.encode(text, disallowed_special=()))
                except Exception:
                    # If encoding fails, estimate based on character count
                    total_tokens += len(text) // 4  # Rough approximation
        
        self.current_session["tokens_processed"] += total_tokens
        self.current_session["api_calls"] += 1
        self.current_session["texts_processed"] += len(texts)
        self.current_session["model"] = model
        
        cost = total_tokens * self.pricing.get(model, self.pricing["text-embedding-ada-002"])
        
        print(f"📤 API call: {len(texts)} texts, {total_tokens} tokens, ~${cost:.4f}")
    
    def end_session(self) -> Dict:
        """End the current session and save results."""
        if not self.current_session:
            return {}
        
        self.current_session["end_time"] = datetime.now().isoformat()
        self.current_session["end_usage"] = self._get_openai_usage()
        
        # Calculate totals
        model = self.current_session["model"]
        total_cost = (self.current_session["tokens_processed"] * 
                     self.pricing.get(model, self.pricing["text-embedding-ada-002"]))
        
        self.current_session["estimated_cost"] = total_cost
        
        # Calculate duration
        start_time = datetime.fromisoformat(self.current_session["start_time"])
        end_time = datetime.fromisoformat(self.current_session["end_time"])
        duration = (end_time - start_time).total_seconds()
        self.current_session["duration_seconds"] = duration
        
        # Save to log
        self._save_to_log(self.current_session)
        
        # Print summary
        self._print_session_summary(self.current_session)
        
        session_data = self.current_session.copy()
        self.current_session = None
        
        return session_data
    
    def _get_openai_usage(self) -> Optional[str]:
        """Try to get current OpenAI usage (this would need OpenAI API integration)."""
        # Note: OpenAI doesn't provide real-time usage in their API
        # This is a placeholder for potential future integration
        return None
    
    def _save_to_log(self, session_data: Dict):
        """Save session data to log file."""
        log_entries = []
        
        if os.path.exists(self.log_file):
            try:
                with open(self.log_file, 'r') as f:
                    log_entries = json.load(f)
            except:
                log_entries = []
        
        log_entries.append(session_data)
        
        with open(self.log_file, 'w') as f:
            json.dump(log_entries, f, indent=2)
    
    def _print_session_summary(self, session: Dict):
        """Print a summary of the session."""
        print("\n" + "="*60)
        print(f"📋 USAGE SUMMARY: {session['operation']}")
        print("="*60)
        print(f"Operation: {session['description'] or session['operation']}")
        print(f"Duration: {session['duration_seconds']:.1f} seconds")
        print(f"Model: {session['model']}")
        print(f"API Calls: {session['api_calls']}")
        print(f"Texts Processed: {session['texts_processed']}")
        print(f"Tokens Processed: {session['tokens_processed']:,}")
        print(f"Estimated Cost: ${session['estimated_cost']:.4f}")
        print("="*60)
    
    def get_total_usage(self) -> Dict:
        """Get total usage across all sessions."""
        if not os.path.exists(self.log_file):
            return {"total_cost": 0, "total_tokens": 0, "total_sessions": 0}
        
        try:
            with open(self.log_file, 'r') as f:
                log_entries = json.load(f)
        except:
            return {"total_cost": 0, "total_tokens": 0, "total_sessions": 0}
        
        total_cost = sum(entry.get("estimated_cost", 0) for entry in log_entries)
        total_tokens = sum(entry.get("tokens_processed", 0) for entry in log_entries)
        
        return {
            "total_cost": total_cost,
            "total_tokens": total_tokens,
            "total_sessions": len(log_entries),
            "sessions": log_entries
        }
    
    def print_usage_report(self):
        """Print a comprehensive usage report."""
        usage = self.get_total_usage()
        
        print("\n" + "="*60)
        print("📊 CLAUDE BRAIN USAGE REPORT")
        print("="*60)
        print(f"Total Sessions: {usage['total_sessions']}")
        print(f"Total Tokens: {usage['total_tokens']:,}")
        print(f"Total Estimated Cost: ${usage['total_cost']:.4f}")
        
        if usage.get('sessions'):
            print("\nRecent Sessions:")
            for session in usage['sessions'][-5:]:  # Show last 5 sessions
                print(f"  {session['start_time'][:19]} | {session['operation']} | "
                      f"{session['tokens_processed']:,} tokens | ${session['estimated_cost']:.4f}")
        
        print("="*60)

# Global tracker instance
tracker = UsageTracker()