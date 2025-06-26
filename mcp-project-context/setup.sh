#!/bin/bash

# Setup Photo Search MCP Server

echo "Setting up Photo Search MCP Server..."

# Create virtual environment
python3 -m venv venv
source venv/bin/activate

# Install requirements
pip install -r requirements.txt

# Create embeddings database directory
mkdir -p embeddings

echo ""
echo "Setup complete! Next steps:"
echo "1. Update claude_desktop_config.json to point to this MCP server"
echo "2. Set OPENAI_API_KEY environment variable"
echo "3. Run: python claude_brain.py --rebuild to index photo metadata"
echo "4. Start server: python mcp_server_simple.py"
echo ""
echo "Example claude_desktop_config.json entry:"
echo '{'
echo '  "mcpServers": {'
echo '    "photo-search": {'
echo '      "command": "python",'
echo '      "args": ['
echo '        "/home/stephen/Documents/initial-media-processing/mcp-photo-search/mcp_server_simple.py",'
echo '        "--db", "/home/stephen/Documents/initial-media-processing/mcp-photo-search/embeddings.db",'
echo '        "--project-root", "/photos"'
echo '      ],'
echo '      "env": {'
echo '        "OPENAI_API_KEY": "${OPENAI_API_KEY}"'
echo '      }'
echo '    }'
echo '  }'
echo '}'