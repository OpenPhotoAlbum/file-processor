#!/usr/bin/env python3
"""
Claude Brain MCP Server - Simple Working Version

This version should work with Claude Code CLI MCP integration.
"""

import asyncio
import json
import os
import sys
from typing import Any, Dict, List

# Add current directory to path for imports
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from embeddings.retrieval_engine import search_embeddings

# Global configuration
DB_PATH = "embeddings.db"
PROJECT_ROOT = os.getcwd()

def search_codebase(query: str, max_results: int = 5) -> str:
    """Search the codebase semantically."""
    try:
        results = search_embeddings(query, DB_PATH, max_results)
        
        if not results:
            return f"No results found for query: '{query}'"
        
        response_text = f"🔍 Found {len(results)} relevant code sections for: '{query}'\n\n"
        
        for i, (similarity, source, content) in enumerate(results, 1):
            file_path = source.split("_chunk_")[0] if "_chunk_" in source else source
            relative_path = os.path.relpath(file_path, PROJECT_ROOT) if file_path.startswith("/") else file_path
            
            response_text += f"## Result {i} (Similarity: {similarity:.3f})\n"
            response_text += f"**File:** `{relative_path}`\n\n"
            response_text += f"```\n{content}\n```\n\n"
        
        return response_text
        
    except Exception as e:
        return f"Error searching codebase: {str(e)}"

async def handle_request(request: Dict[str, Any]) -> Dict[str, Any]:
    """Handle MCP JSON-RPC requests."""
    
    if request.get("method") == "tools/list":
        return {
            "jsonrpc": "2.0",
            "id": request.get("id"),
            "result": {
                "tools": [
                    {
                        "name": "search_codebase",
                        "description": "Search the codebase using semantic search to find relevant code chunks",
                        "inputSchema": {
                            "type": "object",
                            "properties": {
                                "query": {
                                    "type": "string",
                                    "description": "Natural language search query"
                                },
                                "max_results": {
                                    "type": "integer",
                                    "description": "Maximum results (default: 5)",
                                    "default": 5
                                }
                            },
                            "required": ["query"]
                        }
                    }
                ]
            }
        }
    
    elif request.get("method") == "tools/call":
        tool_name = request.get("params", {}).get("name")
        arguments = request.get("params", {}).get("arguments", {})
        
        if tool_name == "search_codebase":
            query = arguments.get("query", "")
            max_results = arguments.get("max_results", 5)
            result = search_codebase(query, max_results)
            
            return {
                "jsonrpc": "2.0",
                "id": request.get("id"),
                "result": {
                    "content": [
                        {
                            "type": "text",
                            "text": result
                        }
                    ]
                }
            }
        else:
            return {
                "jsonrpc": "2.0",
                "id": request.get("id"),
                "error": {
                    "code": -32601,
                    "message": f"Unknown tool: {tool_name}"
                }
            }
    
    elif request.get("method") == "initialize":
        return {
            "jsonrpc": "2.0",
            "id": request.get("id"),
            "result": {
                "protocolVersion": "2024-11-05",
                "capabilities": {
                    "tools": {}
                },
                "serverInfo": {
                    "name": "claude-brain",
                    "version": "1.0.0"
                }
            }
        }
    
    else:
        return {
            "jsonrpc": "2.0",
            "id": request.get("id"),
            "error": {
                "code": -32601,
                "message": f"Method not found: {request.get('method')}"
            }
        }

async def main():
    """Main entry point for stdio MCP server."""
    import argparse
    
    parser = argparse.ArgumentParser(description="Claude Brain MCP Server - Simple")
    parser.add_argument("--db", default="embeddings.db", help="Path to embeddings database")
    parser.add_argument("--project-root", help="Project root directory")
    
    args = parser.parse_args()
    
    global DB_PATH, PROJECT_ROOT
    DB_PATH = args.db
    PROJECT_ROOT = args.project_root or os.getcwd()
    
    print(f"🚀 Starting Claude Brain MCP Server (Simple)", file=sys.stderr)
    print(f"📁 Project root: {PROJECT_ROOT}", file=sys.stderr)
    print(f"🗄️  Database: {DB_PATH}", file=sys.stderr)
    print(f"🔧 Ready for Claude Code integration!", file=sys.stderr)
    
    # Read from stdin and write to stdout (stdio transport)
    while True:
        try:
            line = await asyncio.get_event_loop().run_in_executor(None, sys.stdin.readline)
            if not line:
                break
                
            request = json.loads(line.strip())
            response = await handle_request(request)
            
            print(json.dumps(response), flush=True)
            
        except json.JSONDecodeError:
            continue
        except EOFError:
            break
        except Exception as e:
            error_response = {
                "jsonrpc": "2.0",
                "id": None,
                "error": {
                    "code": -32603,
                    "message": f"Internal error: {str(e)}"
                }
            }
            print(json.dumps(error_response), flush=True)

if __name__ == "__main__":
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        print("\n👋 Claude Brain MCP Server stopped", file=sys.stderr)